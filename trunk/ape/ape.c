/*****************************************************************************
 *
 *   This program is free software: you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License as published by
 *   the Free Software Foundation, either version 3 of the License, or
 *   (at your option) any later version.
 *
 *   This program is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *   GNU General Public License for more details.
 *
 *   You should have received a copy of the GNU General Public License
 *   along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 ****************************************************************************/
#include "../common/common.h"
#include "ape.h"

#undef T
#include "macsdk/Source/Shared/All.h"
#include "macsdk/Source/MACLib/MACLib.h"

typedef struct ape
{
	format_base Format;
	IAPEDecompress* Decoder;
	uint8_t* Buffer;
	int BufferLen;
	int BufferFilled;


	int SampleRate;
	int SampleSize;
	int64_t Samples;
}ape;
static bool_t Load(ape* p)
{
	format_reader* Reader = p->Format.Reader;
	char Path8[MAXPATH];
	tchar_t Path[MAXPATH];
	int errorCode = 0;
	int size;
	wchar_t* PathW;
	Reader->Input->Get(Reader->Input,STREAM_URL,Path,sizeof(Path));
	TcsToStr(Path8,sizeof(Path8),Path);
	size = sizeof(wchar_t) * strlen(Path8);
	PathW = (wchar_t*)malloc(size);
	size = mbstowcs(PathW, Path8, size);
	p->Decoder = CreateIAPEDecompress(PathW, &errorCode);
	free(PathW);
	if (!p->Decoder)
	{
#if defined(TARGET_WINCE) || defined(TARGET_WIN32)
		TCHAR cNumber[255]; _stprintf(cNumber, _T("Could not load decoder, Error code: %d"), errorCode);
		MessageBox(NULL, cNumber, L"Error", MB_OK);
#endif
		return 0;
	}
	return 1;
}
static void Done(ape* p)
{
	if (p->Buffer)
		free(p->Buffer);
	p->Buffer = NULL;
	if (p->Decoder)
		delete p->Decoder;
}
static int Init(ape* p)
{
	format_stream* s;
	p->Format.HeaderLoaded = 1;
	p->Format.TimeStamps = 0;
	if (!Load(p))
		return ERR_NOT_SUPPORTED;
	p->Samples = 0;
	s = Format_AddStream(&p->Format,sizeof(format_stream));
	if (s)
	{
		PacketFormatClear(&s->Format);
		s->Format.Type = PACKET_AUDIO;
		s->Format.Format.Audio.Format = AUDIOFMT_PCM;
		s->Format.Format.Audio.Bits = p->Decoder->GetInfo(APE_INFO_BITS_PER_SAMPLE, 0, 0);
		s->Format.Format.Audio.SampleRate = p->Decoder->GetInfo(APE_INFO_SAMPLE_RATE, 0, 0);
		s->Format.Format.Audio.Channels = p->Decoder->GetInfo(APE_INFO_CHANNELS, 0, 0);
		PacketFormatDefault(&s->Format);
		s->Format.ByteRate = p->Decoder->GetInfo(APE_INFO_AVERAGE_BITRATE, 0, 0) * 125;
		s->Fragmented = 1;
		s->DisableDrop = 1;
		p->Format.Duration = (tick_t)(((int64_t)p->Decoder->GetInfo(APE_INFO_LENGTH_MS, 0, 0) / 1000) * TICKSPERSEC);
		Format_PrepairStream(&p->Format,s);
		p->SampleRate = s->Format.Format.Audio.SampleRate;
		p->SampleSize = p->Decoder->GetInfo(APE_INFO_BYTES_PER_SAMPLE, 0, 0) * s->Format.Format.Audio.Channels;
	}
	//p->blockSize = p->Decoder->GetInfo(APE_INFO_BLOCK_ALIGN, 0, 0);
	p->BufferLen = p->SampleSize * 1024;//p->blockSize  * 1024; /////??????
	p->Buffer = (uint8_t*)malloc(p->SampleSize*p->BufferLen);
	if (!p->Buffer)
		  return ERR_OUT_OF_MEMORY;
	return ERR_NONE;
}
static int Seek(ape* p, tick_t Time, int FilePos, bool_t PrevKey)
{
	int64_t Samples;
	if (Time < 0)
	{
		if (FilePos<0 || p->Format.FileSize<0)
			return ERR_NOT_SUPPORTED;

		Time = Scale(FilePos,p->Format.Duration,p->Format.FileSize);
	}
	Samples = ((int64_t)Time * p->SampleRate+(TICKSPERSEC/2)) / TICKSPERSEC;
	if (p->Decoder->Seek((int)Samples) != 0) //very slow :)
		return ERR_NOT_SUPPORTED;
	Format_AfterSeek(&p->Format);
	p->Samples = Samples;
	return ERR_NONE;
}
static int Process(ape* p,format_stream* Stream)
{
	int Result = ERR_NONE;
	int retVal;

	if (Stream->Pending)
	{
		Result = Format_Send(&p->Format,Stream);

		if (Result == ERR_BUFFER_FULL || Result == ERR_SYNCED)
			return Result;
	}
	if (p->Format.Reader[0].BufferAvailable < (MINBUFFER/2) && !p->Format.Reader[0].NoMoreInput)
		return ERR_NEED_MORE_DATA;
	retVal = p->Decoder->GetData((char*)p->Buffer, p->BufferLen, &p->BufferFilled);
	if (retVal != ERROR_SUCCESS)
		return ERR_INVALID_DATA;
	if (p->BufferFilled == 0)
		return Format_CheckEof(&p->Format,Stream);
	Stream->Packet.RefTime = (tick_t)((p->Samples * TICKSPERSEC) / p->SampleRate);
	Stream->Packet.Data[0] = p->Buffer;
	Stream->Packet.Length = p->BufferFilled * p->SampleSize;
	Stream->Pending = 1;
	p->Samples += p->BufferFilled;
	Result = Format_Send(&p->Format,Stream);
	if (Result == ERR_BUFFER_FULL || Result == ERR_NEED_MORE_DATA)
		Result = ERR_NONE;

	return Result;
}
static int Create(ape* p)
{
	p->Format.Init = (fmtfunc) Init;
	p->Format.Done = (fmtvoid) Done;
	p->Format.Seek = (fmtseek) Seek;
	p->Format.Process = (fmtstreamprocess) Process;
	p->Format.FillQueue = NULL;
	p->Format.ReadPacket = NULL;
	p->Format.Sended = NULL;


	return ERR_NONE;
}

static const nodedef APE =
{
	sizeof(ape),
	APE_ID,
	FORMATBASE_CLASS,
	PRI_DEFAULT,
	(nodecreate)Create,
};

void APE_Init()
{
	NodeRegisterClass(&APE);
}

void APE_Done()
{
	NodeUnRegisterClass(APE_ID);
}
/*****************************************************************************
 *
 * This program is free software ; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * The Core Pocket Media Player (Non official plugin)
 * Copyright (c) 2007-2008 Thomas
 *
 * ffvp6
 * Copyright (c) 2008-2009 NV
 *
 ****************************************************************************/
#include "../network/http.h"
#include "../common/common.h"
#include "flv.h"
#include "tchar.h"


//#define ESTIMATE_DURATION

#define MAX_HISTORY				50

typedef struct HISTORY
{
//	tick_t			RefTime;
	filepos_t		FilePos;
} HISTORY;

typedef struct flv
{
	format_base		Format;
	filepos_t		StartOffset;

	bool_t			KnowDuration;

	int				nhistory;
	HISTORY			history[MAX_HISTORY];

} flv;




unsigned int ReadBE24(format_reader * Reader)
{
    unsigned int val;
    val = Reader->Read8(Reader) << 16;
    val |= Reader->Read8(Reader) << 8;
    val |= Reader->Read8(Reader);
    return val;
}

void UpdateHistory(flv *p, filepos_t FilePos, tick_t RefTime)
{
/*
	if (p->KnowDuration)
	{
		int f = Scale(RefTime, 1000, p->Format.Duration) * MAX_HISTORY;
		if (f > (p->nhistory + 1) * 1000 && p->nhistory < MAX_HISTORY)
		{
			int	idx = p->nhistory++;
			p->history[idx].FilePos = FilePos;
			p->history[idx].RefTime = RefTime;
		}
	}
	else
*/
	{
		int f = Scale(FilePos, (1000 * MAX_HISTORY), p->Format.FileSize);
		if (f > (p->nhistory + 1) * 1000 && p->nhistory < MAX_HISTORY)
		{
			int	idx = p->nhistory++;
			p->history[idx].FilePos = FilePos;
//			p->history[idx].RefTime = RefTime;
		}
	}
}

#ifdef ESTIMATE_DURATION
static tick_t EstimateDuration(format_reader* Reader)
{
	int lastPts;
	int type, pts, size;

	lastPts = 0;
	for (;;)
	{
		Reader->Skip(Reader, 4);
		type = Reader->Read8(Reader);
		size = ReadBE24(Reader);
		pts = ReadBE24(Reader);

		if (type == 8 || type == 9)
		{
			lastPts = pts;
		}

		if (Reader->Eof(Reader))
			break;

		// Reserved
		Reader->Skip(Reader, 4);

		if (size > 0)
		{
			// Skip the packet
			Reader->Skip(Reader, size);
		}
	}

	return Scale(lastPts, TICKSPERSEC, 1000);
}
#endif

static int ReadHeader(flv *p, format_reader* Reader)
{
	char magic[3];
	int flags;

	if (Reader->Read(Reader, magic, 3) != 3)
		return ERR_END_OF_FILE;

	if (magic[0] != 'F' || magic[1] != 'L' || magic[2] != 'V')
		return ERR_NOT_SUPPORTED;

	Reader->Skip(Reader, 1);

	flags = Reader->Read8(Reader);
	p->StartOffset = Reader->ReadBE32(Reader);
if (Reader->Input->Class != HTTP_ID) 
 {
if (Reader->Input->Class != MMS_ID) 
{
  Reader->Seek(Reader, 0, SEEK_END);
  p->Format.FileSize = Reader->FilePos;
 }
}
	Reader->Seek(Reader, p->StartOffset, SEEK_SET);

	return ERR_NONE;
}


static int Seek(flv* p, tick_t Time, filepos_t FilePos,bool_t PrevKey)
{
	int			i;
	filepos_t	LastFilePos;
	tick_t		RefTime;
	int			pts, type, size, flags, is_audio;

	format_reader* Reader =	p->Format.Reader;

	if (FilePos < Reader->FilePos)
	{
		for (i = p->nhistory - 1; i >= 0; i--)
		{
			if (FilePos > p->history[i].FilePos)
			{
				Reader->Seek(Reader, p->history[i].FilePos, SEEK_SET);
				break;
			}
		}
		if (i == 0)
			Reader->Seek(Reader, p->StartOffset, SEEK_SET);
	}
	else
	{
		for (i = 0; i < p->nhistory; i++)
		{
			if (FilePos < p->history[i].FilePos)
			{
				if (i == 0)
					Reader->Seek(Reader, p->StartOffset, SEEK_SET);
				else
					Reader->Seek(Reader, p->history[i-1].FilePos, SEEK_SET);
				break;
			}
		}
		if (i == p->nhistory && p->nhistory > 0)
			Reader->Seek(Reader, p->history[p->nhistory - 1].FilePos, SEEK_SET);
	}

	LastFilePos = p->StartOffset;
	do
	{
		filepos_t	framefilepos = Reader->FilePos;

		Reader->Skip(Reader, 4);
		type = Reader->Read8(Reader);
		size = ReadBE24(Reader);
		pts = ReadBE24(Reader);
		if (Reader->Eof(Reader))
			break;

		// Reserved
		Reader->Skip(Reader, 4);

		flags = 0;

		if (size == 0)
			continue;

		if (type == 8)
		{
			is_audio = 1;
			flags = Reader->Read8(Reader);
			size--;
		} 
		else if (type == 9)
		{
			is_audio = 0;
			flags = Reader->Read8(Reader);
			size--;
		}
		else
		{
			// Skip the packet
			Reader->Skip(Reader, size);
			continue;
		}

		if (!is_audio)
		{
			if ((flags >> 4)==1)
			{
				LastFilePos = framefilepos;
				RefTime = Scale(pts, TICKSPERSEC, 1000);
				UpdateHistory(p, LastFilePos, RefTime);
			}
		}

		Reader->Skip(Reader, size);
	} while (FilePos > Reader->FilePos);

	Reader->Seek(Reader, LastFilePos, SEEK_SET);

	Format_AfterSeek((struct format_base*)p);
	return ERR_NONE;
}


static int ReadPacket(flv* p, format_reader* Reader, format_packet* Packet)
{
	format_stream* s;
    int		i, type, size, pts, flags, is_audio;
	bool_t	isNewStream = 0;
	filepos_t	startfilepos;
	
	startfilepos = Reader->FilePos;

	for (;;) 
	{
		Reader->Skip(Reader, 4);
		type = Reader->Read8(Reader);
		size = ReadBE24(Reader);
		pts = ReadBE24(Reader);
		if (Reader->Eof(Reader))
		{
			return ERR_END_OF_FILE;
		}

		// Reserved
		Reader->Skip(Reader, 4);

		flags = 0;

		if (size == 0)
			continue;

		if (type == 8)
		{
			is_audio = 1;
			flags = Reader->Read8(Reader);
			size--;
		} 
		else if (type == 9)
		{
			is_audio = 0;
			flags = Reader->Read8(Reader);
			size--;
		}
		else
		{
			// Skip the packet
			Reader->Skip(Reader, size);
			continue;
		}

		// Now find stream
		s = NULL;
		for (i=0;i<p->Format.StreamCount;++i)
		{
			if (p->Format.Streams[i]->Id == is_audio)
			{
				s = p->Format.Streams[i];
				break;
			}
		}

		if (!s)
		{
			s = Format_AddStream(&p->Format,sizeof(format_stream));
	        if (!s)
		        return ERR_OUT_OF_MEMORY;

			s->Id = is_audio;
			isNewStream = 1;

			s->Format.PacketRate.Den = 24;
			s->Format.PacketRate.Num = 1000;
		}

		break;
	}

    if(is_audio)
	{
		if (isNewStream)
		{
			PacketFormatClear(&s->Format);
			s->Format.Type = PACKET_AUDIO;
			s->Format.Format.Audio.Channels = (flags&1)+1;
			if((flags >> 4) == 5)
				s->Format.Format.Audio.SampleRate = 8000;
			else
				s->Format.Format.Audio.SampleRate = (44100<<((flags>>2)&3))>>3;

			switch(flags >> 4)
			{/* 0: uncompressed 1: ADPCM 2: mp3 5: Nellymoser 8kHz mono 6: Nellymoser */
			case 2: 
				s->Format.Format.Audio.Format = AUDIOFMT_MP3;
				break;
			case 0:
				s->Format.Format.Audio.Format = AUDIOFMT_PCM;
				break;
			case 1:
				s->Format.Format.Audio.Format = AUDIOFMT_ADPCM_MS;
				break;
			default:
				return ERR_NOT_SUPPORTED;
			}
			s->Format.Format.Audio.Bits = 16;
			s->Format.Format.Audio.FracBits = 15;
			s->Format.ByteRate = s->Format.Format.Audio.SampleRate * s->Format.Format.Audio.Channels * 2;
			Format_PrepairStream(&p->Format,s);
		}
    }
	else
	{
		if (isNewStream)
		{
			PacketFormatClear(&s->Format);
			s->Format.Type = PACKET_VIDEO;
			s->Format.Format.Video.Pixel.Flags = PF_FOURCC | PF_FRAGMENTED;
			switch(flags & 0xF)
			{
			case 2: 
				s->Format.Format.Video.Pixel.FourCC = FOURCC('F','L','V','1');
				break;
			case 4:
				s->Format.Format.Video.Pixel.FourCC = FOURCC('V','P','6','F');
				break;
			default:
				return ERR_NOT_SUPPORTED;
			}
			Format_PrepairStream(&p->Format, s);
		}
    }

	Packet->RefTime = Scale(pts, TICKSPERSEC, 1000);
	Packet->Stream = s;
	if (!is_audio && ((flags & 0xF) == 4 || (flags & 0xF) == 5)) {
		Reader->Seek(Reader, 1, SEEK_CUR);
		Packet->Data = Reader->ReadAsRef(Reader, size - 1);
	}else{
		Packet->Data = Reader->ReadAsRef(Reader, size);
	}

    if (!is_audio)
	{
		Packet->Key = (flags >> 4)==1;
		if (Packet->Key)
			UpdateHistory(p, startfilepos, Packet->RefTime);
	}

	return ERR_NONE;
}

static int Init(flv* p)
{

	int errcode;

	format_reader* Reader =	p->Format.Reader;
	
	errcode = ReadHeader(p, Reader);
	if (ERR_NONE != errcode)
		return errcode;

#ifdef ESTIMATE_DURATION
	p->KnowDuration = TRUE;
	p->Format.Duration = EstimateDuration(Reader);

	// Seek to the starting point again
	Reader->Seek(Reader, p->StartOffset, SEEK_SET);
#else
	p->KnowDuration = FALSE;
#endif

	p->nhistory = 0;

	return ERR_NONE;
}

static int Create(flv* p)
{
	p->Format.Init = (fmtfunc)Init;
	p->Format.Seek = (fmtseek)Seek;
	p->Format.ReadPacket = (fmtreadpacket)ReadPacket;
	return ERR_NONE;
}

static const nodedef FLV =
{
	sizeof(flv),
	FLV_ID,
	FORMATBASE_CLASS,
	PRI_DEFAULT-10,		// lower priority so others can override
	(nodecreate)Create,
	NULL,
};

void FLV_Init()
{
	StringAdd(TRUE, FLV.Class, NODE_NAME, _T("Flash Video "));
	StringAdd(TRUE, FLV.Class, NODE_EXTS, _T("flv:v"));
	StringAdd(TRUE, FLV.Class, NODE_CONTENTTYPE, _T("video/flv,video/x-flv"));
	NodeRegisterClass(&FLV);
}

void FLV_Done()
{
	NodeUnRegisterClass(FLV_ID);
}

 
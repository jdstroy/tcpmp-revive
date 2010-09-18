/*****************************************************************************
 *
 * This program is free software ; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
 *
 * $Id: subtitle.c $
 *
 ****************************************************************************/
#define WIN32_LEAN_AND_MEAN
#ifndef STRICT
#define STRICT
#endif

#define _T(x)       __TEXT(x)
#define _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES 1

#include <windows.h>
#include "commdlg.h"

#include "overlay_subtitle.h"
#include "../dyncode/dyncode.h"
#include "../blit/blit_soft.h"
#include <stdlib.h>

#define MAXSUBTITLECOUNT		5000
#define DEFAULTFONTNAME			_T("Tahoma")
#define DEFAULTHIRESFONTSIZE	28
#define DEFAULTLOWRESFONTSIZE	16
#define DEFAULTLOWRESBOUNDARY	400
#define MAXFILENAME 1024

//#define SUBTITLE_DEBUG

typedef struct subtitlex {
	node VMT;

	int Subtitle; // Subtitle state (0:Default, 1:Not Found, 2:Load Complete)
	tick_t Speed;
	node   *Input;
	bool_t    Enabled;
	int    TypeLoaded;
	int    SubsCount;
	wchar_t *String;
	tchar_t OpenedFile[MAXFILENAME];
	tchar_t AvailFiles[MAXSUBFILES][MAXFILENAME];
	int AvailTypes[MAXSUBFILES];
	int AvailFilesCount;
	int StreamID;
	unsigned int *PositionOffset;
	unsigned int *PositionTime;
	unsigned int fps;
	int marginH;
	int marginV;
	bool_t topAlign;
	bool_t NoHide;

	COLORREF fontColor;

	tchar_t FontName[MAXPATH];
	tchar_t ColorName[10];
	bool_t FontBold;
	bool_t OldStyle;
	int HiResFontSize;
	int LowResFontSize;
	int LowResBoundary;

	int	CurrentPos;
	int	DrawPos;

	int SrcPtr, SrcGap;

	int DstPtr, DstGap;
	int DstStepX, DstStepY;
	int DstBPP;

	int SubWidth, SubHeight;

	HFONT hFont;
	int FontSize;
	HFONT hSFont;
	int SFontSize;

	int MaxWidth;
	int MaxHeight;
	HBITMAP Bitmap;
	HGDIOBJ Bitmap0; //bitmap returned by selectobject
	HBRUSH FillBrush;
	HDC DC2;
	short *Plane;
} subtitlex;

typedef struct clone_blitpack {
	blitfx FX;
	video Dst;
	video Src;
	rect DstRect;
	rect SrcRect;
	blit_soft Code[2];
} clone_blitpack;

static const datatable SubtitleParams[] = 
{
	{ SUBT_ENABLED,			TYPE_BOOL, DF_SETUP },
	{ SUBT_FONTNAME,		TYPE_STRING, DF_SETUP|DF_GAP},
	{ SUBT_FONTCOLOR,		TYPE_STRING, DF_SETUP },
	{ SUBT_HIRESFONTSIZE,	TYPE_INT, DF_SETUP },
	{ SUBT_LOWRESFONTSIZE,	TYPE_INT, DF_SETUP },
	{ SUBT_LOWRESBOUNDARY,	TYPE_INT, DF_SETUP },
	{ SUBT_FONTBOLD,		TYPE_BOOL, DF_SETUP },
	{ SUBT_OLDSTYLE,		TYPE_BOOL, DF_SETUP },

	{ SUBT_TOPALIGN,		TYPE_BOOL, DF_SETUP|DF_GAP },
	{ SUBT_MARGINH,			TYPE_INT, DF_SETUP|DF_NEG },
	{ SUBT_MARGINV,			TYPE_INT, DF_SETUP|DF_NEG },

	{ SUBT_SPEED,			TYPE_INT, DF_SETUP|DF_GAP|DF_NEG},
	{ SUBT_FPS,				TYPE_INT, DF_SETUP},
	{ SUBT_NOHIDE,			TYPE_BOOL, DF_SETUP },
	//{ SUBT_TYPE,			TYPE_INT, DF_SETUP|DF_HIDDEN },


	DATATABLE_END(SUBT_ID)
};


void	ParseFIX			(wchar_t * str,unsigned int * pos);
int 	SubtitleCreateBitmap(subtitlex* p);
int		FontCreate			(subtitlex* p);
void	LoadStream(subtitlex *p);
int		GetPrevSub(subtitlex *p);
int		GetNextSub(subtitlex *p);

#ifdef SUBTITLE_DEBUG
void PRINT(char *str){
	char tmp[128];
	FILE *fp;
	SYSTEMTIME time;
	
	fp = fopen("\\BetaLog.log", "a+");
	GetLocalTime(&time);
	sprintf(tmp, "[%02d:%02d:%02d] ", (int)time.wHour, (int)time.wMinute, (int)time.wSecond);
	fprintf(fp, tmp);
	fprintf(fp, str);
	fclose(fp);
}
#else
	#define PRINT //
#endif

static int Enum( subtitlex* p, int* No, datadef* Param )
{
	return NodeEnumTable(No,Param,SubtitleParams);
	//return NodeEnumType(&No,Param,NodeParams,FlowParams,SubtitleParams,NULL);
}

static int Get( subtitlex* p, int No, void* Data, int Size )
{
	int Result = ERR_INVALID_PARAM;
	switch (No)
	{
	case SUBT_FONTNAME: GETSTRING(p->FontName); break;
	case SUBT_FONTCOLOR: GETSTRING(p->ColorName); break;
	case SUBT_HIRESFONTSIZE: GETVALUE(p->HiResFontSize,int); break;
	case SUBT_LOWRESFONTSIZE: GETVALUE(p->LowResFontSize,int); break;
	case SUBT_LOWRESBOUNDARY: GETVALUE(p->LowResBoundary,int); break;
	case SUBT_SPEED: GETVALUE(p->Speed,int); break;
	case SUBT_FPS: GETVALUE(p->fps,int); break;
	case SUBT_TYPE: GETVALUE((p->Subtitle!=2 && p->TypeLoaded!=-1)?(0):(p->TypeLoaded),int); break;
	case SUBT_ENABLED: GETVALUE(p->Enabled,bool_t); break;
	case SUBT_FONTBOLD: GETVALUE(p->FontBold,bool_t); break;
	case SUBT_OLDSTYLE: GETVALUE(p->OldStyle,bool_t); break;
	case SUBT_NOHIDE: GETVALUE(p->NoHide,bool_t); break;
	case SUBT_TOPALIGN: GETVALUE(p->topAlign,bool_t); break;
	case SUBT_MARGINH: GETVALUE(p->marginH,int); break;
	case SUBT_MARGINV: GETVALUE(p->marginV,int); break;
	case SUBT_STREAM_ID: GETVALUE(p->StreamID,int); break;
	case SUBT_PREV_SUB: GETVALUE(GetPrevSub(p),int); break;
	case SUBT_NEXT_SUB: GETVALUE(GetNextSub(p),int); break;
	}
	if (No>=SUBT_STREAM && No<SUBT_STREAM+MAXSUBFILES)
	{
		if (No-SUBT_STREAM<p->AvailFilesCount) {GETVALUE(p->AvailFiles[No-SUBT_STREAM],tchar_t*);}
		else {GETVALUE(0,wchar_t*);}
	}
	return Result;
}

static int Set( subtitlex* p, int No, const void* Data, int Size )
{
	int Result = ERR_INVALID_PARAM;
	switch (No)
	{
	case SUBT_FONTNAME: SETSTRING(p->FontName);Result = FontCreate(p); break;
	case SUBT_FONTCOLOR: SETSTRING(p->ColorName); p->fontColor=0xFFFFFF; stscanf(p->ColorName,_T("%6x"),&(p->fontColor));if (!p->fontColor) p->fontColor=0xFFFFFF;Result = ERR_NONE; break;
	case SUBT_HIRESFONTSIZE: SETVALUE(p->HiResFontSize,int,Result = FontCreate(p)); break;
	case SUBT_LOWRESFONTSIZE: SETVALUE(p->LowResFontSize,int,Result = FontCreate(p)); break;
	case SUBT_LOWRESBOUNDARY: SETVALUE(p->LowResBoundary,int,Result = FontCreate(p)); break;
	case SUBT_SPEED: SETVALUE(p->Speed,int,Result=ERR_NONE); NodeRegSaveValue(SUBT_ID,SUBT_SPEED, &(p->Speed),sizeof(int),TYPE_INT);break;
	case SUBT_FPS: SETVALUE(p->fps,int,Result=ERR_NONE);break;
	case SUBT_ENABLED: SETVALUE(p->Enabled,bool_t,Result = ERR_NONE);  *p->OpenedFile=0; SubtitleLoad(p);  break;
	case SUBT_FONTBOLD: SETVALUE(p->FontBold,bool_t,Result = FontCreate(p)); break;
	case SUBT_OLDSTYLE: SETVALUE(p->OldStyle,bool_t,Result = FontCreate(p)); break;
	case SUBT_NOHIDE: SETVALUE(p->NoHide,bool_t,Result = ERR_NONE);  *p->OpenedFile=0; SubtitleLoad(p); break;
	case SUBT_TOPALIGN: SETVALUE(p->topAlign,bool_t,Result = FontCreate(p)); break;
	case SUBT_MARGINH: SETVALUE(p->marginH,int,Result = FontCreate(p)); break;
	case SUBT_MARGINV: SETVALUE(p->marginV,int,Result = FontCreate(p)); break;
	case SUBT_STREAM_ID: SETVALUE(p->StreamID,bool_t,ERR_NONE); LoadStream(p); break;
	}
	return Result;
}

int FontCreate(subtitlex* p) {
	LOGFONT LogFont;

	memset(&(LogFont), 0, sizeof(LogFont));

	tcscpy_s(LogFont.lfFaceName,MAXPATH, p->FontName);

	if (p->FontBold) LogFont.lfWeight = 700; else LogFont.lfWeight=400;
	LogFont.lfCharSet = DEFAULT_CHARSET; //ANSI_CHARSET; //OEM_CHARSET; //HANGEUL_CHARSET; //HANGUL_CHARSET //JOHAB_CHARSET; //SHIFTJIS_CHARSET;
	//if (!p->FontClearType)
	LogFont.lfQuality = DEFAULT_QUALITY; //DRAFT_QUALITY; //PROOF_QUALITY;
	//else LogFont.lfQuality=CLEARTYPE_QUALITY;
	LogFont.lfPitchAndFamily = FF_DONTCARE;

	//if((!p->hFont)||(p->FontSize != p->HiResFontSize))
	{
		if (p->hFont) DeleteObject(p->hFont);
		LogFont.lfHeight = p->HiResFontSize;
		p->FontSize = p->HiResFontSize;
		p->hFont = CreateFontIndirect(&LogFont);
		PRINT("HiRes Font Create.\n");
	}

	//if((!p->hSFont)||(p->SFontSize != p->LowResFontSize))
	{
		if (p->hSFont) DeleteObject(p->hSFont);
		LogFont.lfHeight = p->LowResFontSize;
		p->SFontSize = p->LowResFontSize;
		p->hSFont = CreateFontIndirect(&LogFont);
		PRINT("LowRes Font Create.\n");
	}

	return ERR_NONE;
}

// Create DIB Bitmap for Draw Subtitle
int SubtitleCreateBitmap(subtitlex* p) {
	struct {
		BITMAPINFOHEADER bmiHeader;
		int RBitMask;
		int GBitMask;
		int BBitMask;
	} Info;

	if(p->Plane != NULL) {
		PRINT("DIB Bitmap is Already Created.\n");
		return 1;
	}

	memset(&Info,0,sizeof(Info));
	Info.bmiHeader.biSize	= sizeof(Info.bmiHeader);
	Info.bmiHeader.biWidth	= p->MaxWidth;
	Info.bmiHeader.biHeight	= -(p->MaxHeight);
	Info.bmiHeader.biPlanes	= 1;
	Info.bmiHeader.biBitCount = 16;
	Info.bmiHeader.biCompression = BI_BITFIELDS;
	Info.RBitMask = 0x000000FF;
	Info.GBitMask = 0x0000FF00;
	Info.BBitMask = 0x00FF0000;

	p->Bitmap = CreateDIBSection(NULL, (BITMAPINFO*)&Info, DIB_RGB_COLORS, &p->Plane, NULL, 0);

	if (p->Bitmap) {
		if(p->Plane){
			p->Bitmap0 = SelectObject(p->DC2, p->Bitmap);
			p->FillBrush = CreateSolidBrush(RGB(0,0,0));
		} else {
			DeleteObject(p->Bitmap);
			p->Bitmap = NULL;
		}
	}

	if(p->Plane != NULL){
		PRINT("DIB Bitmap Create.\n");
	} else {
		PRINT("DIB Bitmap Create Failed.\n");
	}

	return p->Plane != NULL;
}

void ParseFIX(wchar_t * str,unsigned int * pos)
{
	wchar_t *bot=0,*eot=0;
	// Step 3 - remove double spaces
	while (*pos!=0xFFFFFFFF)
	{
		bot=str+*pos;
		eot=bot;
		while (1)
		{
			while (*eot==L' ' && (*(eot+1)==L' ' || *(eot+1)==L'\0')) eot++;
			*bot=*eot;
			if (*bot==L'\0') break;
			if (bot!=eot) *eot=L' ';
			bot++;
			eot++;
		}
		pos++;
	}
}

void ParseSORT(subtitlex *p,wchar_t * str,unsigned int * pos,unsigned int * time)
{
	unsigned int *pos1,*pos2,pos3,*tim1,*tim2,tim3;
	pos1=pos; tim1=time;

	// Step 4 - Sorting
	while (*pos1!=0xFFFFFFFF)
	{
		pos2=pos1+1; tim2=tim1+1;
		while (*pos2!=0xFFFFFFFF)
		{
			if (*tim1>*tim2)
			{
				pos3=*pos2;
				tim3=*tim2;
				*pos2=*pos1;
				*tim2=*tim1;
				*pos1=pos3;
				*tim1=tim3;
			}
			pos2++;
			tim2++;
		}
		pos1++;
		tim1++;
	}

	// Step 5 - Remove subtitle hide too early
	pos1=pos; tim1=time;
	while (*pos1!=0xFFFFFFFF && *(pos1+1)!=0xFFFFFFFF && *(pos1+2)!=0xFFFFFFFF)
	{
		if (*(str+*(pos1))!='\0' && *(str+*(pos1+1))=='\0' && (*(str+*(pos1+2))=='\0' || p->NoHide))
		{
			*(pos1+1)=*pos1;
			*(tim1+1)=*tim1;
		}
		pos1++;
		tim1++;
	}
}

void ParseSUB(subtitlex *p,wchar_t * str,unsigned int * pos,unsigned int * time)
{
	wchar_t *bol=str;
	wchar_t *xtime1;
	long long realtime;
	long time1;
	long time2;
	long l=0;
	int znow=0;
	float fpsx;
	int tt;

	if (*bol=='{')
	while (*bol)
	{
		if (*bol==L'{')
		{
			bol++;
			if (znow==0) time1=_wtoi(bol);
			else if (znow==1) time2=_wtoi(bol);
			znow++;
			while (*bol!=L'}' && *bol!=L'\0') bol++;
			if (*bol==L'\0') break;
			bol++;
		}
		else
		{
			znow=0;
			if (time1<2 && time2<2)
			{
				swscanf(bol,L"%f",&fpsx);
				fpsx*=1000;
				p->fps=(int)fpsx;
			}
			else
			{
				realtime=time1;
				realtime*=TICKSPERSEC;
				realtime*=1000;
				realtime/=p->fps;
				*time=(unsigned int)realtime;
				time++;
				realtime=time2;
				realtime*=TICKSPERSEC;
				realtime*=1000;
				realtime/=p->fps;
				*time=(unsigned int)realtime;
				time++;
				*pos=bol-str;
				pos++;
				l++;
				*pos=0;
				pos++;
				l++;
				if (l>MAXSUBTITLECOUNT-2) break;
			}
			while (*bol!=L'{' && *bol!=L'\0') bol++;
			if (*bol==L'\0') break;
			*(bol-1)=L'\0';
		}
	}
	else
	{
		while (*bol)
		{
			if (*bol==L'\r' || *bol==L'\n') *bol='\0';
			if ((bol-str==0) || (*(bol-1)=='\0' && *(bol)!='\0'))
			{
				xtime1=bol;
				*time=0;
				tt=0; while (*xtime1>=L'0' && *xtime1<=L'9') {tt*=10; tt+=(*xtime1-0x30); xtime1++;}; xtime1++;
				*time+=tt; *time*=60;
				tt=0; while (*xtime1>=L'0' && *xtime1<=L'9') {tt*=10; tt+=(*xtime1-0x30);xtime1++;}; xtime1++;
				*time+=tt; *time*=60;
				tt=0; while (*xtime1>=L'0' && *xtime1<=L'9') {tt*=10; tt+=(*xtime1-0x30);xtime1++;}; xtime1++;
				*time+=tt; *time*=1000;
				tt=0; while (*xtime1>=L'0' && *xtime1<=L'9') {tt*=10; tt+=(*xtime1-0x30);xtime1++;};
				if (*xtime1==L'.' || *xtime1==L'=' || *xtime1==L':') xtime1++;
				*time+=tt;
				realtime=*time;
				realtime*=TICKSPERSEC;
				realtime/=1000;
				*time=(unsigned int)realtime;
				time++;
				*pos=xtime1-str;
				pos++;
				l++;
				if (l>=MAXSUBTITLECOUNT-3) break;
			}
			bol++;
		}
		*pos=0;
		pos++;
		*time=0xFFFFFFFF;
		time++;
		l++;
	}
	*str=L'\0';
	*pos=0xFFFFFFFF;
	*time=0;
	l++;
	p->SubsCount=l;
	PRINT("Parse SUB.\n");
}

void ParseSRT(subtitlex *p,wchar_t * str,unsigned int * pos,unsigned int * time)
{
	// bol = current symbol parsed
	// cot = center of tag pointer
	wchar_t *bol=str;
	wchar_t *bot=0,*eot=0,*cot=0;
	long l=0;
	int semicolons;
	wchar_t *xtime1,*xtext;
	int tt;
	long long realtime;

	while (*bol)
	{
		if (
			(*(bol+0)==L'\r' || *(bol+0)==L'\n') &&
			(*(bol+1)==L'\r' || *(bol+1)==L'\n') &&
			(
				(
				(*(bol+2)==L'\r' || *(bol+2)==L'\n') &&
				(*(bol+3)==L'\r' || *(bol+3)==L'\n')

				)
				||
				*(bol+0)==*(bol+1)
			)
		)
		*bol=L'\0';
		if (l>MAXSUBTITLECOUNT-3) break;
		if (*bol==L'<') {bot=bol; eot=0;}
		if (*bol==L'>') eot=bol;
		if (bot && eot && eot-bot<50)
		{
			while (bot!=eot+1) {*bot=L' '; bot++;}
			bot=eot=0;
		}
		if (bol==str || *(bol-1)==L'\n' || *(bol-1)==L'\r')
		{
			cot=bol;
			semicolons=0;
			while (*cot!=L'\n' && *cot!=L'\r' && *cot!=L'\0')
			{
				if (*cot==L':') semicolons++;
				cot++;
			}
			if (*cot==L'\0') {break;}
			if (semicolons!=4) {bol++;continue;}
			cot=bol;
			while ((*cot<L'0' || *cot>L'9') && *cot!=L'\0') cot++;
			if (*cot==L'\0') {bol++; continue;}
			xtime1=cot;
			*time=0;
			tt=0; while (*xtime1>=L'0' && *xtime1<=L'9') {tt*=10; tt+=(*xtime1-0x30); xtime1++;}; xtime1++;
			*time+=tt; *time*=60;
			tt=0; while (*xtime1>=L'0' && *xtime1<=L'9') {tt*=10; tt+=(*xtime1-0x30);xtime1++;}; xtime1++;
			*time+=tt; *time*=60;
			tt=0; while (*xtime1>=L'0' && *xtime1<=L'9') {tt*=10; tt+=(*xtime1-0x30);xtime1++;}; xtime1++;
			*time+=tt; *time*=1000;
			tt=0; while (*xtime1>=L'0' && *xtime1<=L'9') {tt*=10; tt+=(*xtime1-0x30);xtime1++;}; xtime1++;
			*time+=tt;
			realtime=*time;
			realtime*=TICKSPERSEC;
			realtime/=1000;
			*time=(unsigned int)realtime;
			time++;
			cot=xtime1;
			while ((*cot<L'0' || *cot>L'9') && *cot!=L'\0') cot++;
			if (*cot==L'\0') {bol++; continue;}
			xtime1=cot;
			*time=0;
			tt=0; while (*xtime1>=L'0' && *xtime1<=L'9') {tt*=10; tt+=(*xtime1-0x30); xtime1++;}; xtime1++;
			*time+=tt; *time*=60;
			tt=0; while (*xtime1>=L'0' && *xtime1<=L'9') {tt*=10; tt+=(*xtime1-0x30);xtime1++;}; xtime1++;
			*time+=tt; *time*=60;
			tt=0; while (*xtime1>=L'0' && *xtime1<=L'9') {tt*=10; tt+=(*xtime1-0x30);xtime1++;}; xtime1++;
			*time+=tt; *time*=1000;
			tt=0; while (*xtime1>=L'0' && *xtime1<=L'9') {tt*=10; tt+=(*xtime1-0x30);xtime1++;}; xtime1++;
			*time+=tt;
			realtime=*time;
			realtime*=TICKSPERSEC;
			realtime/=1000;
			*time=(unsigned int)realtime;
			time++;
			cot=xtime1;
			while (*cot!=L'\r' && *cot!=L'\n' && *cot!=L'\0') cot++;
			while (*cot==L'\r' || *cot==L'\n') cot++;
			if (*cot==L'\0') {bol++; continue;}
			xtext=cot;
			*pos=cot-str;
			pos++;
			*pos=0;
			pos++;
			l+=2;
		}
		bol++;
	}
	*str=L'\0';
	*pos=0xFFFFFFFF;
	*time=0;
	l++;
	p->SubsCount=l;
	PRINT("Parse SRT.\n");
}

void ParseASS(subtitlex *p,wchar_t * str,unsigned int * pos,unsigned int * time)
{
	// bol = current symbol parsed
	// bot = begin of last tag
	// eot = end of last tag
	// cot = center of tag pointer
	wchar_t *bol=str;
	wchar_t *bot=0,*eot=0,*cot=0;
	long l=0;
	int ztime1=-1;
	int ztime2=-1;
	int ztext=-1;
	wchar_t *xtime1,*xtime2,*xtext;
	int znow;
	int tt;
	long long realtime;

	while (*bol)
	{
		if ((*bol==L'\\' && *(bol+1)==L'N') || (*bol==L'\\' && *(bol+1)==L'n'))
		{
			*bol=L'|'; *(bol+1)=L' ';
		}
		if (*bol==L'¤') *bol=L'\0';
		if (*bol==L'{') {bot=bol; eot=0;}
		if (*bol==L'}') eot=bol;
		if (bot && eot)
		{
			while (bot!=eot+1) {*bot=L' '; bot++;}
			bot=eot=0;
		}
		if ((*bol==L'\r' || *bol==L'\n' || *bol==L'\0') && *(bol+1)!=L'\r' && *(bol+1)!=L'\n')
		{
			if (wcsncmp(bol+1,L"Format:",7)==0)
			{
				cot=bol+1;
				while (*cot!=L':' && *cot!=L'\0' && *cot!=L'\n' && *cot!=L'\r') cot++;
				if (*cot==L':') cot++;
				while (*cot==L' ' && *cot!=L'\0' && *cot!=L'\n' && *cot!=L'\r') cot++;
				if (*cot==L'\0' || *cot==L'\n' || *cot==L'\r') break;
				znow=0;
				while (1)
				{
					if (wcsncmp(cot,L"Start",5)==0) ztime1=znow;
					if (wcsncmp(cot,L"End",3)==0) ztime2=znow;
					if (wcsncmp(cot,L"Text",4)==0) ztext=znow;
					while (*cot!=L',' && *cot!=L'\0' && *cot!=L'\n' && *cot!=L'\r') cot++;
					if (*cot==L',') cot++;
					while (*cot==L' ' && *cot!=L'\0' && *cot!=L'\n' && *cot!=L'\r') cot++;
					if (*cot==L'\0' || *cot==L'\n' || *cot==L'\r') break;
					znow++;
				}

			}
			if (wcsncmp(bol+1,L"Dialogue:",9)==0)
			{
				xtime1=xtime2=xtext=0;
				cot=bol+1;
				while (*cot!=L':' && *cot!=L'\0' && *cot!=L'\n' && *cot!=L'\r') cot++;
				if (*cot==L':') cot++;
				while (*cot==L' ' && *cot!=L'\0' && *cot!=L'\n' && *cot!=L'\r') cot++;
				if (*cot==L'\0' || *cot==L'\n' || *cot==L'\r') break;
				znow=0;
				while (1)
				{
					if (znow==ztime1) xtime1=cot;
					if (znow==ztime2) xtime2=cot;
					if (znow==ztext)  xtext=cot;
					while (*cot!=L',' && *cot!=L'\0' && *cot!=L'\n' && *cot!=L'\r') cot++;
					if (*cot==L',') cot++;
					while (*cot==L' ' && *cot!=L'\0' && *cot!=L'\n' && *cot!=L'\r') cot++;
					if (*cot==L'\0' || *cot==L'\n' || *cot==L'\r') break;
					znow++;
				}
				if (xtime1 && xtime2 && xtext && l<=MAXSUBTITLECOUNT-3)
				{
					*time=0;
					tt=0; while (*xtime1!=L':') {tt*=10; tt+=(*xtime1-0x30); xtime1++;}; xtime1++;
					*time+=tt; *time*=60;
					tt=0; while (*xtime1!=L':') {tt*=10; tt+=(*xtime1-0x30);xtime1++;}; xtime1++;
					*time+=tt; *time*=60;
					tt=0; while (*xtime1!=L'.') {tt*=10; tt+=(*xtime1-0x30);xtime1++;}; xtime1++;
					*time+=tt; *time*=100;
					tt=0; while (*xtime1!=L',') {tt*=10; tt+=(*xtime1-0x30);xtime1++;}; xtime1++;
					*time+=tt;
					realtime=*time;
					realtime*=TICKSPERSEC;
					realtime/=100;
					*time=(unsigned int)realtime;
					*pos=xtext-str;
					time++;
					pos++;
					l++;
					cot=xtext;
					while (*cot!=L'\0' && *cot!=L'\n' && *cot!=L'\r') cot++;
					*cot=L'¤';
					
					*time=0;		
					tt=0; while (*xtime2!=L':') {tt*=10; tt+=(*xtime2-0x30);xtime2++;}; xtime2++;
					*time+=tt; *time*=60;
					tt=0; while (*xtime2!=L':') {tt*=10; tt+=(*xtime2-0x30);xtime2++;}; xtime2++;
					*time+=tt; *time*=60;
					tt=0; while (*xtime2!=L'.') {tt*=10; tt+=(*xtime2-0x30);xtime2++;}; xtime2++;
					*time+=tt; *time*=100;
					tt=0; while (*xtime2!=L',') {tt*=10; tt+=(*xtime2-0x30);xtime2++;}; xtime2++;
					*time+=tt;
					realtime=*time;
					realtime*=TICKSPERSEC;
					realtime/=100;
					*time=(unsigned int)realtime;
					*pos=cot-str;
					time++;
					pos++;
					l++;
					
				}
			}
		}
		bol++;
	}
	*pos=0xFFFFFFFF;
	*time=0;
	l++;
	p->SubsCount=l;
	PRINT("Parse ASS.\n");
}

void ParseSMI(subtitlex *p,wchar_t * str,unsigned int * pos,unsigned int * time)
{
	// bol = current symbol parsed
	// bot = begin of last tag
	// eot = end of last tag
	// cot = center of tag pointer
	wchar_t *bol=str;
	wchar_t *bot=0,*eot=0,*cot=0;
	unsigned int *spos,*stime;
	long l=0;
	long long realtime;

	spos=pos;
	stime=time;
	while (*bol)
	{
		// Step 1 - replace all whitespace to spaces
		if (*bol==L'\r' || *bol==L'\n' || *bol==L'\t') *bol=L' ';
		// Step 2 - remove tags
		if (*bol==L'&' && *(bol+1)==L'n' && *(bol+2)==L'b' && *(bol+3)==L's' && *(bol+4)==L'p' && *(bol+5)==L';')
		{
			*bol=*(bol+1)=*(bol+2)=*(bol+3)=*(bol+4)=*(bol+5)=L' ';
		}
		if (*bol==L'<') {bot=bol; eot=0;}
		if (*bol==L'>') eot=bol;
		if (bot && eot)
		{
			if 
			(
			(*(bot+1)==L'b' || *(bot+1)==L'B') &&
			(*(bot+2)==L'r' || *(bot+2)==L'R')
			)
			{
				*bot=L'|';
				bot++;
			}
			else while 
			(
			(*(bot+1)==L's' || *(bot+1)==L'S') &&
			(*(bot+2)==L'y' || *(bot+2)==L'Y') &&
			(*(bot+3)==L'n' || *(bot+3)==L'N') &&
			(*(bot+4)==L'c' || *(bot+4)==L'C') &&
			(*(bot+5)==L' ' || *(bot+5)==L' ')
			)
			{
				*bot=L'\0';
				bot++;
				cot=bot;
				while (*cot!=L'=' && cot<eot) cot++;
				if (*cot!=L'=') break;
				cot++;
				if (l>=MAXSUBTITLECOUNT-1) break;
				realtime=_wtoi(cot);
				realtime*=TICKSPERSEC;
				realtime/=1000;
				*time=(unsigned int)realtime;
				*pos=bot-str;
				time++;
				pos++;
				l++;
				break;
			}
			while (bot!=eot+1) {*bot=L' '; bot++;}
			bot=eot=0;
		}
		bol++;
	}
	*pos=0xFFFFFFFF;
	*time=0;
	l++;
	p->SubsCount=l;
	PRINT("Parse SMI.\n");
}

// Blit subtitle in screen
void BlitSubtitle(subtitlex *p, short* dest) {
	int x,y;
	short *sour = p->Plane;

	if (p->Subtitle != 2 || p->SubHeight == 0) return;
	if (dest == NULL || sour == NULL){
		PRINT("Source or Dest is NULL\n");
		return; 
	}

	if (p->OldStyle)
	{
		switch(p->DstBPP){
			case 8:{ // for ATI 3200(Y Plane)
				char *destb = (char*)dest + p->DstPtr;
				char *shade1 = (char*)destb + p->DstStepX;
				char *shade2 = (char*)destb + p->DstStepX + p->DstStepY;
				short *sourb = sour + p->SrcPtr;
				for (y=0;y<p->SubHeight;y++) {
					for (x=0;x<p->SubWidth;x++, sourb++, destb+=p->DstStepX, shade1+=p->DstStepX, shade2+=p->DstStepX) {
						if (*sourb != 0) {
							//*destb = (char)(*sourb >> 8);
							*destb = -1;
							*shade1 = 0;
							*shade2 = 0;
						}
					}
					sourb += p->SrcGap;
					destb += p->DstGap;
					shade1 += p->DstGap;
					shade2 += p->DstGap;
				}
			}
			break;
			case 16:{ // for GDI, GAPI(RGB Plane)
				short *destb = (short*)dest + p->DstPtr;
				short *shade1 = (short*)destb + p->DstStepX;
				short *shade2 = (short*)destb + p->DstStepX + p->DstStepY;
				short *sourb = sour + p->SrcPtr;
				short col=((p->fontColor&0xFF0000)>>5)|((p->fontColor&0x00FF00)>>3)|((p->fontColor&0x0000FF));
				for (y=0;y<p->SubHeight;y++) {
					for (x=0;x<p->SubWidth;x++, sourb++, destb+=p->DstStepX, shade1+=p->DstStepX, shade2+=p->DstStepX) {
						if (*sourb != 0) {
							*destb = col;
							*shade1 = 0;
							*shade2 = 0;
						}
					}
					sourb += p->SrcGap;
					destb += p->DstGap;
					shade1 += p->DstGap;
					shade2 += p->DstGap;
				}
			}
			break;
			case 32:{ // for PC
				long *destb = (long*)dest + p->DstPtr;
				long *shade1 = (long*)destb + p->DstStepX;
				long *shade2 = (long*)destb + p->DstStepX + p->DstStepY;
				short *sourb = sour + p->SrcPtr;
				for (y=0;y<p->SubHeight;y++) {
					for (x=0;x<p->SubWidth;x++, sourb++, destb+=p->DstStepX, shade1+=p->DstStepX, shade2+=p->DstStepX) {
						if (*sourb != 0) {
							*destb = p->fontColor; //(((WORD)(*sourb) & 0xF800)<<5)+(((WORD)(*sourb) & 0x7E0)<<3)+((WORD)(*sourb) & 0x1F);
							*shade1 = 0;
							*shade2 = 0;
						}
					}
					sourb += p->SrcGap;
					destb += p->DstGap;
					shade1 += p->DstGap;
					shade2 += p->DstGap;
				}
			}
			break;
		}

	}
	else
	{

		switch(p->DstBPP){
			case 8:{ // for ATI 3200(Y Plane)
				char *destb = (char*)dest + p->DstPtr;
				short *sourb = sour + p->SrcPtr;
				for (y=0;y<p->SubHeight;y++) {
					for (x=0;x<p->SubWidth;x++, sourb++, destb+=p->DstStepX)
					{
						if (x && y && *sourb != 0)
						{
							*(destb-p->DstStepX) = 0;
							*(destb+p->DstStepX) = 0;
							*(destb+p->DstStepY) = 0;
							*(destb-p->DstStepY) = 0;
						}
					}
					sourb += p->SrcGap;
					destb += p->DstGap;
				}
				destb = (char*)dest + p->DstPtr;
				sourb = sour + p->SrcPtr;
				for (y=0;y<p->SubHeight;y++) {
					for (x=0;x<p->SubWidth;x++, sourb++, destb+=p->DstStepX)
					{
						if (*sourb != 0)
						{
							*destb = -1;
						}
					}
					sourb += p->SrcGap;
					destb += p->DstGap;
				}
			}
			break;
			case 16:{ // for GDI, GAPI(RGB Plane)
				short *destb = (short*)dest + p->DstPtr;
				short *sourb = sour + p->SrcPtr;
				short col=((p->fontColor&0xFF0000)>>5)|((p->fontColor&0x00FF00)>>3)|((p->fontColor&0x0000FF));
				for (y=0;y<p->SubHeight;y++)
				{
					for (x=0;x<p->SubWidth;x++, sourb++, destb+=p->DstStepX)
					{
						if (x && y && *sourb != 0)
						{
							*(destb-p->DstStepX) = 0;
							*(destb+p->DstStepX) = 0;
							*(destb+p->DstStepY) = 0;
							*(destb-p->DstStepY) = 0;
						}
					}
					sourb += p->SrcGap;
					destb += p->DstGap;
				}
				destb = (short*)dest + p->DstPtr;
				sourb = sour + p->SrcPtr;
				for (y=0;y<p->SubHeight;y++)
				{
					for (x=0;x<p->SubWidth;x++, sourb++, destb+=p->DstStepX)
					{
						if (*sourb != 0)
						{
							*destb = col;
						}
					}
					sourb += p->SrcGap;
					destb += p->DstGap;
				}
			}
			break;
			case 32:{ // for PC
				long *destb = (long*)dest + p->DstPtr;
				short *sourb = sour + p->SrcPtr;
				for (y=0;y<p->SubHeight;y++)
				{
					for (x=0;x<p->SubWidth;x++, sourb++, destb+=p->DstStepX)
					{
						if (x && y && *sourb != 0)
						{
							*(destb-p->DstStepX) = 0;
							*(destb+p->DstStepX) = 0;
							*(destb+p->DstStepY) = 0;
							*(destb-p->DstStepY) = 0;
						}
					}
					sourb += p->SrcGap;
					destb += p->DstGap;
				}
				destb = (long*)dest + p->DstPtr;
				sourb = sour + p->SrcPtr;
				for (y=0;y<p->SubHeight;y++)
				{
					for (x=0;x<p->SubWidth;x++, sourb++, destb+=p->DstStepX)
					{
						if (*sourb != 0)
						{
							*destb =  p->fontColor;//((*sourb & 0x7C00)<<9)+((*sourb & 0x3E0)<<6)+((*sourb & 0x1F)<<3);
						}
					}
					sourb += p->SrcGap;
					destb += p->DstGap;
				}
			}
			break;
		}
	}
}

int	GetPrevSub(subtitlex *p)
{
	tick_t i;
	long long realtime;
	i=p->CurrentPos;
	i--;
	while (i>=0 && i<p->SubsCount-1)
	{
		if (*(p->String+p->PositionOffset[i])==L'\0') {i--; continue;}
		else break;
	}
	if (i<0 ||i>p->SubsCount-1) return -1;
	realtime=p->Speed;
	realtime*=TICKSPERSEC;
	realtime/=-10;
	realtime+=p->PositionTime[i];
	return (int)realtime;
}

int	GetNextSub(subtitlex *p)
{
	tick_t i;
	long long realtime;
	i=p->CurrentPos;
	i++;
	while (i>=0 && i<p->SubsCount-1)
	{
		if (*(p->String+p->PositionOffset[i])==L'\0') {i++; continue;}
		else break;
	}
	if (i<0 ||i>p->SubsCount-1) return -1;
	realtime=p->Speed;
	realtime*=TICKSPERSEC;
	realtime/=-10;
	realtime+=p->PositionTime[i];
	return (int)realtime;
}

int GetSubtitlePos(subtitlex *p, unsigned int curtime) {
	unsigned int time,prevtime;
	long long realtime;
	int pos = p->CurrentPos;
	int k;
	if (curtime==4294967295) return pos;
	realtime=p->Speed;
	realtime*=TICKSPERSEC;
	realtime/=10;
	realtime+=curtime;
	curtime=(unsigned int)realtime;
	if (p->PositionTime == NULL || p->SubsCount==0 || curtime<p->PositionTime[0] || curtime>p->PositionTime[p->SubsCount-2])
	{
		if (p->CurrentPos!=-1)
		{
			p->DrawPos = -1;
			p->SubHeight = 0;
		}
		p->CurrentPos=-1;
		return pos;
	}

	if (pos<0 || pos>p->SubsCount-1) pos = 0;

	for (k=0;k<100;k++)
	{
		if (pos<0 || pos>p->SubsCount-1) pos = 0;	
		time	= p->PositionTime[pos+1];
		prevtime= p->PositionTime[pos];
		if (pos>p->SubsCount-1)
			break;
		if (curtime > time)
			pos++;
		else if (curtime < prevtime)
			pos--;
		else
			break;
	}
	if(k >= 100)
	{
		p->DrawPos = pos;
		p->SubHeight = 0;
	}
	if (pos<0 || pos>p->SubsCount-1) pos = 0;
	//while (pos>1 && p->PositionTime[pos-1]==p->PositionTime[pos]) pos--;
	p->CurrentPos=pos;

	return pos;
}

int DrawSubtitle(subtitlex* p, overlay *over, int type, int pitch)
{
	int saveHeight;
	if (p->CurrentPos<0 || p->Subtitle != 2 || p->hFont == NULL || p->hSFont == NULL || p->String==NULL || p->DC2 == NULL) return -1;
	if (p->Plane == NULL && !SubtitleCreateBitmap(p)) return -1;
	if (p->CurrentPos == p->DrawPos)
		if(p->SubHeight)
			return 0;
		else
			return -1;

	{
		int pos;
		unsigned int offset;
		//int destlen;
		int sourlen;
		wchar_t *sour;
		//int giSourceCodePage = GetOEMCP();

		wchar_t cont1[1024];
		wchar_t *tmp=cont1;

		pos = p->CurrentPos;
		if	(pos<0 || pos>p->SubsCount-1) pos=0;
		p->CurrentPos = pos;

		// Bug: DrawText makes memory leak if the next character is '\0' (?)
		// Add a space to the text
		offset = p->PositionOffset[pos];
		sour = p->String + offset;
		sourlen=0;
		while (*sour!=L'\0' && tmp-cont1<1000)
		{
			if (*sour=='|') {*tmp='\r'; tmp++; *tmp='\n'; tmp++;}
			else {*tmp=*sour; tmp++;}
			sour++;
		};
		sourlen=tmp-cont1;
		*tmp=L' '; tmp++; *tmp=L'\0';
		sour=cont1;
/*
		*cont1='\0';
		sourlen=1023;
		while (1)
		{
			offset = p->PositionOffset[pos];
			if (offset >= p->FileSize) offset = 0;
			sour = p->String + offset;
			sourlen-=wcslen(sour)+1;
			if (sourlen<0) break;
			if (pos!=p->CurrentPos)
				wcscat(cont1,L" ");
			wcscat(cont1,sour);
			if (p->PositionTime[pos+1]!=p->PositionTime[pos] || pos>p->SubsCount-1) break;
			pos++;
		}
		sourlen = wcslen(cont1);
		sour = cont1;
*/
		/*if (sourlen>=1000) {
			sour[999]=0;
			sour[998]=0;
			sourlen = strlen(sour);
		}*/

		//destlen = MultiByteToWideChar(giSourceCodePage, MB_PRECOMPOSED , sour , sourlen, NULL, 0 );

		//if	(destlen < 1000)
		//	destlen = MultiByteToWideChar(giSourceCodePage, 0, sour, sourlen, (LPWSTR)cont1, destlen);
		//else
		//	destlen = 0;
		//return -1;

		if(sourlen > 0){
			int DstWidth, DstHeight;
			int DstX, DstY;
			int DstPitch;
			int bottomgap;
			COLORREF crColor[2] = {0x00FFFFFF,0x00000000};
			HFONT obj;
			RECT tRect;
			clone_blitpack *Pack = (clone_blitpack*)over->Soft;

			//cont1[destlen] = 0;

			if(type & SUBTITLE_GAPI){
				DstWidth = over->DstAlignedRect.Width;
				DstHeight = over->DstAlignedRect.Height;
				DstX = over->DstAlignedRect.x;
				DstY = over->DstAlignedRect.y;
			} else {
				DstWidth = over->DstAlignedRect.Width;
				DstHeight = over->DstAlignedRect.Height;
				DstX = 0;
				DstY = 0;
			}
			if(Pack->Code[0].SwapXY)
				SwapInt(&DstWidth, &DstHeight);

			p->SubWidth = DstWidth;
			if(p->SubWidth > p->MaxWidth)
				p->SubWidth = p->MaxWidth;

			bottomgap = 4;
			if(p->SubWidth < p->LowResBoundary) bottomgap >>= 1;

			tRect.left = 0;
			tRect.top = 0;
			tRect.right = p->SubWidth;
			tRect.bottom = DstHeight - bottomgap;

			if(tRect.right < p->LowResBoundary) {
				tRect.bottom = (int)(tRect.bottom / (p->LowResFontSize)) * (p->LowResFontSize);
				obj = SelectObject(p->DC2, p->hSFont);
			} else {
				tRect.bottom = (int)(tRect.bottom / p->HiResFontSize) * (p->HiResFontSize);
				obj = SelectObject(p->DC2, p->hFont);
			}

			SetBkColor(p->DC2, crColor[1]);
			SetTextColor(p->DC2, crColor[0]);

			FillRect(p->DC2,&tRect, p->FillBrush);

			#ifdef SUBTITLE_DEBUG
				{
					char temp[256];

					sprintf(temp,
						"len: %d \n",
						sourlen);
					PRINT(temp);
				}
			#endif
			tRect.left = p->marginH;
			tRect.right = p->SubWidth-p->marginH;
			p->SubHeight = DrawTextW(p->DC2, sour, sourlen, &tRect, DT_WORDBREAK | DT_CENTER);

			if (obj != NULL) SelectObject(p->DC2, obj);

			if(p->SubHeight > 0){
				saveHeight=p->SubHeight;
				p->SubHeight++;
				if (p->topAlign) p->SubHeight=DstHeight;
				if (p->topAlign) p->SubHeight-=p->marginV;
				else p->SubHeight+=p->marginV;
				p->DstBPP = Pack->Code[0].DstBPP;
				p->SrcGap = p->MaxWidth - p->SubWidth;
				p->SrcPtr = 0;

				if(type & (SUBTITLE_ATI3200))
				{
					if(pitch == -1)
						DstPitch = over->DstAlignedRect.Width;
					else
						DstPitch = pitch;
					if(DstPitch & 15) DstPitch += 16 - (DstPitch & 15);
					if(!Pack->Code[0].SwapXY){
						p->DstGap = DstPitch - p->SubWidth;
						p->DstPtr = (DstY + DstHeight - p->SubHeight) * DstPitch + DstX;
						p->DstStepX = 1;
						p->DstStepY = DstPitch;
					} else {
						p->DstGap = -(p->SubWidth * DstPitch) + 1;
						p->DstPtr = DstY * DstPitch + DstX + DstHeight - p->SubHeight;
						p->DstStepX = DstPitch;
						p->DstStepY = 1;
					}
				} else  if(type & (SUBTITLE_GDI | SUBTITLE_GAPI | SUBTITLE_INTEL2700G))
				{
					//DstWidth = Pack->DstRect.Width;
					//DstHeight = Pack->DstRect.Height;
					if(pitch == -1)
						DstPitch = Pack->Dst.Pitch / (p->DstBPP >> 3);
					else
						DstPitch = pitch;

					p->DstStepX = 1;
					p->DstStepY = DstPitch;

					if (over->FX.Direction & DIR_MIRRORLEFTRIGHT)
						p->DstStepX = -p->DstStepX;

					if (over->FX.Direction & DIR_MIRRORUPDOWN)
						p->DstStepY = -p->DstStepY;

					if (over->FX.Direction & DIR_SWAPXY)
						SwapInt(&p->DstStepX, &p->DstStepY);

					switch(over->FX.Direction & (DIR_SWAPXY | DIR_MIRRORLEFTRIGHT | DIR_MIRRORUPDOWN)){
					case 0:
						p->DstGap = DstPitch - p->SubWidth;
						p->DstPtr = (DstY + DstHeight - p->SubHeight) * DstPitch + DstX;
						break;
					case DIR_MIRRORLEFTRIGHT:
						p->DstGap = DstPitch + p->SubWidth;
						p->DstPtr = (DstY + DstHeight - p->SubHeight) * DstPitch + DstX + DstWidth;
						break;
					case DIR_MIRRORUPDOWN:
						p->DstGap = -(DstPitch + p->SubWidth);
						p->DstPtr = (DstY + p->SubHeight) * DstPitch + DstX;
						break;
					case DIR_MIRRORLEFTRIGHT | DIR_MIRRORUPDOWN:
						p->DstGap = -(DstPitch - p->SubWidth);
						p->DstPtr = (DstY + p->SubHeight + bottomgap) * DstPitch + DstX + DstWidth;
						break;
					case DIR_SWAPXY:
						p->DstGap = (p->SubWidth * DstPitch) - 1;
						p->DstPtr = (DstY + p->SubWidth) * DstPitch + DstX + p->SubHeight + bottomgap;
						break;
					case DIR_SWAPXY | DIR_MIRRORLEFTRIGHT:
						p->DstGap = -(p->SubWidth * DstPitch) - 1;
						p->DstPtr = DstY * DstPitch + DstX + p->SubHeight + bottomgap;
						break;
					case DIR_SWAPXY | DIR_MIRRORUPDOWN:
						p->DstGap = (p->SubWidth * DstPitch) + 1;
						p->DstPtr = (DstY + DstWidth) * DstPitch + DstX + DstHeight - p->SubHeight;
						break;
					case DIR_SWAPXY | DIR_MIRRORLEFTRIGHT | DIR_MIRRORUPDOWN:
						p->DstGap = -(p->SubWidth * DstPitch) + 1;
						p->DstPtr = DstY * DstPitch + DstX + DstHeight - p->SubHeight;
						break;
					}
				}

			#ifdef SUBTITLE_DEBUG
				{
					char temp[256];

					sprintf(temp,
						"1: bpp:%d dw:%d dh:%d dx:%d dy:%d sx:%d sy:%d dw:%d dh:%d drx:%d dry:%d drw:%d drh:%d sp:%d dp:%d sg:%d dg:%d dn:%d ln:%d st:%d pos:%d\n",
						p->DstBPP,
						DstWidth, DstHeight, DstX, DstY,
						p->SubWidth, p->SubHeight,
						Pack->Dst.Width, Pack->Dst.Height,
						Pack->DstRect.x, Pack->DstRect.y,
						Pack->DstRect.Width, Pack->DstRect.Height,
						p->SrcPtr, p->DstPtr,
						p->SrcGap, p->DstGap, p->DstStepX, p->DstStepY,
						p->Subtitle, p->CurrentPos);
					PRINT(temp);

					sprintf(temp,
						"2: dp:%d dsx:%d dsy:%d drx:%d dry:%d dp:%d dg:%d lr:%d up:%d xy:%d\n",
						DstPitch,
						p->DstStepX,
						p->DstStepY,
						DstX,
						DstY,
						p->DstPtr,
						p->DstGap,
						Pack->Code[0].DstLeftRight,
						Pack->Code[0].DstUpDown,
						Pack->Code[0].SwapXY);
					PRINT(temp);
				}
			#endif
				p->SubHeight=saveHeight;
			}
		} else {
			p->SubHeight = 0;
		}

		p->DrawPos = pos;
	}
	return 1;
}

int getSubsTypeByName(tchar_t* name)
{
	tchar_t * tmp;
	tmp=name;
	while (*tmp!='\0') tmp++;
	if (
		((*(tmp-3)=='s') || (*(tmp-3)=='S')) &&
		((*(tmp-2)=='r') || (*(tmp-2)=='R')) &&
		((*(tmp-1)=='t') || (*(tmp-1)=='T'))
		) return SUBS_TYPE_SRT;
	if (
		((*(tmp-3)=='s') || (*(tmp-3)=='S')) &&
		((*(tmp-2)=='m') || (*(tmp-2)=='M')) &&
		((*(tmp-1)=='i') || (*(tmp-1)=='I'))
		) return SUBS_TYPE_SMI;
	if (
		((*(tmp-3)=='a') || (*(tmp-3)=='A')) &&
		((*(tmp-2)=='s') || (*(tmp-2)=='S')) &&
		((*(tmp-1)=='s') || (*(tmp-1)=='S'))
		) return SUBS_TYPE_ASS;
	if (
		((*(tmp-3)=='s') || (*(tmp-3)=='S')) &&
		((*(tmp-2)=='s') || (*(tmp-2)=='S')) &&
		((*(tmp-1)=='a') || (*(tmp-1)=='A'))
		) return SUBS_TYPE_SSA;
	if (
		((*(tmp-3)=='s') || (*(tmp-3)=='S')) &&
		((*(tmp-2)=='u') || (*(tmp-2)=='U')) &&
		((*(tmp-1)=='b') || (*(tmp-1)=='B'))
		) return SUBS_TYPE_SUB;
	if (
		((*(tmp-3)=='t') || (*(tmp-3)=='T')) &&
		((*(tmp-2)=='x') || (*(tmp-2)=='X')) &&
		((*(tmp-1)=='t') || (*(tmp-1)=='T'))
		) return SUBS_TYPE_SUB;
	return SUBS_TYPE_UNK;
}

void LoadStream(subtitlex *p)
{
	FILE *fp=NULL;
	UINT CP=CP_ACP;
	char BOM=0;
	unsigned char* temp=0;
	long w;
	int ok;
	long FileSize;
	tchar_t sfn[MAXFILENAME];
	OPENFILENAME ofn;
	int sav_stream_id;

	sav_stream_id=p->StreamID;
	SubtitleLoad(p);
	p->StreamID=sav_stream_id;
	if (!p->Enabled) {p->Subtitle=1; return;}
	if (p->StreamID==-2 && p->AvailFilesCount<MAXSUBFILES)
	{
		*sfn=0;
		memset(&ofn,0,sizeof(ofn));
		ofn.lStructSize =sizeof(ofn);
		ofn.hwndOwner=Context()->Wnd;
		ofn.lpstrFilter=_T("Subtitle files\0*.SMI;*.ASS;*.SRT;*.SSA;*.SUB;*.TXT\0\0");
		ofn.nFilterIndex=1;
		ofn.lpstrFile=sfn;
		ofn.nMaxFile=MAXFILENAME;
		ofn.lpstrTitle=_T("Load subtitles...");
		ofn.Flags=OFN_FILEMUSTEXIST|OFN_PATHMUSTEXIST;
		if (GetOpenFileName(&ofn))
		{
			p->AvailTypes[p->AvailFilesCount]=getSubsTypeByName(ofn.lpstrFile);
			if (p->AvailTypes[p->AvailFilesCount]!=SUBS_TYPE_UNK)
			{
				tcscpy_s(p->AvailFiles[p->AvailFilesCount],MAXFILENAME,ofn.lpstrFile);
				p->StreamID=p->AvailFilesCount;
				p->AvailFilesCount++;
			}
			else return;
		}
		else return;
	}
	if (p->StreamID<0 || p->StreamID>p->AvailFilesCount-1) {p->StreamID=-1; p->Subtitle=1; return;}



	PRINT("Subtitle Stream Load.\n");

	if (p->DC2 == NULL) {
		PRINT("Memory DC is NULL(Terminate).\n");
		p->OpenedFile[0] = 0;
		p->Subtitle = 1;
		return;
	}
#ifdef SUBTITLE_DEBUG
	if (p->Plane == NULL) {
		PRINT("Bitmap Plane is Destoryed.\n");
		return;
	}
#endif
	if (p->Plane == NULL && !SubtitleCreateBitmap(p)) {
		PRINT("DIB Bitmap Create Failed.\n");
		p->OpenedFile[0] = 0;
		p->Subtitle = 1;
		return;
	}
	p->TypeLoaded=p->AvailTypes[p->StreamID];
	// Release preloaded subtitle.
	if(p->String) free(p->String);
	p->String = NULL;
	p->CurrentPos = 0;
	fp=NULL;
#if defined(TARGET_WINCE)
	fp=_wfopen(p->AvailFiles[p->StreamID], _T("rb"));
#endif

#if defined(TARGET_WIN32)
	fopen_s(&fp,p->AvailFiles[p->StreamID], _T("rb"));
#endif

	
		if (fp == NULL)
		{
			p->OpenedFile[0] = 0;
			p->Subtitle = 1;
			p->TypeLoaded=-1;
			PRINT("Subtitle File not found.\n");
		} else
		{
			fseek(fp,0,SEEK_END);
			FileSize = ftell(fp);
			fseek(fp,0,SEEK_SET);
			
			temp=0;
			ok=0;
			while (!ok)
			{
				temp=malloc(FileSize+32);
				fread(temp, FileSize, 1, fp);
				temp[FileSize]=0;
				temp[FileSize+1]=0;
				FileSize+=2;
				fclose(fp);
				if ((temp[0]==0xFF && temp[1]==0xFE) || (temp[0]==0xFE && temp[1]==0xFF))
				{
					p->String = malloc(FileSize+32);
					if (!p->String) break;
					wcscpy(p->String,(wchar_t *)(temp+2));
				}
				else
				{
					if (temp[0]==0xEF && temp[1]==0xBB && temp[2]==0xBF) {CP=CP_UTF8; BOM=3;}
					else if (temp[0]==0x2B && temp[1]==0x2F && temp[2]==0x76 && (temp[3]==0x38 || temp[3]==0x39 || temp[3]==0x2B || temp[3]==0x2F)) {CP=CP_UTF7; BOM=4;}
					temp+=BOM;
					{
						w=MultiByteToWideChar(CP,0,(char*)temp,FileSize,p->String,0);
						if (w==0)
						{
							CP=CP_ACP;
							w=MultiByteToWideChar(CP,0,(char*)temp,FileSize,p->String,0);
						}
						p->String = malloc(w*2+32);
						if (!p->String) break;
						MultiByteToWideChar(CP,0,(char*)temp,FileSize,p->String,w);
						p->String[w]=0;
					}
					temp-=BOM;
				}
				ok=1;
				break;
			}
			if (temp) free(temp);
			if (!ok)
			{
				if (p->String) free(p->String);
				p->OpenedFile[0] = 0;
				p->Subtitle = 0;
				PRINT("Subtitle Temp Load Failed.\n");
			}
			else
			{
				if (p->TypeLoaded==SUBS_TYPE_SMI) ParseSMI(p,p->String,p->PositionOffset,p->PositionTime);
				if (p->TypeLoaded==SUBS_TYPE_ASS || p->TypeLoaded==SUBS_TYPE_SSA) ParseASS(p,p->String,p->PositionOffset,p->PositionTime);
				if (p->TypeLoaded==SUBS_TYPE_SRT) ParseSRT(p,p->String,p->PositionOffset,p->PositionTime);
				if (p->TypeLoaded==SUBS_TYPE_SUB) ParseSUB(p,p->String,p->PositionOffset,p->PositionTime);
				ParseFIX(p->String,p->PositionOffset);
				ParseSORT(p,p->String,p->PositionOffset,p->PositionTime);
				p->Subtitle = 2;
				p->CurrentPos=-1;
				PRINT("Subtitle Load Success.\n");
			}
		}


	RedrawSubtitle(p);
}

void SubtitleLoad(subtitlex *p) {
	tchar_t s2[MAXFILENAME];
	tchar_t* tmp;
	node *Player=0;
	WIN32_FIND_DATA filedata;
	HANDLE findh;
	packetformat Format;
	node* Reader = NULL;
	pin Pin;
	int No;

	if (!p->Enabled) {p->AvailFilesCount=0; p->StreamID=-1; p->Subtitle=1; return;}

	PRINT("Subtitle Load.\n");

	if (p->DC2 == NULL) {
		PRINT("Memory DC is NULL(Terminate).\n");
		p->OpenedFile[0] = 0;
		p->Subtitle = 1;
		return;
	}
#ifdef SUBTITLE_DEBUG
	if (p->Plane == NULL) {
		PRINT("Bitmap Plane is Destoryed.\n");
		return;
	}
#endif
	if (p->Plane == NULL && !SubtitleCreateBitmap(p)) {
		PRINT("DIB Bitmap Create Failed.\n");
		p->OpenedFile[0] = 0;
		p->Subtitle = 1;
		return;
	}
	p->Input=NULL;
	if(p->Input == NULL){
		if (Context()) Player = Context()->Player;
		if(Player == NULL){
			PRINT("Get Player Node Failed.\n");
			return;
		}
		if((Player->Get(Player, PLAYER_INPUT, &(p->Input), sizeof(p->Input))!=ERR_NONE)||(p->Input == NULL)){
			PRINT("Get Input Node Failed.\n");
			return;
		}
	}

	p->Input->Get(p->Input, STREAM_URL, s2, sizeof(s2));
	// s2 is playing file name.
	if(tcscmp(s2, p->OpenedFile) != 0){

		Player->Get(Player,PLAYER_FORMAT,&Reader,sizeof(Reader));
		if (!Reader)
			return;
		for (No=0;Reader->Get(Reader,FORMAT_STREAM+No,&Pin,sizeof(Pin))==ERR_NONE;++No)
			if (PlayerGetStream((player*)Player,No,&Format,NULL,0,NULL))
			{
				if (Format.Type==PACKET_VIDEO && Format.PacketRate.Num && Format.PacketRate.Den)
				{
					p->fps=Format.PacketRate.Num*1000/Format.PacketRate.Den;
					break;
				}
			}

		tcscpy_s(p->OpenedFile,MAXFILENAME, s2);
		tmp=s2; while (*tmp!='\0') tmp++; while (tmp!=s2 && *tmp!='.') tmp--; if (tmp!=s2) *tmp='\0';


		tcscat_s(s2,MAXFILENAME,_T(".*"));
		p->AvailFilesCount=0;
		findh=FindFirstFile(s2,&filedata);
		tmp=s2; while (*tmp!=L'\0') tmp++; while (tmp!=s2 && *tmp!=L'\\') tmp--; if (tmp!=s2) {tmp++; *tmp=L'\0';}
		while (findh!=INVALID_HANDLE_VALUE && p->AvailFilesCount<MAXSUBFILES)
		{
			tmp=filedata.cFileName; while (*tmp!=L'\0') tmp++;
			p->AvailTypes[p->AvailFilesCount]=getSubsTypeByName(filedata.cFileName);
			if (p->AvailTypes[p->AvailFilesCount]!=SUBS_TYPE_UNK)
			{
				tcscpy_s(p->AvailFiles[p->AvailFilesCount],MAXFILENAME,s2);
				tcscat_s(p->AvailFiles[p->AvailFilesCount],MAXFILENAME,filedata.cFileName);
				p->AvailFilesCount++;
			}
			if (!FindNextFile(findh,&filedata)) break;
		}
		FindClose(findh);
		p->StreamID=(p->AvailFilesCount>0)?0:-1;
		LoadStream(p);
	} else {
		PRINT("Subtitle Already Loaded.\n");
		//p->Subtitle = 2;
	}
}

void RedrawSubtitle(subtitlex *p){
	PRINT("Redraw Subtitle.\n");
	p->DrawPos = -1;
	p->SubHeight = 0;
}

static subtitlex SubTitle;

static int Create(subtitlex* p)
{
	if (!p->fps)
	{
		tcscpy_s(p->FontName,MAXPATH, DEFAULTFONTNAME);
		p->fontColor=0xFFFFFF;
		*(p->ColorName)=0;
		p->HiResFontSize = DEFAULTHIRESFONTSIZE;
		p->LowResFontSize = DEFAULTLOWRESFONTSIZE;
		p->LowResBoundary = DEFAULTLOWRESBOUNDARY;
		p->FontBold=1;
		p->OldStyle=0;
		p->Speed=0;
		p->Enabled=1;
		p->fps=25000;
		p->marginH=0;
		p->marginV=0;
		p->topAlign=0;
		p->NoHide=0;

	}

	StringAdd(1,SUBT_ID,NODE_NAME,_T("Subtitles"));
	StringAdd(1,SUBT_ID,SUBT_FONTNAME,_T("Font"));
	StringAdd(1,SUBT_ID,SUBT_HIRESFONTSIZE,_T("Hi res size"));
	StringAdd(1,SUBT_ID,SUBT_LOWRESFONTSIZE,_T("Low res size"));
	StringAdd(1,SUBT_ID,SUBT_LOWRESBOUNDARY,_T("Low res boundary"));
	StringAdd(1,SUBT_ID,SUBT_FONTBOLD,_T("Bold font"));
	StringAdd(1,SUBT_ID,SUBT_SPEED,_T("Speed (1/10 sec)"));
	StringAdd(1,SUBT_ID,SUBT_SPEED,_T("Speed (1/10 sec)"));
	StringAdd(1,SUBT_ID,SUBT_OLDSTYLE,_T("Old style (shadow)"));
	StringAdd(1,SUBT_ID,SUBT_FPS,_T("FPS (.SUB, 1/1000 sec)"));
	StringAdd(1,SUBT_ID,SUBT_ENABLED,_T("Enabled"));
	StringAdd(1,SUBT_ID,SUBT_TOPALIGN,_T("Top align"));
	StringAdd(1,SUBT_ID,SUBT_MARGINH,_T("Horiz. margin"));
	StringAdd(1,SUBT_ID,SUBT_MARGINV,_T("Vert. margin"));
	StringAdd(1,SUBT_ID,SUBT_NOHIDE,_T("Do not hide text"));
	StringAdd(1,SUBT_ID,SUBT_FONTCOLOR,_T("Font color"));
	p->VMT.Get = Get;
	p->VMT.Set = Set;
	p->VMT.Enum = Enum;
	tcscpy_s(p->FontName,MAXPATH, DEFAULTFONTNAME);
	p->HiResFontSize = DEFAULTHIRESFONTSIZE;
	p->LowResFontSize = DEFAULTLOWRESFONTSIZE;
	p->LowResBoundary = DEFAULTLOWRESBOUNDARY;
	p->AvailFilesCount=0;

	p->OpenedFile[0] = 0;
	p->StreamID=-1;
	p->Subtitle = 0;
	p->TypeLoaded=0;
	//p->Enabled=1;
	p->String = NULL;
	p->Input = NULL;

	p->Plane = NULL;
	p->Bitmap = NULL;
	p->PositionOffset = malloc(MAXSUBTITLECOUNT * sizeof(int));
	p->PositionTime = malloc(MAXSUBTITLECOUNT * sizeof(int));

	p->MaxWidth = GetSystemMetrics(SM_CXSCREEN);
	p->MaxHeight = GetSystemMetrics(SM_CYSCREEN);
	if(p->MaxWidth > p->MaxHeight)
		p->MaxHeight = p->MaxWidth;
	else
		p->MaxWidth = p->MaxHeight;

	p->DC2 = CreateCompatibleDC(NULL);
	p->hFont = NULL;
	p->hSFont = NULL;
	p->FontSize = 0;
	p->SFontSize = 0;
	p->SubHeight = 0;

	SubtitleCreateBitmap(p);
	FontCreate(p);
	return ERR_NONE;
}

static void Delete(subtitlex* p)
{
	if (p->Bitmap)
	{
		SelectObject(p->DC2, p->Bitmap0);
		DeleteObject(p->Bitmap);
		p->Bitmap = NULL;

		DeleteObject(p->FillBrush);
		p->FillBrush = NULL;
	}
	p->Plane = NULL;
	DeleteDC(p->DC2);
	p->DC2 = NULL;

	if (p->String) free(p->String);
	p->String = NULL;
	if (p->PositionOffset) free(p->PositionOffset);
	p->PositionOffset=NULL;
	if (p->PositionTime) free(p->PositionTime);
	p->PositionTime=NULL;
	p->OpenedFile[0] = 0;

	if (p->hFont) DeleteObject(p->hFont);
	p->hFont = NULL;
	if (p->hSFont) DeleteObject(p->hSFont);
	p->hSFont = NULL;

	p->Subtitle = 0;
	p->SubHeight = 0;

	PRINT("Subtitle Done\n\n");
}

static const nodedef SUBTITLEX =
{
	sizeof(subtitlex)|CF_GLOBAL|CF_SETTINGS,
	SUBT_ID,
	NODE_CLASS,
	PRI_DEFAULT,
	(nodecreate)Create,
	(nodedelete)Delete,
};

void SubTitle_Init()
{
	NodeRegisterClass(&SUBTITLEX);
}

void SubTitle_Done()
{
	NodeUnRegisterClass(SUBT_ID);
}

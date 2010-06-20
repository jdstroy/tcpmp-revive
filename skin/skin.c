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
 * The Core Pocket Media Player (Skin addon)
 * Copyright (c) 2010 Paulius
 *
 ****************************************************************************/
 
#include <windows.h>
#include "../common/common.h"
#include "../interface/skin.h"
#include "../interface/win32/interface.h"
#if defined(TARGET_WINCE) || defined(UNICODE)
	#define tcstok wcstok
#else
	#define tcstok strtok
#endif
#define TRACKMAX		30000
#define SKIN_PORTRAIT 0
#define SKIN_LANDSCAPE 1

HDC hdcMem;
HBITMAP hOldBmp;
tchar_t *SkinInfo;
bool_t firstTime = 1, ClearBack;
int volumeVal, oldVolume;
int seekPos;
int oldSeekPos = -1;

void DrawButton(skin* p, HDC DC, int no, rect* r);
int ParseSkinFile(skin* p, void* Wnd, const tchar_t* FileName);
void LoadSkinNo(skin *p, int no);
int LoadSkinItem(tchar_t *Name, skin* p, int no);
int KeywordToI(tchar_t *token, tchar_t *keyword, int keywordLen);
int LoadSkinImages(skin* p, tchar_t *Path);
bool_t CheckRect(int x, int y, skinitem item);

bool_t CheckRect(int x, int y, skinitem item)
{
	if (x > item.Rect.x && (x < (item.Rect.x + item.Rect.Width)) 
			&& (y > item.Rect.y) && (y < (item.Rect.y + item.Rect.Height))) 
		return 1;
	else 
		return 0;
}
int LoadSkinImages(skin* p, tchar_t *Path)
{
	BITMAP bm;
	tchar_t *temp=tcsstr(SkinInfo,T("bitmap"));
	tchar_t *end=tcsstr(temp,T("/>"));
	tchar_t *keyword;
	tchar_t name[MAX_PATH];
	int len;
	tchar_t line[255], *token;
	if(temp && end)
	{
		len = tcslen(temp)-tcslen(end);
		tcsncpy_s(line, TSIZEOF(line), temp, len);
		line[len]='\0';
		token = tcstok(line, T(" "));
		while(token)
		{
			keyword = T("background=");
			len = tcslen(keyword);
			if (tcsncmp(token, keyword, len)==0)
			{
				tcscpy_s(name, MAX_PATH, Path);
				tcscat_s(name, MAX_PATH, &token[len]);
#ifdef TARGET_WINCE
				p->Bitmap[0].Bitmap = SHLoadDIBitmap(name);			
#else
				p->Bitmap[0].Bitmap = (HBITMAP)LoadImage(NULL, name, IMAGE_BITMAP, 0, 0,
									LR_LOADFROMFILE | LR_CREATEDIBSECTION | LR_DEFAULTSIZE);
#endif
				GetObject(p->Bitmap[0].Bitmap, sizeof(bm), &bm);
				p->Bitmap[0].Height = bm.bmHeight;
				p->Bitmap[0].Width = bm.bmWidth;
			}
			keyword = T("buttons=");
			len = tcslen(keyword);
			if (tcsncmp(token, keyword, len)==0)
			{
				tcscpy_s(name, MAX_PATH, Path);
				tcscat_s(name, MAX_PATH, &token[len]);
#ifdef TARGET_WINCE
				p->Bitmap[1].Bitmap = SHLoadDIBitmap(name);			
#else
				p->Bitmap[1].Bitmap = (HBITMAP)LoadImage(NULL, name, IMAGE_BITMAP, 0, 0,
									LR_LOADFROMFILE | LR_CREATEDIBSECTION | LR_DEFAULTSIZE);
#endif
				GetObject(p->Bitmap[1].Bitmap, sizeof(bm), &bm);
				p->Bitmap[1].Height = bm.bmHeight;
				p->Bitmap[1].Width = bm.bmWidth;
			}
			token = tcstok(NULL, T(" "));
		}//token

	}
	return ERR_NONE;
}
int KeywordToI(tchar_t *token, tchar_t *keyword, int keywordLen)
{
	if (tcsncmp(token, keyword, keywordLen)==0)
		return StringToInt(&token[keywordLen], 0);
	else
		return -1;
}
int LoadSkinItem(tchar_t *Name, skin* p, int no)
{
	tchar_t *temp=tcsstr(SkinInfo,Name);
	if (temp)
	{
		tchar_t *end=tcsstr(temp,T("/>"));
		int rgbtex[3], rgbback[3], digit;
		tchar_t line[255], *token;
		tcsncpy_s(line, TSIZEOF(line), temp, end - temp);
		line[end - temp] = '\0';
		token = tcstok(line, T(" "));
		while (token)
		{
			if ((digit = KeywordToI(token, T("left="), 5))!=-1)
				p->Item[no].Rect.x = digit;
			if ((digit = KeywordToI(token, T("top="), 4))!=-1)
				p->Item[no].Rect.y = digit;
			if ((digit = KeywordToI(token, T("width="), 6))!=-1)
				p->Item[no].Rect.Width = digit;
			if ((digit = KeywordToI(token, T("height="), 7))!=-1)
				p->Item[no].Rect.Height = digit;
			if ((digit = KeywordToI(token, T("pushedtop="), 10))!=-1)
				p->Item[no].PushedPos.y = digit;
			if ((digit = KeywordToI(token, T("pushedleft="), 11))!=-1)
				p->Item[no].PushedPos.x = digit;
			if ((digit = KeywordToI(token, T("textred="), 8))!=-1)
				rgbtex[0] = digit;
			if ((digit = KeywordToI(token, T("textgreen="), 10))!=-1)
				rgbtex[1] = digit;
			if ((digit = KeywordToI(token, T("textblue="), 9))!=-1)
				rgbtex[2] = digit;
			if (no == SKIN_TITLE)
				p->Item[no].ColorText = RGB(rgbtex[0], rgbtex[1], rgbtex[2]);
			if ((digit = KeywordToI(token, T("backred="), 8))!=-1)
				rgbback[0] = digit;
			if ((digit = KeywordToI(token, T("backgreen="), 10))!=-1)
				rgbback[1] = digit;
			if ((digit = KeywordToI(token, T("backblue="), 9))!=-1)
				rgbback[2] = digit;
			if (no == SKIN_TITLE)
				p->Item[no].ColorFace = RGB(rgbback[0], rgbback[1], rgbback[2]);
			token = tcstok(NULL, T(" "));
		}
	}
	return ERR_NONE;
}
void LoadSkinNo(skin *p, int no)
{
	LoadSkinItem(T("play"), &p[no], SKIN_PLAY);
	LoadSkinItem(T("seek"), &p[no], SKIN_SEEK);
	LoadSkinItem(T("viewport"), &p[no], SKIN_VIEWPORT);
	LoadSkinItem(T("stop"), &p[no], SKIN_STOP);
	LoadSkinItem(T("next"), &p[no], SKIN_NEXT);
	LoadSkinItem(T("prev"), &p[no], SKIN_PREV);
	LoadSkinItem(T("ffwd"), &p[no], SKIN_FFWD);
	LoadSkinItem(T("seek_thumb"), &p[no], SKIN_SEEK_THUMB);
	LoadSkinItem(T("volume"), &p[no], SKIN_VOLUME);
	LoadSkinItem(T("volume_thumb"), &p[no], SKIN_VOLUME_THUMB);
	LoadSkinItem(T("rotate"), &p[no], SKIN_ROTATE);
	LoadSkinItem(T("fullscreen"), &p[no], SKIN_FULLSCREEN);
	LoadSkinItem(T("repeat"), &p[no], SKIN_REPEAT);
	LoadSkinItem(T("mute"), &p[no], SKIN_MUTE);
	LoadSkinItem(T("open"), &p[no], SKIN_OPEN);
	LoadSkinItem(T("playlist"), &p[no], SKIN_PLAYLIST);
	LoadSkinItem(T("title"), &p[no], SKIN_TITLE);
	LoadSkinItem(T("exit"), &p[no], SKIN_EXIT);
	LoadSkinItem(T("play_fullscreen"), &p[no], SKIN_PLAY_FULLSCREEN);
	LoadSkinItem(T("shuffle"), &p[no], SKIN_SHUFFLE);
	LoadSkinItem(T("skin0"), &p[no], SKIN_0);
	LoadSkinItem(T("skin1"), &p[no], SKIN_1);
	LoadSkinItem(T("title_color"), &p[no], SKIN_TITLE);
}
int ParseSkinFile(skin* p, void* Wnd, const tchar_t* FileName)
{
	unsigned long nPos;
	tchar_t *temp = FileName;
	tchar_t *next;
	int size;
#ifdef TARGET_WINCE
	LPSTR buf;
#endif
	tchar_t *SkinData;
	HANDLE SkinFile = INVALID_HANDLE_VALUE;
	tchar_t Path[MAX_PATH];
	SkinFile = CreateFile(FileName,GENERIC_READ,FILE_SHARE_READ,
						NULL,OPEN_EXISTING,FILE_ATTRIBUTE_NORMAL,NULL);
	if (SkinFile == INVALID_HANDLE_VALUE)
		return -1;
	else
	{
#if defined(TARGET_WINCE) || defined(UNICODE)
		buf = (LPSTR)malloc(GetFileSize(SkinFile, NULL));
		ReadFile(SkinFile, buf, GetFileSize(SkinFile, NULL), &nPos, NULL);
		size = sizeof(tchar_t) * strlen(buf);
		SkinData = (tchar_t*)malloc(size);
		//size = MultiByteToWideChar(CP_ACP, MB_PRECOMPOSED, buf, strlen(buf), SkinData, size);
		size = mbstowcs(SkinData, buf, size);
		free(buf);
		if (size == 0)
			return -1;

#else
		SkinData = (tchar_t*)malloc(GetFileSize(SkinFile, NULL));
		ReadFile(SkinFile, SkinData, GetFileSize(SkinFile, NULL), &nPos, NULL);
#endif
		while ((next=tcsstr(temp,T("\\"))))
		{
			next++;
			temp=next;
		}
		tcsncpy_s(Path, MAX_PATH, FileName, temp - FileName);
		CloseHandle(SkinFile);
		Path[temp-FileName]=0;
		SkinInfo = tcsstr(SkinData,T("<skin no=0>"));
		if (!SkinInfo)
			return -1;
		LoadSkinNo(p, 0);
		LoadSkinImages(&p[0], Path);
		SkinInfo = tcsstr(SkinData,T("<skin no=1>"));
		if (!SkinInfo)
			return -1;
		LoadSkinNo(p, 1);
		LoadSkinImages(&p[1], Path);
		free(SkinData);
		return ERR_NONE;
	}
}
void* SkinLoad(skin* p,void* Wnd,const tchar_t* Path) 
{
	HDC hdc = GetDC(Wnd);
	int i;
	hdcMem = CreateCompatibleDC(hdc);
	memset(p,0,sizeof(skin)*MAX_SKIN);
	ParseSkinFile(p, Wnd, Path);
	for (i = 0; i < MAX_SKIN; i++)
		if (p[i].Bitmap[0].Bitmap && p[i].Bitmap[1].Bitmap)
			p[i].Valid = 1;
	ReleaseDC(Wnd, hdc);
	return NULL; 
}
void SkinFree(skin* p,void* Db) 
{
	int i = 0;
	for (i; i < MAX_SKIN; i++)
	{
		if (p[i].Valid)
		{
			if (p[i].Bitmap[0].Bitmap)
				DeleteObject(p[i].Bitmap[0].Bitmap);
			if (p[i].Bitmap[1].Bitmap)
				DeleteObject(p[i].Bitmap[1].Bitmap);
		}
	}
	if (p)
	{
		free(p);
	}
	if (hOldBmp)
		DeleteObject(hOldBmp);
	if (hdcMem)
		DeleteDC(hdcMem);
}
void SkinDraw(const skin* p,void* DC,rect* r) {

	if (!p->Hidden)
	{
/*
		
		if (ClearBack)
		{
			BitBlt(DC, 0, r->y, r->Width, r->Height, NULL, 0, 0, BLACKNESS);
			ClearBack = 0;
		}
*/
		hOldBmp = SelectObject(hdcMem, p->Bitmap[0].Bitmap);
		BitBlt(DC, 0, r->y, p->Bitmap[0].Width, p->Bitmap[0].Height, hdcMem, 0, 0, SRCCOPY);

		hOldBmp = SelectObject(hdcMem, p->Bitmap[1].Bitmap);
		BitBlt(DC, p->Item[SKIN_VOLUME_THUMB].Rect.x + ((volumeVal * (p->Item[SKIN_VOLUME].Rect.Width - p->Item[SKIN_VOLUME_THUMB].Rect.Width) ) / 100),
			p->Item[SKIN_VOLUME_THUMB].Rect.y+r->y,
			p->Item[SKIN_VOLUME_THUMB].Rect.Width,
			p->Item[SKIN_VOLUME_THUMB].Rect.Height,
			hdcMem,
			p->Item[SKIN_VOLUME_THUMB].PushedPos.x,
			p->Item[SKIN_VOLUME_THUMB].PushedPos.y,
			SRCCOPY);

		if (p->Item[SKIN_SEEK_THUMB].Pushed)
		{
			hOldBmp = SelectObject(hdcMem, p->Bitmap[1].Bitmap);
			BitBlt(DC, p->Item[SKIN_SEEK_THUMB].Rect.x + seekPos,
				p->Item[SKIN_SEEK_THUMB].Rect.y+r->y,
				p->Item[SKIN_SEEK_THUMB].Rect.Width,
				p->Item[SKIN_SEEK_THUMB].Rect.Height,
				hdcMem,
				p->Item[SKIN_SEEK_THUMB].PushedPos.x,
				p->Item[SKIN_SEEK_THUMB].PushedPos.y,
				SRCCOPY);
		}
		if (p->Item[SKIN_PLAY].Pushed)
		{
			hOldBmp = SelectObject(hdcMem, p->Bitmap[1].Bitmap);
			BitBlt(DC, p->Item[SKIN_PLAY].Rect.x,
				p->Item[SKIN_PLAY].Rect.y+r->y,
				p->Item[SKIN_PLAY].Rect.Width,
				p->Item[SKIN_PLAY].Rect.Height,
				hdcMem,
				p->Item[SKIN_PLAY].PushedPos.x,
				p->Item[SKIN_PLAY].PushedPos.y,
				SRCCOPY);
		}
		if (p->Item[SKIN_MUTE].Pushed)
		{
			hOldBmp = SelectObject(hdcMem, p->Bitmap[1].Bitmap);
			BitBlt(DC, p->Item[SKIN_MUTE].Rect.x,
				p->Item[SKIN_MUTE].Rect.y+r->y,
				p->Item[SKIN_MUTE].Rect.Width,
				p->Item[SKIN_MUTE].Rect.Height,
				hdcMem,
				p->Item[SKIN_MUTE].PushedPos.x,
				p->Item[SKIN_MUTE].PushedPos.y,
				SRCCOPY);
		}
		if (p->Item[SKIN_REPEAT].Pushed)
		{
			hOldBmp = SelectObject(hdcMem, p->Bitmap[1].Bitmap);
			BitBlt(DC, p->Item[SKIN_REPEAT].Rect.x,
				p->Item[SKIN_REPEAT].Rect.y+r->y,
				p->Item[SKIN_REPEAT].Rect.Width,
				p->Item[SKIN_REPEAT].Rect.Height,
				hdcMem,
				p->Item[SKIN_REPEAT].PushedPos.x,
				p->Item[SKIN_REPEAT].PushedPos.y,
				SRCCOPY);
		}
		if (p->Item[SKIN_SHUFFLE].Pushed)
		{
			hOldBmp = SelectObject(hdcMem, p->Bitmap[1].Bitmap);
			BitBlt(DC, p->Item[SKIN_SHUFFLE].Rect.x,
				p->Item[SKIN_SHUFFLE].Rect.y+r->y,
				p->Item[SKIN_SHUFFLE].Rect.Width,
				p->Item[SKIN_SHUFFLE].Rect.Height,
				hdcMem,
				p->Item[SKIN_SHUFFLE].PushedPos.x,
				p->Item[SKIN_SHUFFLE].PushedPos.y,
				SRCCOPY);
		}

		SelectObject(hdcMem, hOldBmp);
		//BitBlt(DC, 0, 0, r->Width, r->Height, hdcBuf, 0, 0, SRCCOPY);
		//DeleteObject(hOldBmp);
		//DeleteObject(hBackBmp);
	}
}
void DrawButton(skin* p, HDC DC, int no, rect* r)
{
	if (p->Item[no].Pushed)
	{
		hOldBmp = (HBITMAP)SelectObject(hdcMem, p->Bitmap[1].Bitmap);
		BitBlt(DC, p->Item[no].Rect.x,
			p->Item[no].Rect.y + r->y,
			p->Item[no].Rect.Width,
			p->Item[no].Rect.Height,
			hdcMem,
			p->Item[no].PushedPos.x,
			p->Item[no].PushedPos.y,
			SRCCOPY);
		SelectObject(hdcMem, hOldBmp);
	}
	else
	{
		hOldBmp = (HBITMAP)SelectObject(hdcMem, p->Bitmap[0].Bitmap);
		BitBlt(DC, p->Item[no].Rect.x,
			p->Item[no].Rect.y + r->y,
			p->Item[no].Rect.Width,
			p->Item[no].Rect.Height,
			hdcMem,
			p->Item[no].Rect.x,
			p->Item[no].Rect.y,
			SRCCOPY);
		SelectObject(hdcMem, hOldBmp);
	}

}
void SkinDrawItem(skin* p,void* Wnd,int n,rect* r) 
{
	if (firstTime)
		return;
	if (!p->Hidden)
	{
		HDC DC = GetDC(Wnd);
		if (n == SKIN_SEEK_THUMB)
		{
			if (p->Item[SKIN_SEEK_THUMB].Pushed)
			{
				hOldBmp = (HBITMAP)SelectObject(hdcMem, p->Bitmap[0].Bitmap);
				BitBlt(DC, p->Item[SKIN_SEEK].Rect.x,
					p->Item[SKIN_SEEK].Rect.y + r->y,
					p->Item[SKIN_SEEK].Rect.Width,
					p->Item[SKIN_SEEK].Rect.Height,
					hdcMem,
					p->Item[SKIN_SEEK].Rect.x,
					p->Item[SKIN_SEEK].Rect.y,
					SRCCOPY);

				hOldBmp = (HBITMAP)SelectObject(hdcMem, p->Bitmap[1].Bitmap);
				BitBlt(DC, p->Item[SKIN_SEEK_THUMB].Rect.x + seekPos,
					p->Item[SKIN_SEEK_THUMB].Rect.y + r->y,
					p->Item[SKIN_SEEK_THUMB].Rect.Width,
					p->Item[SKIN_SEEK_THUMB].Rect.Height,
					hdcMem,
					p->Item[SKIN_SEEK_THUMB].PushedPos.x,
					p->Item[SKIN_SEEK_THUMB].PushedPos.y,
					SRCCOPY);
				SelectObject(hdcMem, hOldBmp);
				/*
				BitBlt(DC, p->Item[SKIN_SEEK].Rect.x,
					p->Item[SKIN_SEEK].Rect.y + r->y,
					p->Item[SKIN_SEEK].Rect.Width,
					p->Item[SKIN_SEEK].Rect.Height,
					hdcBuf,
					p->Item[SKIN_SEEK].Rect.x,
					p->Item[SKIN_SEEK].Rect.y,
					SRCCOPY);
					*/
			}
			else
			{
				hOldBmp = (HBITMAP)SelectObject(hdcMem, p->Bitmap[0].Bitmap);
				BitBlt(DC, p->Item[SKIN_SEEK].Rect.x,
					p->Item[SKIN_SEEK].Rect.y + r->y,
					p->Item[SKIN_SEEK].Rect.Width,
					p->Item[SKIN_SEEK].Rect.Height,
					hdcMem,
					p->Item[SKIN_SEEK].Rect.x,
					p->Item[SKIN_SEEK].Rect.y,
					SRCCOPY);
				SelectObject(hdcMem, hOldBmp);
			}
		}
		else if (n == SKIN_VOLUME_THUMB)
		{
			hOldBmp = (HBITMAP)SelectObject(hdcMem, p->Bitmap[0].Bitmap);
			BitBlt(DC, p->Item[SKIN_VOLUME].Rect.x,
				p->Item[SKIN_VOLUME].Rect.y + r->y,
				p->Item[SKIN_VOLUME].Rect.Width,
				p->Item[SKIN_VOLUME].Rect.Height,
				hdcMem,
				p->Item[SKIN_VOLUME].Rect.x,
				p->Item[SKIN_VOLUME].Rect.y,
				SRCCOPY);

				hOldBmp = (HBITMAP)SelectObject(hdcMem, p->Bitmap[1].Bitmap);
				BitBlt(DC, p->Item[SKIN_VOLUME_THUMB].Rect.x + ((volumeVal * (p->Item[SKIN_VOLUME].Rect.Width - p->Item[SKIN_VOLUME_THUMB].Rect.Width) ) / 100), //volPos - p->Item[SKIN_VOLUME].Rect.Width,
					p->Item[SKIN_VOLUME_THUMB].Rect.y + r->y,
					p->Item[SKIN_VOLUME_THUMB].Rect.Width,
					p->Item[SKIN_VOLUME_THUMB].Rect.Height,
					hdcMem,
					p->Item[SKIN_VOLUME_THUMB].PushedPos.x,
					p->Item[SKIN_VOLUME_THUMB].PushedPos.y,
					SRCCOPY);
				SelectObject(hdcMem, hOldBmp);
				/*
				BitBlt(DC, p->Item[SKIN_VOLUME].Rect.x,
					p->Item[SKIN_VOLUME].Rect.y + r->y,
					p->Item[SKIN_VOLUME].Rect.Width,
					p->Item[SKIN_VOLUME].Rect.Height,
					hdcBuf,
					p->Item[SKIN_VOLUME].Rect.x,
					p->Item[SKIN_VOLUME].Rect.y,
					SRCCOPY);
					*/
		}
		else
		{
			DrawButton(p, DC, n, r);
		}
		ReleaseDC(Wnd, DC);
	}
}
void SkinUpdate(skin* p,player* Player,void* Wnd,rect* r) 
{	
	bool_t check;
	fraction fr;
	int val;
	Player->Get(Player, PLAYER_BACKGROUND, &check, sizeof(check));
	if (check)
	{
		firstTime = 1;
		//ClearBack = 1;
	}

	Player->Get(Player, PLAYER_FULLSCREEN, &check, sizeof(check));
	p->Hidden = check;
	/*
	if (p->Hidden)
		ClearBack = 1;
	*/	
	if (!p->Hidden)
	{
		Player->Get(Player, PLAYER_VOLUME, &volumeVal, sizeof(volumeVal));
		if (oldVolume != volumeVal)
			SkinDrawItem(p, Wnd, SKIN_VOLUME_THUMB, r);
		oldVolume = volumeVal;
		if ( Player->Get(Player, PLAYER_PERCENT, &fr, sizeof(fr)) == ERR_NONE )
			val = Scale(TRACKMAX, fr.Num, fr.Den);
		else 
		{
			val = -1;
			p->Item[SKIN_SEEK_THUMB].Pushed = 0;
			SkinDrawItem(p, Wnd, SKIN_SEEK_THUMB, r);
		}
		if (val != -1)
		{
			p->Item[SKIN_SEEK_THUMB].Pushed = 1;
			seekPos = ((val * (p->Item[SKIN_SEEK].Rect.Width - p->Item[SKIN_SEEK_THUMB].Rect.Width) ) / TRACKMAX);
			if (seekPos > (p->Item[SKIN_SEEK].Rect.Width - p->Item[SKIN_SEEK_THUMB].Rect.Width))
				seekPos = (p->Item[SKIN_SEEK].Rect.Width - p->Item[SKIN_SEEK_THUMB].Rect.Width);
			SkinDrawItem(p, Wnd, SKIN_SEEK_THUMB, r);
		}
		Player->Get(Player, PLAYER_PLAY, &check, sizeof(check));
		p->Item[SKIN_PLAY].Pushed = check;
		Player->Get(Player, PLAYER_SHUFFLE, &check, sizeof(check));
		p->Item[SKIN_SHUFFLE].Pushed = check;
		Player->Get(Player, PLAYER_REPEAT, &check, sizeof(check));
		p->Item[SKIN_REPEAT].Pushed = check;
		Player->Get(Player, PLAYER_MUTE, &check, sizeof(check));
		p->Item[SKIN_MUTE].Pushed = check;
	}
	firstTime = 0;
	//PostMessage(Wnd, WM_PAINT, 0, 0); //for testing purposes
}
int SkinMouse(skin* p,int no,int x,int y,player* Player,int* cmd,void* Wnd,rect* r) 
{ 
	//to do check if we handle all SKIN_ items from skin.h 
	static int action;
	fraction fr;


	if (CheckRect(x, y, p->Item[SKIN_PLAY]))
	{
		if (no == 0)
		{
			p->Item[SKIN_PLAY].Pushed = !p->Item[SKIN_PLAY].Pushed;
			Player->Set(Player,PLAYER_PLAY,&p->Item[SKIN_PLAY].Pushed,sizeof(p->Item[SKIN_PLAY].Pushed));
			SkinDrawItem(p, Wnd, SKIN_PLAY, r);
		}
		return 1;
	}
	if (CheckRect(x, y, p->Item[SKIN_FFWD]))
	{
		if (no == 0)
		{
			p->Item[SKIN_FFWD].Pushed = !p->Item[SKIN_FFWD].Pushed;
			Player->Set(Player, PLAYER_FFWD, &p->Item[SKIN_FFWD].Pushed, sizeof(p->Item[SKIN_FFWD].Pushed));
			SkinDrawItem(p, Wnd, SKIN_FFWD, r);
		}
		return 1;
	}
	if (CheckRect(x, y, p->Item[SKIN_MUTE]))
	{
		if (no == 0)
		{
			p->Item[SKIN_MUTE].Pushed = !p->Item[SKIN_MUTE].Pushed;
			Player->Set(Player,PLAYER_MUTE,&p->Item[SKIN_MUTE].Pushed,sizeof(p->Item[SKIN_MUTE].Pushed));
			SkinDrawItem(p, Wnd, SKIN_MUTE, r);
		}
		return 1;
	}

	if (CheckRect(x, y, p->Item[SKIN_REPEAT]))
	{
		if (no == 0)
		{
			p->Item[SKIN_REPEAT].Pushed = !p->Item[SKIN_REPEAT].Pushed;
			Player->Set(Player,PLAYER_REPEAT,&p->Item[SKIN_REPEAT].Pushed,sizeof(p->Item[SKIN_REPEAT].Pushed));
			SkinDrawItem(p, Wnd, SKIN_REPEAT, r);
		}
		return 1;
	}

	if (CheckRect(x, y, p->Item[SKIN_SHUFFLE]))
	{
		if (no == 0)
		{
			p->Item[SKIN_SHUFFLE].Pushed = !p->Item[SKIN_SHUFFLE].Pushed;
			Player->Set(Player,PLAYER_SHUFFLE,&p->Item[SKIN_SHUFFLE].Pushed,sizeof(p->Item[SKIN_SHUFFLE].Pushed));
			SkinDrawItem(p, Wnd, SKIN_SHUFFLE, r);
		}
		return 1;
	}

	if (CheckRect(x, y, p->Item[SKIN_VIEWPORT]))
	{

		if (no == 0)
			PostMessage(Wnd, WM_COMMAND, IF_PLAY_FULLSCREEN, 0);
	}


	if (msg == WM_LBUTTONDOWN)
	{
		if (CheckRect(x, y, p->Item[SKIN_VOLUME]))
		{
			action = SKIN_VOLUME;
		}
		if (CheckRect(x, y, p->Item[SKIN_SEEK]))
		{
			action = SKIN_SEEK;
		}
		if (CheckRect(x, y, p->Item[SKIN_NEXT]))
		{
			action = SKIN_NEXT;
			p->Item[action].Pushed = 1;
			SkinDrawItem(p, Wnd, action, r);
			return 1;
		}
		if (CheckRect(x, y, p->Item[SKIN_STOP]))
		{
			action = SKIN_STOP;
			p->Item[action].Pushed = 1;
			SkinDrawItem(p, Wnd, action, r);
			return 1;
		}
		if (CheckRect(x, y, p->Item[SKIN_PREV]))
		{
			action = SKIN_PREV;
			p->Item[action].Pushed = 1;
			SkinDrawItem(p, Wnd, action, r);
			return 1;
		}
		if (CheckRect(x, y, p->Item[SKIN_OPEN]))
		{
			action = SKIN_OPEN;
			p->Item[action].Pushed = 1;
			SkinDrawItem(p, Wnd, action, r);
			return 1;
		}
		if (CheckRect(x, y, p->Item[SKIN_PLAYLIST]))
		{
			action = SKIN_PLAYLIST;
			p->Item[action].Pushed = 1;
			SkinDrawItem(p, Wnd, action, r);
			return 1;
		}
		if (CheckRect(x, y, p->Item[SKIN_ROTATE]))
		{
			action = SKIN_ROTATE;
			p->Item[action].Pushed = 1;
			SkinDrawItem(p, Wnd, action, r);
			return 1;
		}
		if (CheckRect(x, y, p->Item[SKIN_EXIT]))
		{
			action = SKIN_EXIT;
			p->Item[action].Pushed = 1;
			SkinDrawItem(p, Wnd, action, r);
			return 1;
		}
	}
	if (msg == WM_LBUTTONUP)
	{
		switch(action)
		{
		case SKIN_NEXT:
			if (CheckRect(x, y, p->Item[action]))
				Player->Set(Player, PLAYER_NEXT, NULL, 0);
			p->Item[action].Pushed = 0;
			SkinDrawItem(p, Wnd, action, r);
			break;
		case SKIN_PREV:
			if (CheckRect(x, y, p->Item[action]))
				Player->Set(Player, PLAYER_PREV, NULL, 0);
			p->Item[action].Pushed = 0;
			SkinDrawItem(p, Wnd, action, r);
			break;
		case SKIN_OPEN:
			if (CheckRect(x, y, p->Item[action]))
				PostMessage(Wnd, WM_COMMAND, IF_FILE_OPENFILE, 0);
			p->Item[action].Pushed = 0;
			SkinDrawItem(p, Wnd, action, r);
			break;
		case SKIN_PLAYLIST:
			if (CheckRect(x, y, p->Item[action]))
				PostMessage(Wnd, WM_COMMAND, IF_FILE_PLAYLIST, 0);
			p->Item[action].Pushed = 0;
			SkinDrawItem(p, Wnd, action, r);
			break;
		case SKIN_ROTATE:
			if (CheckRect(x, y, p->Item[action]))
				PostMessage(Wnd, WM_COMMAND, IF_OPTIONS_ROTATE, 0);
			p->Item[action].Pushed = 0;
			SkinDrawItem(p, Wnd, action, r);
			break;
		case SKIN_EXIT:
			if (CheckRect(x, y, p->Item[action]))
				PostMessage(Wnd, WM_COMMAND, IF_FILE_EXIT, 0);
			p->Item[action].Pushed = 0;
			SkinDrawItem(p, Wnd, action, r);
			break;
		case SKIN_STOP:
			if (CheckRect(x, y, p->Item[action]))
			{

				Player->Set(Player,PLAYER_STOP,NULL,0);
				fr.Num = 0;
				fr.Den = 1;
				Player->Set(Player,PLAYER_PERCENT,&fr,sizeof(fr));
			}
			p->Item[action].Pushed = 0;
			SkinDrawItem(p, Wnd, action, r);
			break;
		}
		action = 0;
	}
	if (action == SKIN_VOLUME)
	{
		int left;
		int right;
		int Adj;
		left = p->Item[SKIN_VOLUME].Rect.x;
		right = p->Item[SKIN_VOLUME].Rect.Width + left;
		Adj = p->Item[SKIN_VOLUME_THUMB].Rect.Width >> 1;
		left += Adj;
		right -= p->Item[SKIN_VOLUME_THUMB].Rect.Width - Adj;
		if (x > 32768) x -= 65536;
		if (right <= left) right = left+1;
		if (x < left) x = left;
		if (x > right) x = right;
		volumeVal = (100*(x-left))/(right-left);
		if (oldVolume == volumeVal)
			return 1;
		oldVolume = volumeVal;
		Player->Set(Player, PLAYER_VOLUME, &volumeVal, sizeof(volumeVal));
		SkinDrawItem(p, Wnd, SKIN_VOLUME_THUMB, r);
		return 1;
	}
	if (action == SKIN_SEEK)
	{
		//fraction fr;
		int left;
		int right;
		int Adj;
		//if (!p->Item[SKIN_SEEK_THUMB].Pushed)
		//	return 0;
		if (oldSeekPos == x)
			return SKIN_SEEK;
		oldSeekPos = x;
		left = p->Item[SKIN_SEEK].Rect.x;
		right = p->Item[SKIN_SEEK].Rect.Width + left;
		Adj = p->Item[SKIN_SEEK_THUMB].Rect.Width >> 1;
		left += Adj;
		right -= p->Item[SKIN_SEEK_THUMB].Rect.Width - Adj;
		if (x > 32768) x -= 65536;
		if (right <= left) right = left+1;
		if (x < left) x = left;
		if (x > right) x = right;
		x = Scale(TRACKMAX, x - left, right - left);
		fr.Num = x;
		fr.Den = TRACKMAX;
		Player->Set(Player, PLAYER_PERCENT, &fr, sizeof(fr));
		seekPos = ((x * (p->Item[SKIN_SEEK].Rect.Width - p->Item[SKIN_SEEK_THUMB].Rect.Width) ) / TRACKMAX);
		if (seekPos > (p->Item[SKIN_SEEK].Rect.Width - p->Item[SKIN_SEEK_THUMB].Rect.Width))
			seekPos = (p->Item[SKIN_SEEK].Rect.Width - p->Item[SKIN_SEEK_THUMB].Rect.Width);
		SkinDrawItem(p, Wnd, SKIN_SEEK_THUMB, r);
		//SkinUpdate(p, Player, Wnd, r); 
		return SKIN_SEEK;
	}
	return 0; 
}
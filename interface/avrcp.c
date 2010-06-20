/*****************************************************************************
*
* AVRCP Control by xiaojin1985 2009
*
****************************************************************************/
#if defined(CONFIG_AVRCP)
#include "../common/common.h"
#include "win.h"
#include "avrcp.h"
#include <Windows.h>

static const datatable Params[] =
{
	{ AVRCP_ENABLE,	TYPE_BOOL, DF_SETUP|DF_CHECKLIST },
	{ A2DP_TOGGLE,	TYPE_BOOL, DF_SETUP|DF_CHECKLIST },
	{ AVRCP_OFFSCREEN,	TYPE_BOOL, DF_SETUP|DF_CHECKLIST },
	{ AVRCP_LOCK_KEYPAD,	TYPE_BOOL, DF_SETUP|DF_CHECKLIST },
	{ AVRCP_PLAY,	TYPE_HOTKEY, DF_SETUP },
	{ AVRCP_PAUSE,	TYPE_HOTKEY, DF_SETUP },
	{ AVRCP_STOP,	TYPE_HOTKEY, DF_SETUP },
	{ AVRCP_PREV,	TYPE_HOTKEY, DF_SETUP },
	{ AVRCP_NEXT,	TYPE_HOTKEY, DF_SETUP },
	{ AVRCP_BACKWARD,	TYPE_HOTKEY, DF_SETUP },
	{ AVRCP_FORWARD,	TYPE_HOTKEY, DF_SETUP },

	DATATABLE_END(AVRCP_ID)
};

int A2DPSettingChanged = 0;

void SetDefaultAvrcpInfo(avrcp* p){
	//0x44 & 0xC4 = Pause
	//0x46 & 0xC6 = Play
	//0x4B & 0xCB = Next
	//0x4C & 0xCC = Prev
	p->AvrcpEnable = 0;
	p->A2DPToggle = 0;
	p->AutoOffScreen = 0;
	p->Lock_Keypad = 0;
	p->PlayCmd =  0xc4;
	p->PauseCmd = 0xc6;
	p->StopCmd = 0;
	p->PrevCmd =  0xcc;
	p->NextCmd =  0xcb;
	p->BackwardCmd = 0;
	p->ForwardCmd = 0;
}

static int Get(avrcp* p, int No, void* Data, int Size)
{
	int Result = ERR_INVALID_PARAM;
	switch (No)
	{
	case AVRCP_ENABLE: GETVALUE(p->AvrcpEnable,bool_t); break;
	case A2DP_TOGGLE: GETVALUE(p->A2DPToggle,bool_t); break;
	case AVRCP_OFFSCREEN: GETVALUE(p->AutoOffScreen,bool_t); break;
	case AVRCP_LOCK_KEYPAD: GETVALUE(p->Lock_Keypad,bool_t); break;
	case AVRCP_PLAY: GETVALUE(p->PlayCmd,bool_t); break;
	case AVRCP_PAUSE: GETVALUE(p->PauseCmd,bool_t); break;
	case AVRCP_STOP: GETVALUE(p->StopCmd,bool_t); break;
	case AVRCP_PREV: GETVALUE(p->PrevCmd,bool_t); break;
	case AVRCP_NEXT: GETVALUE(p->NextCmd,bool_t); break;
	case AVRCP_BACKWARD: GETVALUE(p->BackwardCmd,bool_t); break;
	case AVRCP_FORWARD: GETVALUE(p->ForwardCmd,bool_t); break;
	}
	return Result;
}

static int Set(avrcp* p, int No, const void* Data, int Size)
{
	int Result = ERR_INVALID_PARAM;
	switch (No)
	{
	case AVRCP_ENABLE: SETVALUE(p->AvrcpEnable,bool_t,ERR_NONE); break;
	case A2DP_TOGGLE: SETVALUE(p->A2DPToggle,bool_t,ERR_NONE); break;
	case AVRCP_OFFSCREEN: SETVALUE(p->AutoOffScreen,bool_t,ERR_NONE); break;
	case AVRCP_LOCK_KEYPAD: SETVALUE(p->Lock_Keypad,bool_t,ERR_NONE); break;
	case AVRCP_PLAY: SETVALUE(p->PlayCmd,UINT,ERR_NONE); break;
	case AVRCP_PAUSE: SETVALUE(p->PauseCmd,UINT,ERR_NONE); break;
	case AVRCP_STOP: SETVALUE(p->StopCmd,UINT,ERR_NONE); break;
	case AVRCP_PREV: SETVALUE(p->PrevCmd,UINT,ERR_NONE); break;
	case AVRCP_NEXT: SETVALUE(p->NextCmd,UINT,ERR_NONE); break;
	case AVRCP_BACKWARD: SETVALUE(p->BackwardCmd,UINT,ERR_NONE); break;
	case AVRCP_FORWARD: SETVALUE(p->ForwardCmd,UINT,ERR_NONE); break;
	}
	return Result;
}

static int Enum(avrcp* p, int* No, datadef* Param)
{
	return NodeEnumTable(No,Param,Params);
}

static int Done(avrcp* p)
{
	NodeRegSave(&p->Win.Node);
	if(p->AvrcpEnable){
		AvrcpConfMode(0);
		if(!IsAvrcpThreadRunning()) ThreadCreate(AvrcpMsgProcess,p,1);
	}else{
		CloseAvrcpMsgQueue();
	}
	if((p->A2DPToggle) && A2DPSettingChanged!=2){
		ToggleA2DP();
		MessageBox(p->Win.Wnd,LangStr(AVRCP_ID,A2DP_TOGGLE_NOTIFY),T("A2DP"),MB_OK|MB_SETFOREGROUND|MB_TOPMOST);
	}
	return ERR_NONE;
}

static int Init(avrcp* p)
{
	datadef DataDef;
	int No,i;
	winunit y = 2;
	tchar_t Data[MAXDATA/sizeof(tchar_t)];
	NodeRegLoad(&p->Win.Node);
	if(p->A2DPToggle==0) A2DPSettingChanged=0; else A2DPSettingChanged=2;
	//if((p->PlayCmd==0)||(p->PauseCmd==0)) SetDefaultAvrcpInfo(p);
	p->Win.LabelWidth = 80;
	WinLabel(&p->Win,&y,-1,-1,T("AVRCP Control 0.6 Alpha"),PROPSIZE,LABEL_BOLD|LABEL_CENTER,NULL);
	y += 3;
	WinLabel(&p->Win,&y,-1,-1,LangStr(AVRCP_ID,AVRCP_NOTICE),PROPSIZE,0,NULL);
	y += 3;
	for (No=0;NodeEnum(&p->Win.Node,No,&DataDef)==ERR_NONE;++No)
		if ((DataDef.Flags & DF_SETUP) && !(DataDef.Flags & DF_HIDDEN))
		{
			y += 2;
			if (!(DataDef.Flags & DF_RDONLY))
				WinPropValue(&p->Win,&y,&p->Win.Node,DataDef.No);
			else
				if (p->Win.Node.Get(&p->Win.Node,DataDef.No,Data,DataDef.Size)==ERR_NONE)
				{
					switch (DataDef.Type)
					{
					case TYPE_LABEL:
						WinLabel(&p->Win,&y,-1,-1,DataDef.Name,PROPSIZE,0,NULL);
						break;

					case TYPE_TICK:
						TickToString(Data,TSIZEOF(Data),*(tick_t*)Data,0,1,0);
						WinPropLabel(&p->Win,&y,DataDef.Name,Data);
						break;

					case TYPE_INT:
						i = *(int*)Data;

						if (DataDef.Flags & DF_ENUMCLASS)
							tcscpy_s(Data,TSIZEOF(Data),LangStr(i,NODE_NAME));
						else
							if (DataDef.Flags & DF_ENUMSTRING)
								tcscpy_s(Data,TSIZEOF(Data),LangStr(DataDef.Format1,i));
							else
								Data[0] = 0;

						if (!Data[0])
							IntToString(Data,TSIZEOF(Data),i,(DataDef.Flags & DF_HEX)!=0);
						WinPropLabel(&p->Win,&y,DataDef.Name,Data);
						break;

					case TYPE_STRING:
						WinPropLabel(&p->Win,&y,DataDef.Name,Data);
						break;

					case TYPE_HOTKEY:
						HotKeyToString(Data,TSIZEOF(Data),*(int*)Data);
						WinPropLabel(&p->Win,&y,DataDef.Name,Data);
						break;

					case TYPE_BOOL:
						WinPropLabel(&p->Win,&y,DataDef.Name,
							LangStr(PLATFORM_ID,*(bool_t*)Data ? PLATFORM_YES:PLATFORM_NO));
						break;

					default:
						WinPropLabel(&p->Win,&y,DataDef.Name,NULL);
						break;
					}
				}
		}
		return ERR_NONE;
}

static const menudef MenuDef[] =
{
	{ 0,PLATFORM_ID, PLATFORM_DONE },

	MENUDEF_END
};

WINCREATE(AVRCPSetting)

static int Create(avrcp* p)
{
	AVRCPSettingCreate(&p->Win);
	p->Win.WinHeight = 240;
	p->Win.Flags |= WIN_DIALOG;
	p->Win.MenuDef = MenuDef;
	p->Win.Node.Enum = (nodeenum)Enum;
	p->Win.Node.Get = (nodeget)Get;
	p->Win.Node.Set = (nodeset)Set;
	p->Win.Init = (nodefunc)Init;
	p->Win.Done = (nodefunc)Done;
	return ERR_NONE;
}

static const nodedef AVRCPSetting =
{
	sizeof(avrcp)|CF_SETTINGS,
	AVRCP_ID,
	WIN_CLASS,
	PRI_DEFAULT,
	(nodecreate)Create
};

void AVRCP_Init()
{
	NodeRegisterClass(&AVRCPSetting);
}

void AVRCP_Done()
{
	NodeUnRegisterClass(AVRCP_ID);
}
#endif
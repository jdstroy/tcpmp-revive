/*****************************************************************************
*
* AVRCP Control by xiaojin1985 2009
*
****************************************************************************/
#if !defined(CONFIG_AVRCP)
#define __AVRCP_H
#endif
#ifndef __AVRCP_H
#define __AVRCP_H

void AVRCP_Init();
void AVRCP_Done();

#define AVRCP_ID			FOURCC('A','V','R','P')
#define AVRCP_MSG_SZ		TEXT("Avrcp10MsgQ")
#define AVRCP_NOTICE		0x100
#define AVRCP_ENABLE		0x101
#define AVRCP_PLAY			0x102
#define AVRCP_PAUSE			0x103
#define AVRCP_STOP			0x112
#define AVRCP_PREV			0x104
#define AVRCP_NEXT			0x105
#define AVRCP_BACKWARD		0x106
#define AVRCP_FORWARD		0x107
#define AVRCP_OFFSCREEN		0x108
#define AVRCP_LOCK_KEYPAD	0x111
#define A2DP_TOGGLE         0x109
#define A2DP_TOGGLE_NOTIFY  0x110

typedef struct avrcp 
{
	win   Win;
	int	  AvrcpEnable;
	int	  A2DPToggle;
	int	  AutoOffScreen;
	int   Lock_Keypad;
	unsigned int PlayCmd;
	unsigned int PauseCmd;
	unsigned int StopCmd;
	unsigned int PrevCmd;
	unsigned int NextCmd;
	unsigned int BackwardCmd;
	unsigned int ForwardCmd;
} avrcp;

#endif
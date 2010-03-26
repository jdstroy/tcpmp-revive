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
 * $Id: subtitle.h $
 *
 ****************************************************************************/

#ifndef __OVERLAY_SUBTITLE_H
#define __OVERLAY_SUBTITLE_H

#include "../common.h"

#define SUBS_TYPE_UNK		0x00
#define SUBS_TYPE_SMI		0x01
#define SUBS_TYPE_ASS		0x02
#define SUBS_TYPE_SSA		0x03
#define SUBS_TYPE_SRT		0x04
#define SUBS_TYPE_SUB		0x05
#define SUBT_ID				FOURCC('S','U','B','T')

#define SUBT_FONTNAME		0x10
#define SUBT_HIRESFONTSIZE	0x11
#define SUBT_LOWRESFONTSIZE	0x12
#define SUBT_LOWRESBOUNDARY	0x13
#define SUBT_SPEED			0x14
#define SUBT_TYPE			0x15
#define SUBT_ENABLED		0x16
#define SUBT_FONTBOLD		0x17
#define SUBT_OLDSTYLE		0x18
#define SUBT_FPS			0x19
#define SUBT_NOHIDE			0x1A
#define SUBT_FONTCOLOR		0x1B

#define SUBT_TOPALIGN		0x20
#define SUBT_MARGINH		0x21
#define SUBT_MARGINV		0x22

#define SUBT_PREV_SUB		0x47
#define SUBT_NEXT_SUB		0x48
#define SUBT_STREAM_ID		0x49
#define SUBT_STREAM			0x50

#define SUBTITLE_GDI		0x01
#define SUBTITLE_GAPI		0x02
#define SUBTITLE_ATI3200	0x04
#define SUBTITLE_INTEL2700G	0x08

#define MAXSUBFILES			8

extern void SubTitle_Init();
extern void SubTitle_Done();

DLLEXPORT void	SubtitleLoad		(void* p);
DLLEXPORT int	GetSubtitlePos		(void* p, unsigned int curtime);
DLLEXPORT int	DrawSubtitle		(void* p, overlay *over, int type, int pitch);
DLLEXPORT void	BlitSubtitle		(void* p, short* dest);
DLLEXPORT void	RedrawSubtitle		(void* p);
DLLEXPORT void	SetSubsSpeed			(void* p,int val);

#endif

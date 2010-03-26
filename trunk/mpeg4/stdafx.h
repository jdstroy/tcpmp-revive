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
 * $Id: stdafx.h 175 2005-01-08 03:10:07Z picard $
 *
 * The Core Pocket Media Player
 * Copyright (c) 2004-2005 Gabor Kovacs
 *
 ****************************************************************************/

#ifndef __STDAFX_H_MPEG4
#define __STDAFX_H_MPEG4

#include "../common/common.h"

#if defined(MPEG4_EXPORTS)
#define MPEG4
#if !defined(MIPS)
	#define MSMPEG4
#endif
#endif

#if defined(MSMPEG4_EXPORTS)
#if defined(MIPS)
	#define MSMPEG4
#endif
#endif

#include "mpeg4.h"

// maximun picture size in macroblocks (16x16)
// example MB_X2=6 -> 2^6=64 macroblocks -> 1024 pixels

#define MB_X2	6
#define MB_Y2	6
#define MB_X	(1<<MB_X2)
#define MB_Y	(1<<MB_Y2)

#define MAX_VLC 20000

#define DC_LUM_MASK	((MB_X*2)*4-1)
#define DC_CHR_MASK (MB_X*2-1)

// mpeg4 include files

#include "mp4_decode.h"
#include "mp4_header.h"
#include "mp4_mv.h"
#include "mp4_stream.h"
#include "mp4_mblock.h"
#include "mp4_vld.h"
#include "divx3_vlc.h"

#include "../common/softidct/softidct.h"

#endif

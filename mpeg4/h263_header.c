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
 * $Id: divx3_vlc.c 131 2004-12-04 20:36:04Z picard $
 *
 * The Core Pocket Media Player
 * Copyright (c) 2004-2005 Gabor Kovacs
 *
 ****************************************************************************/
 
#include "stdafx.h"

#ifdef MPEG4

int gethdr_h263( mp4_decode *dec )
{
	int code;

	bytealign(dec);
	loadbits(dec);

    code = getbits(dec,22-8);
	while (!eofbits(dec))
	{
		loadbits(dec);
		code = ((code << 8) + getbits(dec,8)) & 0x3FFFFF;
		if (code == 32)
			break;
	}

	if (code != 32)
		return 0;

    flushbits(dec,8); // picture timestamp

	loadbits(dec);
	if (!getbits1(dec)) // marker
		return 0;
	if (getbits1(dec)) // h263 id
		return 0;

	flushbits(dec,3);

	code = getbits(dec,3); // format

	if (code == 6 || code == 7)
	{
		if (dec->showerror)
		{
			dec->showerror = 0;
			ShowError(dec->Codec.Node.Class,MPEG4_ID,MPEG4_ERROR_H263);
		}
		//todo: finish
		return 0;
	}
	else
	{
		static const int size[8][2] = {
			{ 0,0 },
			{ 128,96 },
			{ 176,144 },
			{ 352,288 },
			{ 704,576 },
			{ 1408,1152 }};

		int width = size[code][0];
        int height = size[code][1];
		if (!dec->ignoresize && (!width || CodecIDCTSetFormat(&dec->Codec,PF_YUV420,
			dec->Codec.In.Format.Format.Video.Width,dec->Codec.In.Format.Format.Video.Height,width,height,dec->Codec.In.Format.Format.Video.Aspect) != ERR_NONE))
		{
			dec->validvol = 0;
			return 0;
		}
       
		loadbits(dec);
        dec->prediction_type = getbits(dec,1);
		dec->long_vectors = (char)getbits(dec,1);

		if (getbits1(dec)) // sac not supported
			return 0;

		getbits(dec,1); // obmc
        
		if (getbits1(dec)) // pb frame not supported
			return 0;

		dec->quantizer = getbits(dec,5);
		flushbits(dec,1);

		dec->rounding = 0;
	}

    while (getbits1(dec)) // pei
	{
        flushbits(dec,8);
		loadbits(dec);
    }

	dec->fcode_for = 1;
	dec->validvol = 1;
	dec->Codec.IDCT.Ptr->Set(dec->Codec.IDCT.Ptr,IDCT_ROUNDING,&dec->rounding,sizeof(bool_t));
	return 1;
}

int gethdr_intel_h263( mp4_decode *dec )
{
	if (dec->showerror)
	{
		dec->showerror = 0;
		ShowError(dec->Codec.Node.Class,MPEG4_ID,MPEG4_ERROR_H263);
	}
	//todo: finish
	return 0;
}
int gethdr_flv_h263( mp4_decode *dec )
{
	int code;
	int width, height;
	bytealign(dec);
	loadbits(dec);
    code = getbits(dec,17);
	while (!eofbits(dec))
	{
		loadbits(dec);
		code = ((code << 5) + getbits(dec,5)) & 0x3FFFFF;
		if (code == 33)
			break;
	}

	if (code != 33)
		return 0;
	loadbits(dec);
	dec->picture_type = code & 0x1F;
	dec->picture_number = getbits(dec,8);
	dec->picture_code_type = getbits(dec,3); // format
	dec->isFLV = dec->picture_code_type + 1;
	switch (dec->picture_code_type)
	{
	case 0:
		loadbits(dec);
		width = getbits(dec,8);
		height = getbits(dec,8);
		break;
	case 1:
		loadbits(dec);
		width = getbits(dec,16);
		height = getbits(dec,16);
		break;
	case 2:
		width = 352;
		height = 288;
		break;
	case 3:
		width = 176;
		height = 144;
		break;
	case 4:
		width = 128;
		height = 96;
		break;
	case 5:
		width = 320;
		height = 240;
		break;
	case 6:
		width = 160;
		height = 120;
		break;
	default:
		width = 0;
		height = 0;
		break;
	}
	if (!dec->Codec.In.Format.Format.Video.Width)
		dec->Codec.In.Format.Format.Video.Width = width;
	if (!dec->Codec.In.Format.Format.Video.Height)
		dec->Codec.In.Format.Format.Video.Height = height;
	if (!dec->ignoresize && (!width || CodecIDCTSetFormat(&dec->Codec,PF_YUV420,
			dec->Codec.In.Format.Format.Video.Width,dec->Codec.In.Format.Format.Video.Height,width,height,dec->Codec.In.Format.Format.Video.Aspect) != ERR_NONE))
	{
		dec->validvol = 0;
		return 0;
	}

	loadbits(dec);
	dec->prediction_type = getbits(dec,2);
	flushbits(dec,1);
	dec->quantizer = getbits(dec,5);
	dec->rounding = 0;

    while (getbits1(dec)) // pei
	{
        flushbits(dec,8);
		loadbits(dec);
    }

	dec->fcode_for = 1;
	dec->validvol = 1;
	dec->Codec.IDCT.Ptr->Set(dec->Codec.IDCT.Ptr,IDCT_ROUNDING,&dec->rounding,sizeof(bool_t));

	return 1;
}

#endif

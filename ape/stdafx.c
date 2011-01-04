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

int DLLRegister(int Version)
{
	if (Version != CONTEXT_VERSION) 
		return ERR_NOT_COMPATIBLE;
	APE_Init();
	return ERR_NONE;
}

void DLLUnRegister()
{
	APE_Done();
}

//void DLLTest() {} 


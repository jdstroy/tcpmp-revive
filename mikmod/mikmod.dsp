# Microsoft Developer Studio Project File - Name="mikmod" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

CFG=mikmod - Win32 Release
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "mikmod.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "mikmod.mak" CFG="mikmod - Win32 Release"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "mikmod - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "mikmod - Pocket PC 2003 (ARMV4) Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "mikmod - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "mikmod - Pocket PC 2003 (ARMV4) Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "mikmod - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "..\$(PlatformName)\$(ConfigurationName)"
# PROP BASE Intermediate_Dir "$(PlatformName)\$(ConfigurationName)"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "..\$(PlatformName)\$(ConfigurationName)"
# PROP Intermediate_Dir "$(PlatformName)\$(ConfigurationName)"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MD /I "libmikmod/include" /Z7 /O2 /Ob1 /D "NDEBUG" /D "_USRDLL" /D "MIKMOD_EXPORTS" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /GF /Gy /Fp".\Release/mikmod.pch" /Fo".\Release/" /Fd".\Release/" /c /GX 
# ADD CPP /nologo /MD /I "libmikmod/include" /Z7 /O2 /Ob1 /D "NDEBUG" /D "_USRDLL" /D "MIKMOD_EXPORTS" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /GF /Gy /Fp".\Release/mikmod.pch" /Fo".\Release/" /Fd".\Release/" /c /GX 
# ADD BASE MTL /nologo /D"NDEBUG" /mktyplib203 /tlb".\Release\mikmod.tlb" /win32 
# ADD MTL /nologo /D"NDEBUG" /mktyplib203 /tlb".\Release\mikmod.tlb" /win32 
# ADD BASE RSC /l 1038 /d "NDEBUG" 
# ADD RSC /l 1038 /d "NDEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo /o ".\Release\mikmod.bsc" 
# ADD BSC32 /nologo /o ".\Release\mikmod.bsc" 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /out:"..\$(PlatformName)\$(ConfigurationName)\mikmod.plg" /incremental:no /pdb:".\Release\mikmod.pdb" /pdbtype:sept /map:".\Release\mikmod.map" /subsystem:windows /implib:".\Release/mikmod.lib" /machine:ix86 
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /out:"..\$(PlatformName)\$(ConfigurationName)\mikmod.plg" /incremental:no /pdb:".\Release\mikmod.pdb" /pdbtype:sept /map:".\Release\mikmod.map" /subsystem:windows /implib:".\Release/mikmod.lib" /machine:ix86 

!ELSEIF  "$(CFG)" == "mikmod - Pocket PC 2003 (ARMV4) Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "..\$(PlatformName)\$(ConfigurationName)"
# PROP BASE Intermediate_Dir "$(PlatformName)\$(ConfigurationName)"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "..\$(PlatformName)\$(ConfigurationName)"
# PROP Intermediate_Dir "$(PlatformName)\$(ConfigurationName)"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /I "libmikmod/include" /Zi /W3 /O2 /Os /D "_WIN32_WCE=$(CEVER)" /D "UNDER_CE" /D "$(PLATFORMDEFINES)" /D "WINCE" /D "NDEBUG" /D "MIKMOD_EXPORTS" /D "$(ARCHFAM)" /D "$(_ARCHFAM_)" /D "STANDARDSHELL_UI_MODELNDEBUG" /D "strdup=_strdup" /D "_UNICODE" /c /GX 
# ADD CPP /nologo /I "libmikmod/include" /Zi /W3 /O2 /Os /D "_WIN32_WCE=$(CEVER)" /D "UNDER_CE" /D "$(PLATFORMDEFINES)" /D "WINCE" /D "NDEBUG" /D "MIKMOD_EXPORTS" /D "$(ARCHFAM)" /D "$(_ARCHFAM_)" /D "STANDARDSHELL_UI_MODELNDEBUG" /D "strdup=_strdup" /D "_UNICODE" /c /GX 
# ADD BASE MTL /nologo /D"_WIN32_WCE=$(CEVER)" /D"UNDER_CE" /D"$(PLATFORMDEFINES)" /D"WINCE" /D"DEBUG" /D"$(ARCHFAM)" /D"$(_ARCHFAM_)" /D"STANDARDSHELL_UI_MODELNDEBUG" /win32 
# ADD MTL /nologo /D"_WIN32_WCE=$(CEVER)" /D"UNDER_CE" /D"$(PLATFORMDEFINES)" /D"WINCE" /D"DEBUG" /D"$(ARCHFAM)" /D"$(_ARCHFAM_)" /D"STANDARDSHELL_UI_MODELNDEBUG" /win32 
# ADD BASE RSC /l 1033 /d "_WIN32_WCE=$(CEVER)" /d "UNDER_CE" /d "$(PLATFORMDEFINES)" /d "WINCE" /d "DEBUG" /d "$(ARCHFAM)" /d "$(_ARCHFAM_)" /d "STANDARDSHELL_UI_MODELNDEBUG" 
# ADD RSC /l 1033 /d "_WIN32_WCE=$(CEVER)" /d "UNDER_CE" /d "$(PLATFORMDEFINES)" /d "WINCE" /d "DEBUG" /d "$(ARCHFAM)" /d "$(_ARCHFAM_)" /d "STANDARDSHELL_UI_MODELNDEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo 
# ADD BSC32 /nologo 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib commctrl.lib coredll.lib MSVCRT.LIB /nologo /dll /out:"..\$(PlatformName)\$(ConfigurationName)\$(ProjectName).plg" /incremental:no /nodefaultlib:"/NODEFAULTLIB:"oldnames.lib"" /debug /pdbtype:sept /subsystem:windows /stack:65536,4096 /opt:ref /opt:icf /subsystem:windowsce,$(CEVER) /machine:$(ARCHFAM)
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib commctrl.lib coredll.lib MSVCRT.LIB /nologo /dll /out:"..\$(PlatformName)\$(ConfigurationName)\$(ProjectName).plg" /incremental:no /nodefaultlib:"/NODEFAULTLIB:"oldnames.lib"" /debug /pdbtype:sept /subsystem:windows /stack:65536,4096 /opt:ref /opt:icf /subsystem:windowsce,$(CEVER) /machine:$(ARCHFAM)

!ELSEIF  "$(CFG)" == "mikmod - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir ".\Debug"
# PROP BASE Intermediate_Dir ".\Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir ".\Debug"
# PROP Intermediate_Dir ".\Debug"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MDd /I "libmikmod/include" /ZI /Od /D "_DEBUG" /D "_USRDLL" /D "MIKMOD_EXPORTS" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /Gm /Fp".\Debug/mikmod.pch" /Fo".\Debug/" /Fd".\Debug/" /GZ /c /GX 
# ADD CPP /nologo /MDd /I "libmikmod/include" /ZI /Od /D "_DEBUG" /D "_USRDLL" /D "MIKMOD_EXPORTS" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /Gm /Fp".\Debug/mikmod.pch" /Fo".\Debug/" /Fd".\Debug/" /GZ /c /GX 
# ADD BASE MTL /nologo /D"_DEBUG" /mktyplib203 /tlb".\Debug\mikmod.tlb" /win32 
# ADD MTL /nologo /D"_DEBUG" /mktyplib203 /tlb".\Debug\mikmod.tlb" /win32 
# ADD BASE RSC /l 1038 /d "_DEBUG" 
# ADD RSC /l 1038 /d "_DEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo /o ".\Debug\mikmod.bsc" 
# ADD BSC32 /nologo /o ".\Debug\mikmod.bsc" 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /out:"..\debug\mikmod.plg" /incremental:yes /debug /pdb:".\Debug\mikmod.pdb" /pdbtype:sept /subsystem:windows /implib:".\Debug/mikmod.lib" /machine:ix86 
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /out:"..\debug\mikmod.plg" /incremental:yes /debug /pdb:".\Debug\mikmod.pdb" /pdbtype:sept /subsystem:windows /implib:".\Debug/mikmod.lib" /machine:ix86 

!ELSEIF  "$(CFG)" == "mikmod - Pocket PC 2003 (ARMV4) Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir ""
# PROP BASE Intermediate_Dir ""
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir ""
# PROP Intermediate_Dir ""
# PROP Target_Dir ""
# ADD BASE CPP /nologo /Zi /W3 /Od /D "_WIN32_WCE=$(CEVER)" /D "UNDER_CE" /D "$(PLATFORMDEFINES)" /D "WINCE" /D "DEBUG" /D "$(ARCHFAM)" /D "$(_ARCHFAM_)" /D "STANDARDSHELL_UI_MODEL" /D "_DEBUG" /D "DEBUG" /D "_UNICODE" /Gm /GZ /c /GX 
# ADD CPP /nologo /Zi /W3 /Od /D "_WIN32_WCE=$(CEVER)" /D "UNDER_CE" /D "$(PLATFORMDEFINES)" /D "WINCE" /D "DEBUG" /D "$(ARCHFAM)" /D "$(_ARCHFAM_)" /D "STANDARDSHELL_UI_MODEL" /D "_DEBUG" /D "DEBUG" /D "_UNICODE" /Gm /GZ /c /GX 
# ADD BASE MTL /nologo /D"_WIN32_WCE=$(CEVER)" /D"UNDER_CE" /D"$(PLATFORMDEFINES)" /D"WINCE" /D"DEBUG" /D"$(ARCHFAM)" /D"$(_ARCHFAM_)" /D"STANDARDSHELL_UI_MODEL" /D"_DEBUG" /D"DEBUG" /win32 
# ADD MTL /nologo /D"_WIN32_WCE=$(CEVER)" /D"UNDER_CE" /D"$(PLATFORMDEFINES)" /D"WINCE" /D"DEBUG" /D"$(ARCHFAM)" /D"$(_ARCHFAM_)" /D"STANDARDSHELL_UI_MODEL" /D"_DEBUG" /D"DEBUG" /win32 
# ADD BASE RSC /l 1033 /d "_WIN32_WCE=$(CEVER)" /d "UNDER_CE" /d "$(PLATFORMDEFINES)" /d "WINCE" /d "DEBUG" /d "$(ARCHFAM)" /d "$(_ARCHFAM_)" /d "STANDARDSHELL_UI_MODEL" /d "_DEBUG" /d "DEBUG" 
# ADD RSC /l 1033 /d "_WIN32_WCE=$(CEVER)" /d "UNDER_CE" /d "$(PLATFORMDEFINES)" /d "WINCE" /d "DEBUG" /d "$(ARCHFAM)" /d "$(_ARCHFAM_)" /d "STANDARDSHELL_UI_MODEL" /d "_DEBUG" /d "DEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo 
# ADD BSC32 /nologo 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /incremental:yes /debug /pdbtype:sept /subsystem:windows /stack:65536,4096 /subsystem:windowsce,$(CEVER) /machine:$(ARCHFAM)
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /incremental:yes /debug /pdbtype:sept /subsystem:windows /stack:65536,4096 /subsystem:windowsce,$(CEVER) /machine:$(ARCHFAM)

!ENDIF

# Begin Target

# Name "mikmod - Win32 Release"
# Name "mikmod - Pocket PC 2003 (ARMV4) Release"
# Name "mikmod - Win32 Debug"
# Name "mikmod - Pocket PC 2003 (ARMV4) Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=mikmod.c

!IF  "$(CFG)" == "mikmod - Win32 Release"

# ADD CPP /nologo /GX 
!ELSEIF  "$(CFG)" == "mikmod - Win32 Debug"

# ADD CPP /nologo /GZ /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=stdafx.c

!IF  "$(CFG)" == "mikmod - Win32 Release"

# ADD CPP /nologo /GX 
!ELSEIF  "$(CFG)" == "mikmod - Win32 Debug"

# ADD CPP /nologo /GZ /GX 
!ENDIF

# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=mikmod.h
# End Source File
# End Group
# Begin Group "libmikmod"

# PROP Default_Filter ""
# Begin Source File

SOURCE=libmikmod\drivers\drv_nos.c

!IF  "$(CFG)" == "mikmod - Win32 Release"

# ADD CPP /nologo /GX 
!ELSEIF  "$(CFG)" == "mikmod - Win32 Debug"

# ADD CPP /nologo /GZ /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=libmikmod\loaders\load_669.c

!IF  "$(CFG)" == "mikmod - Win32 Release"

# ADD CPP /nologo /GX 
!ELSEIF  "$(CFG)" == "mikmod - Win32 Debug"

# ADD CPP /nologo /GZ /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=libmikmod\loaders\load_amf.c

!IF  "$(CFG)" == "mikmod - Win32 Release"

# ADD CPP /nologo /GX 
!ELSEIF  "$(CFG)" == "mikmod - Win32 Debug"

# ADD CPP /nologo /GZ /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=libmikmod\loaders\load_asy.c

!IF  "$(CFG)" == "mikmod - Win32 Release"

# ADD CPP /nologo /GX 
!ELSEIF  "$(CFG)" == "mikmod - Win32 Debug"

# ADD CPP /nologo /GZ /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=libmikmod\loaders\load_dsm.c

!IF  "$(CFG)" == "mikmod - Win32 Release"

# ADD CPP /nologo /GX 
!ELSEIF  "$(CFG)" == "mikmod - Win32 Debug"

# ADD CPP /nologo /GZ /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=libmikmod\loaders\load_far.c

!IF  "$(CFG)" == "mikmod - Win32 Release"

# ADD CPP /nologo /GX 
!ELSEIF  "$(CFG)" == "mikmod - Win32 Debug"

# ADD CPP /nologo /GZ /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=libmikmod\loaders\load_gdm.c

!IF  "$(CFG)" == "mikmod - Win32 Release"

# ADD CPP /nologo /GX 
!ELSEIF  "$(CFG)" == "mikmod - Win32 Debug"

# ADD CPP /nologo /GZ /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=libmikmod\loaders\load_imf.c

!IF  "$(CFG)" == "mikmod - Win32 Release"

# ADD CPP /nologo /GX 
!ELSEIF  "$(CFG)" == "mikmod - Win32 Debug"

# ADD CPP /nologo /GZ /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=libmikmod\loaders\load_it.c

!IF  "$(CFG)" == "mikmod - Win32 Release"

# ADD CPP /nologo /GX 
!ELSEIF  "$(CFG)" == "mikmod - Win32 Debug"

# ADD CPP /nologo /GZ /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=libmikmod\loaders\load_m15.c

!IF  "$(CFG)" == "mikmod - Win32 Release"

# ADD CPP /nologo /GX 
!ELSEIF  "$(CFG)" == "mikmod - Win32 Debug"

# ADD CPP /nologo /GZ /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=libmikmod\loaders\load_med.c

!IF  "$(CFG)" == "mikmod - Win32 Release"

# ADD CPP /nologo /GX 
!ELSEIF  "$(CFG)" == "mikmod - Win32 Debug"

# ADD CPP /nologo /GZ /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=libmikmod\loaders\load_mod.c

!IF  "$(CFG)" == "mikmod - Win32 Release"

# ADD CPP /nologo /GX 
!ELSEIF  "$(CFG)" == "mikmod - Win32 Debug"

# ADD CPP /nologo /GZ /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=libmikmod\loaders\load_mtm.c

!IF  "$(CFG)" == "mikmod - Win32 Release"

# ADD CPP /nologo /GX 
!ELSEIF  "$(CFG)" == "mikmod - Win32 Debug"

# ADD CPP /nologo /GZ /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=libmikmod\loaders\load_okt.c

!IF  "$(CFG)" == "mikmod - Win32 Release"

# ADD CPP /nologo /GX 
!ELSEIF  "$(CFG)" == "mikmod - Win32 Debug"

# ADD CPP /nologo /GZ /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=libmikmod\loaders\load_s3m.c

!IF  "$(CFG)" == "mikmod - Win32 Release"

# ADD CPP /nologo /GX 
!ELSEIF  "$(CFG)" == "mikmod - Win32 Debug"

# ADD CPP /nologo /GZ /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=libmikmod\loaders\load_stm.c

!IF  "$(CFG)" == "mikmod - Win32 Release"

# ADD CPP /nologo /GX 
!ELSEIF  "$(CFG)" == "mikmod - Win32 Debug"

# ADD CPP /nologo /GZ /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=libmikmod\loaders\load_stx.c

!IF  "$(CFG)" == "mikmod - Win32 Release"

# ADD CPP /nologo /GX 
!ELSEIF  "$(CFG)" == "mikmod - Win32 Debug"

# ADD CPP /nologo /GZ /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=libmikmod\loaders\load_ult.c

!IF  "$(CFG)" == "mikmod - Win32 Release"

# ADD CPP /nologo /GX 
!ELSEIF  "$(CFG)" == "mikmod - Win32 Debug"

# ADD CPP /nologo /GZ /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=libmikmod\loaders\load_uni.c

!IF  "$(CFG)" == "mikmod - Win32 Release"

# ADD CPP /nologo /GX 
!ELSEIF  "$(CFG)" == "mikmod - Win32 Debug"

# ADD CPP /nologo /GZ /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=libmikmod\loaders\load_xm.c

!IF  "$(CFG)" == "mikmod - Win32 Release"

# ADD CPP /nologo /GX 
!ELSEIF  "$(CFG)" == "mikmod - Win32 Debug"

# ADD CPP /nologo /GZ /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=libmikmod\playercode\mdriver.c

!IF  "$(CFG)" == "mikmod - Win32 Release"

# ADD CPP /nologo /GX 
!ELSEIF  "$(CFG)" == "mikmod - Win32 Debug"

# ADD CPP /nologo /GZ /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=.\libmikmod\posix\memcmp.c
# End Source File
# Begin Source File

SOURCE=libmikmod\playercode\mloader.c

!IF  "$(CFG)" == "mikmod - Win32 Release"

# ADD CPP /nologo /GX 
!ELSEIF  "$(CFG)" == "mikmod - Win32 Debug"

# ADD CPP /nologo /GZ /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=libmikmod\playercode\mlreg.c

!IF  "$(CFG)" == "mikmod - Win32 Release"

# ADD CPP /nologo /GX 
!ELSEIF  "$(CFG)" == "mikmod - Win32 Debug"

# ADD CPP /nologo /GZ /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=libmikmod\playercode\mlutil.c

!IF  "$(CFG)" == "mikmod - Win32 Release"

# ADD CPP /nologo /GX 
!ELSEIF  "$(CFG)" == "mikmod - Win32 Debug"

# ADD CPP /nologo /GZ /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=libmikmod\mmio\mmerror.c

!IF  "$(CFG)" == "mikmod - Win32 Release"

# ADD CPP /nologo /GX 
!ELSEIF  "$(CFG)" == "mikmod - Win32 Debug"

# ADD CPP /nologo /GZ /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=libmikmod\mmio\mmio.c

!IF  "$(CFG)" == "mikmod - Win32 Release"

# ADD CPP /nologo /GX 
!ELSEIF  "$(CFG)" == "mikmod - Win32 Debug"

# ADD CPP /nologo /GZ /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=libmikmod\playercode\mplayer.c

!IF  "$(CFG)" == "mikmod - Win32 Release"

# ADD CPP /nologo /GX 
!ELSEIF  "$(CFG)" == "mikmod - Win32 Debug"

# ADD CPP /nologo /GZ /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=libmikmod\playercode\munitrk.c

!IF  "$(CFG)" == "mikmod - Win32 Release"

# ADD CPP /nologo /GX 
!ELSEIF  "$(CFG)" == "mikmod - Win32 Debug"

# ADD CPP /nologo /GZ /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=libmikmod\playercode\mwav.c

!IF  "$(CFG)" == "mikmod - Win32 Release"

# ADD CPP /nologo /GX 
!ELSEIF  "$(CFG)" == "mikmod - Win32 Debug"

# ADD CPP /nologo /GZ /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=libmikmod\playercode\npertab.c

!IF  "$(CFG)" == "mikmod - Win32 Release"

# ADD CPP /nologo /GX 
!ELSEIF  "$(CFG)" == "mikmod - Win32 Debug"

# ADD CPP /nologo /GZ /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=libmikmod\playercode\sloader.c

!IF  "$(CFG)" == "mikmod - Win32 Release"

# ADD CPP /nologo /GX 
!ELSEIF  "$(CFG)" == "mikmod - Win32 Debug"

# ADD CPP /nologo /GZ /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=.\libmikmod\posix\strcasecmp.c
# End Source File
# Begin Source File

SOURCE=.\libmikmod\posix\strdup.c
# End Source File
# Begin Source File

SOURCE=.\libmikmod\posix\strstr.c
# End Source File
# Begin Source File

SOURCE=libmikmod\playercode\virtch.c

!IF  "$(CFG)" == "mikmod - Win32 Release"

# ADD CPP /nologo /GX 
!ELSEIF  "$(CFG)" == "mikmod - Win32 Debug"

# ADD CPP /nologo /GZ /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=libmikmod\playercode\virtch2.c

!IF  "$(CFG)" == "mikmod - Win32 Release"

# ADD CPP /nologo /GX 
!ELSEIF  "$(CFG)" == "mikmod - Win32 Debug"

# ADD CPP /nologo /GZ /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=libmikmod\playercode\virtch_common.c

!IF  "$(CFG)" == "mikmod - Win32 Release"

# ADD CPP /nologo /GX 
!ELSEIF  "$(CFG)" == "mikmod - Win32 Debug"

# ADD CPP /nologo /GZ /GX 
!ENDIF

# End Source File
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;rgs;gif;jpg;jpeg;jpe"
# End Group
# End Target
# End Project


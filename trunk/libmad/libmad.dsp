# Microsoft Developer Studio Project File - Name="libmad" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Pocket PC 2003 (ARMV4) (x86) Dynamic-Link Library" 0x0102

CFG=libmad - Pocket PC 2003 (ARMV4) Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "libmad.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "libmad.mak" CFG="libmad - Pocket PC 2003 (ARMV4) Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "libmad - Pocket PC 2003 (ARMV4) Debug" (based on "Pocket PC 2003 (ARMV4) (x86) Dynamic-Link Library")
!MESSAGE "libmad - Smartphone 2003 (ARMV4) Debug" (based on "Pocket PC 2003 (ARMV4) (x86) Dynamic-Link Library")
!MESSAGE "libmad - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug" (based on "Pocket PC 2003 (ARMV4) (x86) Dynamic-Link Library")
!MESSAGE "libmad - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Debug" (based on "Pocket PC 2003 (ARMV4) (x86) Dynamic-Link Library")
!MESSAGE "libmad - Win32 Debug" (based on "Pocket PC 2003 (ARMV4) (x86) Dynamic-Link Library")
!MESSAGE "libmad - Windows Mobile 6 Professional SDK (ARMV4I) Debug" (based on "Pocket PC 2003 (ARMV4) (x86) Dynamic-Link Library")
!MESSAGE "libmad - Pocket PC 2003 (ARMV4) Release" (based on "Pocket PC 2003 (ARMV4) (x86) Dynamic-Link Library")
!MESSAGE "libmad - Smartphone 2003 (ARMV4) Release" (based on "Pocket PC 2003 (ARMV4) (x86) Dynamic-Link Library")
!MESSAGE "libmad - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release" (based on "Pocket PC 2003 (ARMV4) (x86) Dynamic-Link Library")
!MESSAGE "libmad - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Release" (based on "Pocket PC 2003 (ARMV4) (x86) Dynamic-Link Library")
!MESSAGE "libmad - Win32 Release" (based on "Pocket PC 2003 (ARMV4) (x86) Dynamic-Link Library")
!MESSAGE "libmad - Windows Mobile 6 Professional SDK (ARMV4I) Release" (based on "Pocket PC 2003 (ARMV4) (x86) Dynamic-Link Library")
!MESSAGE "libmad - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release" (based on "Pocket PC 2003 (ARMV4) (x86) Dynamic-Link Library")
!MESSAGE "libmad - Smartphone 2003 (ARMV4) cegcc-flac-ffmpeg-release" (based on "Pocket PC 2003 (ARMV4) (x86) Dynamic-Link Library")
!MESSAGE "libmad - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release" (based on "Pocket PC 2003 (ARMV4) (x86) Dynamic-Link Library")
!MESSAGE "libmad - Windows Mobile 5.0 Smartphone SDK (ARMV4I) cegcc-flac-ffmpeg-release" (based on "Pocket PC 2003 (ARMV4) (x86) Dynamic-Link Library")
!MESSAGE "libmad - Win32 cegcc-flac-ffmpeg-release" (based on "Pocket PC 2003 (ARMV4) (x86) Dynamic-Link Library")
!MESSAGE "libmad - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release" (based on "Pocket PC 2003 (ARMV4) (x86) Dynamic-Link Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "libmad - Pocket PC 2003 (ARMV4) Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "..\$(PlatformName)\Debug"
# PROP BASE Intermediate_Dir "$(PlatformName)\Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "..\$(PlatformName)\Debug"
# PROP Intermediate_Dir "$(PlatformName)\Debug"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MTd /Zi /W3 /Od /D "inline=__inline" /D "FPM_DEFAULT" /D "OPT_SPEED" /D "ASO_INTERLEAVE1" /D "BUILDFIXED" /D "_WIN32_WCE=$(CEVER)" /D "UNDER_CE=$(CEVER)" /D "WINCE" /D "$(PLATFORMDEFINES)" /D "_DEBUG" /D "DEBUG" /D "_WINDOWS" /D "_USRDLL" /D "LIBMAD_EXPORTS" /D "$(ARCHFAM)" /D "$(_ARCHFAM_)" /D "_UNICODE" /D "UNICODE" /D "_UNICODE" /Gm PRECOMP_VC7_TOBEREMOVED /GZ /c /GX 
# ADD CPP /nologo /MTd /Zi /W3 /Od /D "inline=__inline" /D "FPM_DEFAULT" /D "OPT_SPEED" /D "ASO_INTERLEAVE1" /D "BUILDFIXED" /D "_WIN32_WCE=$(CEVER)" /D "UNDER_CE=$(CEVER)" /D "WINCE" /D "$(PLATFORMDEFINES)" /D "_DEBUG" /D "DEBUG" /D "_WINDOWS" /D "_USRDLL" /D "LIBMAD_EXPORTS" /D "$(ARCHFAM)" /D "$(_ARCHFAM_)" /D "_UNICODE" /D "UNICODE" /D "_UNICODE" /Gm PRECOMP_VC7_TOBEREMOVED /GZ /c /GX 
# ADD BASE MTL /nologo /win32 
# ADD MTL /nologo /win32 
# ADD BASE RSC /l 1033 /d "_DEBUG" /d "_UNICODE" /d "UNICODE" /d "_WIN32_WCE" /d "UNDER_CE" /i "$(IntDir)" 
# ADD RSC /l 1033 /d "_DEBUG" /d "_UNICODE" /d "UNICODE" /d "_WIN32_WCE" /d "UNDER_CE" /i "$(IntDir)" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo 
# ADD BSC32 /nologo 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib commctrl.lib coredll.lib /nologo /dll /out:"..\$(PlatformName)\Debug\libmad.plg" /incremental:yes /debug /pdb:"..\$(PlatformName)\Debug\libmad.pdb" /pdbtype:sept /subsystem:windows /implib:"$(OutDir)/libmad.lib" /ALIGN:4096 /subsystem:windowsce,4.20 /machine:ARM /ARMPADCODE
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib commctrl.lib coredll.lib /nologo /dll /out:"..\$(PlatformName)\Debug\libmad.plg" /incremental:yes /debug /pdb:"..\$(PlatformName)\Debug\libmad.pdb" /pdbtype:sept /subsystem:windows /implib:"$(OutDir)/libmad.lib" /ALIGN:4096 /subsystem:windowsce,4.20 /machine:ARM /ARMPADCODE

!ELSEIF  "$(CFG)" == "libmad - Smartphone 2003 (ARMV4) Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "..\$(PlatformName)\Debug"
# PROP BASE Intermediate_Dir "$(PlatformName)\Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "..\$(PlatformName)\Debug"
# PROP Intermediate_Dir "$(PlatformName)\Debug"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MTd /Zi /W3 /Od /D "inline=__inline" /D "FPM_DEFAULT" /D "OPT_SPEED" /D "ASO_INTERLEAVE1" /D "BUILDFIXED" /D "_WIN32_WCE=$(CEVER)" /D "UNDER_CE=$(CEVER)" /D "WINCE" /D "$(PLATFORMDEFINES)" /D "_DEBUG" /D "DEBUG" /D "_WINDOWS" /D "_USRDLL" /D "LIBMAD_EXPORTS" /D "$(ARCHFAM)" /D "$(_ARCHFAM_)" /D "_UNICODE" /D "UNICODE" /D "_UNICODE" /Gm PRECOMP_VC7_TOBEREMOVED /GZ /c /GX 
# ADD CPP /nologo /MTd /Zi /W3 /Od /D "inline=__inline" /D "FPM_DEFAULT" /D "OPT_SPEED" /D "ASO_INTERLEAVE1" /D "BUILDFIXED" /D "_WIN32_WCE=$(CEVER)" /D "UNDER_CE=$(CEVER)" /D "WINCE" /D "$(PLATFORMDEFINES)" /D "_DEBUG" /D "DEBUG" /D "_WINDOWS" /D "_USRDLL" /D "LIBMAD_EXPORTS" /D "$(ARCHFAM)" /D "$(_ARCHFAM_)" /D "_UNICODE" /D "UNICODE" /D "_UNICODE" /Gm PRECOMP_VC7_TOBEREMOVED /GZ /c /GX 
# ADD BASE MTL /nologo /win32 
# ADD MTL /nologo /win32 
# ADD BASE RSC /l 1033 /d "_DEBUG" /d "_UNICODE" /d "UNICODE" /d "_WIN32_WCE" /d "UNDER_CE" /i "$(IntDir)" 
# ADD RSC /l 1033 /d "_DEBUG" /d "_UNICODE" /d "UNICODE" /d "_WIN32_WCE" /d "UNDER_CE" /i "$(IntDir)" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo 
# ADD BSC32 /nologo 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /out:"..\$(PlatformName)\Debug\libmad.plg" /incremental:yes /debug /pdb:"..\$(PlatformName)\Debug\libmad.pdb" /pdbtype:sept /subsystem:windows /implib:"$(OutDir)/libmad.lib"  /subsystem:windowsce,4.20 /machine:ARM /ARMPADCODE
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /out:"..\$(PlatformName)\Debug\libmad.plg" /incremental:yes /debug /pdb:"..\$(PlatformName)\Debug\libmad.pdb" /pdbtype:sept /subsystem:windows /implib:"$(OutDir)/libmad.lib"  /subsystem:windowsce,4.20 /machine:ARM /ARMPADCODE

!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "..\$(PlatformName)\Debug"
# PROP BASE Intermediate_Dir "$(PlatformName)\Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "..\$(PlatformName)\Debug"
# PROP Intermediate_Dir "$(PlatformName)\Debug"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MTd /Zi /W3 /Od /D "inline=__inline" /D "FPM_DEFAULT" /D "OPT_SPEED" /D "ASO_INTERLEAVE1" /D "BUILDFIXED" /D "_WIN32_WCE=$(CEVER)" /D "UNDER_CE=$(CEVER)" /D "WINCE" /D "$(PLATFORMDEFINES)" /D "_DEBUG" /D "DEBUG" /D "_WINDOWS" /D "_USRDLL" /D "LIBMAD_EXPORTS" /D "$(ARCHFAM)" /D "$(_ARCHFAM_)" /D "_UNICODE" /D "UNICODE" /D "_UNICODE" /Gm PRECOMP_VC7_TOBEREMOVED /GZ /c /GX 
# ADD CPP /nologo /MTd /Zi /W3 /Od /D "inline=__inline" /D "FPM_DEFAULT" /D "OPT_SPEED" /D "ASO_INTERLEAVE1" /D "BUILDFIXED" /D "_WIN32_WCE=$(CEVER)" /D "UNDER_CE=$(CEVER)" /D "WINCE" /D "$(PLATFORMDEFINES)" /D "_DEBUG" /D "DEBUG" /D "_WINDOWS" /D "_USRDLL" /D "LIBMAD_EXPORTS" /D "$(ARCHFAM)" /D "$(_ARCHFAM_)" /D "_UNICODE" /D "UNICODE" /D "_UNICODE" /Gm PRECOMP_VC7_TOBEREMOVED /GZ /c /GX 
# ADD BASE MTL /nologo /win32 
# ADD MTL /nologo /win32 
# ADD BASE RSC /l 1033 /d "_DEBUG" /d "_UNICODE" /d "UNICODE" /d "_WIN32_WCE" /d "UNDER_CE" /i "$(IntDir)" 
# ADD RSC /l 1033 /d "_DEBUG" /d "_UNICODE" /d "UNICODE" /d "_WIN32_WCE" /d "UNDER_CE" /i "$(IntDir)" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo 
# ADD BSC32 /nologo 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /out:"..\$(PlatformName)\Debug\libmad.plg" /incremental:yes /debug /pdb:"..\$(PlatformName)\Debug\libmad.pdb" /pdbtype:sept /subsystem:windows /implib:"$(OutDir)/libmad.lib"  /subsystem:windowsce,5.01 /machine:THUMB
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /out:"..\$(PlatformName)\Debug\libmad.plg" /incremental:yes /debug /pdb:"..\$(PlatformName)\Debug\libmad.pdb" /pdbtype:sept /subsystem:windows /implib:"$(OutDir)/libmad.lib"  /subsystem:windowsce,5.01 /machine:THUMB

!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "..\$(PlatformName)\Debug"
# PROP BASE Intermediate_Dir "Windows Mobile 5.0 Smartphone SDK (ARMV4I)\$(ConfigurationName)"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "..\$(PlatformName)\Debug"
# PROP Intermediate_Dir "Windows Mobile 5.0 Smartphone SDK (ARMV4I)\$(ConfigurationName)"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MTd /Zi /W3 /Od /D "inline=__inline" /D "FPM_DEFAULT" /D "OPT_SPEED" /D "ASO_INTERLEAVE1" /D "BUILDFIXED" /D "_WIN32_WCE=$(CEVER)" /D "UNDER_CE=$(CEVER)" /D "WINCE" /D "$(PLATFORMDEFINES)" /D "_DEBUG" /D "DEBUG" /D "_WINDOWS" /D "_USRDLL" /D "LIBMAD_EXPORTS" /D "$(ARCHFAM)" /D "$(_ARCHFAM_)" /D "_UNICODE" /D "UNICODE" /D "_UNICODE" /Gm PRECOMP_VC7_TOBEREMOVED /GZ /c /GX 
# ADD CPP /nologo /MTd /Zi /W3 /Od /D "inline=__inline" /D "FPM_DEFAULT" /D "OPT_SPEED" /D "ASO_INTERLEAVE1" /D "BUILDFIXED" /D "_WIN32_WCE=$(CEVER)" /D "UNDER_CE=$(CEVER)" /D "WINCE" /D "$(PLATFORMDEFINES)" /D "_DEBUG" /D "DEBUG" /D "_WINDOWS" /D "_USRDLL" /D "LIBMAD_EXPORTS" /D "$(ARCHFAM)" /D "$(_ARCHFAM_)" /D "_UNICODE" /D "UNICODE" /D "_UNICODE" /Gm PRECOMP_VC7_TOBEREMOVED /GZ /c /GX 
# ADD BASE MTL /nologo /win32 
# ADD MTL /nologo /win32 
# ADD BASE RSC /l 1033 /d "_DEBUG" /d "_UNICODE" /d "UNICODE" /d "_WIN32_WCE" /d "UNDER_CE" /i "$(IntDir)" 
# ADD RSC /l 1033 /d "_DEBUG" /d "_UNICODE" /d "UNICODE" /d "_WIN32_WCE" /d "UNDER_CE" /i "$(IntDir)" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo 
# ADD BSC32 /nologo 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /out:"..\$(PlatformName)\Debug\libmad.plg" /incremental:yes /debug /pdb:"..\$(PlatformName)\Debug\libmad.pdb" /pdbtype:sept /subsystem:windows /implib:"$(OutDir)/libmad.lib"  /subsystem:windowsce,5.01 /machine:THUMB
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /out:"..\$(PlatformName)\Debug\libmad.plg" /incremental:yes /debug /pdb:"..\$(PlatformName)\Debug\libmad.pdb" /pdbtype:sept /subsystem:windows /implib:"$(OutDir)/libmad.lib"  /subsystem:windowsce,5.01 /machine:THUMB

!ELSEIF  "$(CFG)" == "libmad - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "..\$(ConfigurationName)"
# PROP BASE Intermediate_Dir "$(ConfigurationName)"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "..\$(ConfigurationName)"
# PROP Intermediate_Dir "$(ConfigurationName)"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /D "inline=__inline" /D "FPM_DEFAULT" /D "OPT_SPEED" /D "ASO_INTERLEAVE1" /D "BUILDFIXED" /D "_USRDLL" /D "LIBMAD_EXPORTS" /GZ /c /GX 
# ADD CPP /nologo /D "inline=__inline" /D "FPM_DEFAULT" /D "OPT_SPEED" /D "ASO_INTERLEAVE1" /D "BUILDFIXED" /D "_USRDLL" /D "LIBMAD_EXPORTS" /GZ /c /GX 
# ADD BASE MTL /nologo /win32 
# ADD MTL /nologo /win32 
# ADD BASE RSC /l 1033 
# ADD RSC /l 1033 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo 
# ADD BSC32 /nologo 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /out:"..\$(ConfigurationName)\libmad.plg" /pdbtype:sept /subsystem:windows 
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /out:"..\$(ConfigurationName)\libmad.plg" /pdbtype:sept /subsystem:windows 

!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 6 Professional SDK (ARMV4I) Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Windows Mobile 6 Professional SDK (ARMV4I)\$(ConfigurationName)"
# PROP BASE Intermediate_Dir "Windows Mobile 6 Professional SDK (ARMV4I)\$(ConfigurationName)"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Windows Mobile 6 Professional SDK (ARMV4I)\$(ConfigurationName)"
# PROP Intermediate_Dir "Windows Mobile 6 Professional SDK (ARMV4I)\$(ConfigurationName)"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MTd /Zi /W3 /Od /D "inline=__inline" /D "FPM_DEFAULT" /D "OPT_SPEED" /D "ASO_INTERLEAVE1" /D "BUILDFIXED" /D "_WIN32_WCE=$(CEVER)" /D "UNDER_CE=$(CEVER)" /D "WINCE" /D "$(PLATFORMDEFINES)" /D "_DEBUG" /D "DEBUG" /D "_WINDOWS" /D "_USRDLL" /D "LIBMAD_EXPORTS" /D "$(ARCHFAM)" /D "$(_ARCHFAM_)" /D "_UNICODE" /D "UNICODE" /D "_UNICODE" /Gm PRECOMP_VC7_TOBEREMOVED /GZ /c /GX 
# ADD CPP /nologo /MTd /Zi /W3 /Od /D "inline=__inline" /D "FPM_DEFAULT" /D "OPT_SPEED" /D "ASO_INTERLEAVE1" /D "BUILDFIXED" /D "_WIN32_WCE=$(CEVER)" /D "UNDER_CE=$(CEVER)" /D "WINCE" /D "$(PLATFORMDEFINES)" /D "_DEBUG" /D "DEBUG" /D "_WINDOWS" /D "_USRDLL" /D "LIBMAD_EXPORTS" /D "$(ARCHFAM)" /D "$(_ARCHFAM_)" /D "_UNICODE" /D "UNICODE" /D "_UNICODE" /Gm PRECOMP_VC7_TOBEREMOVED /GZ /c /GX 
# ADD BASE MTL /nologo /win32 
# ADD MTL /nologo /win32 
# ADD BASE RSC /l 1033 /d "_DEBUG" /d "_UNICODE" /d "UNICODE" /d "_WIN32_WCE" /d "UNDER_CE" /i "$(IntDir)" 
# ADD RSC /l 1033 /d "_DEBUG" /d "_UNICODE" /d "UNICODE" /d "_WIN32_WCE" /d "UNDER_CE" /i "$(IntDir)" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo 
# ADD BSC32 /nologo 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib commctrl.lib coredll.lib /nologo /dll /out:"Windows Mobile 6 Professional SDK (ARMV4I)\$(ConfigurationName)\libmad.plg" /incremental:yes /debug /pdb:"Windows Mobile 6 Professional SDK (ARMV4I)\$(ConfigurationName)\libmad.pdb" /pdbtype:sept /subsystem:windows /implib:"$(OutDir)/libmad.lib" /ALIGN:4096 /subsystem:windowsce,4.20 /machine:ARM /ARMPADCODE
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib commctrl.lib coredll.lib /nologo /dll /out:"Windows Mobile 6 Professional SDK (ARMV4I)\$(ConfigurationName)\libmad.plg" /incremental:yes /debug /pdb:"Windows Mobile 6 Professional SDK (ARMV4I)\$(ConfigurationName)\libmad.pdb" /pdbtype:sept /subsystem:windows /implib:"$(OutDir)/libmad.lib" /ALIGN:4096 /subsystem:windowsce,4.20 /machine:ARM /ARMPADCODE

!ELSEIF  "$(CFG)" == "libmad - Pocket PC 2003 (ARMV4) Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "..\$(PlatformName)\Release"
# PROP BASE Intermediate_Dir "$(PlatformName)\Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "..\$(PlatformName)\Release"
# PROP Intermediate_Dir "$(PlatformName)\Release"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MT /Zi /W3 /O2 /D "inline=__inline" /D "FPM_DEFAULT" /D "OPT_SPEED" /D "ASO_INTERLEAVE1" /D "BUILDFIXED" /D "_WIN32_WCE=$(CEVER)" /D "UNDER_CE=$(CEVER)" /D "WINCE" /D "$(PLATFORMDEFINES)" /D "NDEBUG" /D "_WINDOWS" /D "_USRDLL" /D "LIBMAD_EXPORTS" /D "$(ARCHFAM)" /D "$(_ARCHFAM_)" /D "_UNICODE" /D "UNICODE" /D "_UNICODE" PRECOMP_VC7_TOBEREMOVED /c /GX 
# ADD CPP /nologo /MT /Zi /W3 /O2 /D "inline=__inline" /D "FPM_DEFAULT" /D "OPT_SPEED" /D "ASO_INTERLEAVE1" /D "BUILDFIXED" /D "_WIN32_WCE=$(CEVER)" /D "UNDER_CE=$(CEVER)" /D "WINCE" /D "$(PLATFORMDEFINES)" /D "NDEBUG" /D "_WINDOWS" /D "_USRDLL" /D "LIBMAD_EXPORTS" /D "$(ARCHFAM)" /D "$(_ARCHFAM_)" /D "_UNICODE" /D "UNICODE" /D "_UNICODE" PRECOMP_VC7_TOBEREMOVED /c /GX 
# ADD BASE MTL /nologo /win32 
# ADD MTL /nologo /win32 
# ADD BASE RSC /l 1033 /d "NDEBUG" /d "_UNICODE" /d "UNICODE" /d "_WIN32_WCE" /d "UNDER_CE" /i "$(IntDir)" 
# ADD RSC /l 1033 /d "NDEBUG" /d "_UNICODE" /d "UNICODE" /d "_WIN32_WCE" /d "UNDER_CE" /i "$(IntDir)" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo 
# ADD BSC32 /nologo 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib commctrl.lib coredll.lib /nologo /dll /out:"..\$(PlatformName)\Release\libmad.plg" /incremental:no /debug /pdb:"..\$(PlatformName)\Release\libmad.pdb" /pdbtype:sept /subsystem:windows /opt:ref /opt:icf /implib:"$(OutDir)/libmad.lib" /ALIGN:4096 /subsystem:windowsce,4.20 /machine:ARM /ARMPADCODE
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib commctrl.lib coredll.lib /nologo /dll /out:"..\$(PlatformName)\Release\libmad.plg" /incremental:no /debug /pdb:"..\$(PlatformName)\Release\libmad.pdb" /pdbtype:sept /subsystem:windows /opt:ref /opt:icf /implib:"$(OutDir)/libmad.lib" /ALIGN:4096 /subsystem:windowsce,4.20 /machine:ARM /ARMPADCODE

!ELSEIF  "$(CFG)" == "libmad - Smartphone 2003 (ARMV4) Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "..\$(PlatformName)\Release"
# PROP BASE Intermediate_Dir "$(PlatformName)\Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "..\$(PlatformName)\Release"
# PROP Intermediate_Dir "$(PlatformName)\Release"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MT /Zi /W3 /O2 /D "inline=__inline" /D "FPM_DEFAULT" /D "OPT_SPEED" /D "ASO_INTERLEAVE1" /D "BUILDFIXED" /D "_WIN32_WCE=$(CEVER)" /D "UNDER_CE=$(CEVER)" /D "WINCE" /D "$(PLATFORMDEFINES)" /D "NDEBUG" /D "_WINDOWS" /D "_USRDLL" /D "LIBMAD_EXPORTS" /D "$(ARCHFAM)" /D "$(_ARCHFAM_)" /D "_UNICODE" /D "UNICODE" /D "_UNICODE" PRECOMP_VC7_TOBEREMOVED /c /GX 
# ADD CPP /nologo /MT /Zi /W3 /O2 /D "inline=__inline" /D "FPM_DEFAULT" /D "OPT_SPEED" /D "ASO_INTERLEAVE1" /D "BUILDFIXED" /D "_WIN32_WCE=$(CEVER)" /D "UNDER_CE=$(CEVER)" /D "WINCE" /D "$(PLATFORMDEFINES)" /D "NDEBUG" /D "_WINDOWS" /D "_USRDLL" /D "LIBMAD_EXPORTS" /D "$(ARCHFAM)" /D "$(_ARCHFAM_)" /D "_UNICODE" /D "UNICODE" /D "_UNICODE" PRECOMP_VC7_TOBEREMOVED /c /GX 
# ADD BASE MTL /nologo /win32 
# ADD MTL /nologo /win32 
# ADD BASE RSC /l 1033 /d "NDEBUG" /d "_UNICODE" /d "UNICODE" /d "_WIN32_WCE" /d "UNDER_CE" /i "$(IntDir)" 
# ADD RSC /l 1033 /d "NDEBUG" /d "_UNICODE" /d "UNICODE" /d "_WIN32_WCE" /d "UNDER_CE" /i "$(IntDir)" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo 
# ADD BSC32 /nologo 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /out:"..\$(PlatformName)\Release\libmad.plg" /incremental:no /debug /pdb:"..\$(PlatformName)\Release\libmad.pdb" /pdbtype:sept /subsystem:windows /opt:ref /opt:icf /implib:"$(OutDir)/libmad.lib"  /subsystem:windowsce,4.20 /machine:ARM /ARMPADCODE
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /out:"..\$(PlatformName)\Release\libmad.plg" /incremental:no /debug /pdb:"..\$(PlatformName)\Release\libmad.pdb" /pdbtype:sept /subsystem:windows /opt:ref /opt:icf /implib:"$(OutDir)/libmad.lib"  /subsystem:windowsce,4.20 /machine:ARM /ARMPADCODE

!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "..\$(PlatformName)\Release"
# PROP BASE Intermediate_Dir "$(PlatformName)\Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "..\$(PlatformName)\Release"
# PROP Intermediate_Dir "$(PlatformName)\Release"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MT /Zi /W3 /O2 /D "inline=__inline" /D "FPM_DEFAULT" /D "OPT_SPEED" /D "ASO_INTERLEAVE1" /D "BUILDFIXED" /D "_WIN32_WCE=$(CEVER)" /D "UNDER_CE=$(CEVER)" /D "WINCE" /D "$(PLATFORMDEFINES)" /D "NDEBUG" /D "_WINDOWS" /D "_USRDLL" /D "LIBMAD_EXPORTS" /D "$(ARCHFAM)" /D "$(_ARCHFAM_)" /D "_UNICODE" /D "UNICODE" /D "_UNICODE" PRECOMP_VC7_TOBEREMOVED /c /GX 
# ADD CPP /nologo /MT /Zi /W3 /O2 /D "inline=__inline" /D "FPM_DEFAULT" /D "OPT_SPEED" /D "ASO_INTERLEAVE1" /D "BUILDFIXED" /D "_WIN32_WCE=$(CEVER)" /D "UNDER_CE=$(CEVER)" /D "WINCE" /D "$(PLATFORMDEFINES)" /D "NDEBUG" /D "_WINDOWS" /D "_USRDLL" /D "LIBMAD_EXPORTS" /D "$(ARCHFAM)" /D "$(_ARCHFAM_)" /D "_UNICODE" /D "UNICODE" /D "_UNICODE" PRECOMP_VC7_TOBEREMOVED /c /GX 
# ADD BASE MTL /nologo /win32 
# ADD MTL /nologo /win32 
# ADD BASE RSC /l 1033 /d "NDEBUG" /d "_UNICODE" /d "UNICODE" /d "_WIN32_WCE" /d "UNDER_CE" /i "$(IntDir)" 
# ADD RSC /l 1033 /d "NDEBUG" /d "_UNICODE" /d "UNICODE" /d "_WIN32_WCE" /d "UNDER_CE" /i "$(IntDir)" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo 
# ADD BSC32 /nologo 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /out:"..\$(PlatformName)\Release\libmad.plg" /incremental:no /debug /pdb:"..\$(PlatformName)\Release\libmad.pdb" /pdbtype:sept /subsystem:windows /opt:ref /opt:icf /implib:"$(OutDir)/libmad.lib"  /subsystem:windowsce,5.01 /machine:THUMB
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /out:"..\$(PlatformName)\Release\libmad.plg" /incremental:no /debug /pdb:"..\$(PlatformName)\Release\libmad.pdb" /pdbtype:sept /subsystem:windows /opt:ref /opt:icf /implib:"$(OutDir)/libmad.lib"  /subsystem:windowsce,5.01 /machine:THUMB

!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "..\$(PlatformName)\Release"
# PROP BASE Intermediate_Dir "Windows Mobile 5.0 Smartphone SDK (ARMV4I)\$(ConfigurationName)"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "..\$(PlatformName)\Release"
# PROP Intermediate_Dir "Windows Mobile 5.0 Smartphone SDK (ARMV4I)\$(ConfigurationName)"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MT /Zi /W3 /O2 /D "inline=__inline" /D "FPM_DEFAULT" /D "OPT_SPEED" /D "ASO_INTERLEAVE1" /D "BUILDFIXED" /D "_WIN32_WCE=$(CEVER)" /D "UNDER_CE=$(CEVER)" /D "WINCE" /D "$(PLATFORMDEFINES)" /D "NDEBUG" /D "_WINDOWS" /D "_USRDLL" /D "LIBMAD_EXPORTS" /D "$(ARCHFAM)" /D "$(_ARCHFAM_)" /D "_UNICODE" /D "UNICODE" /D "_UNICODE" PRECOMP_VC7_TOBEREMOVED /c /GX 
# ADD CPP /nologo /MT /Zi /W3 /O2 /D "inline=__inline" /D "FPM_DEFAULT" /D "OPT_SPEED" /D "ASO_INTERLEAVE1" /D "BUILDFIXED" /D "_WIN32_WCE=$(CEVER)" /D "UNDER_CE=$(CEVER)" /D "WINCE" /D "$(PLATFORMDEFINES)" /D "NDEBUG" /D "_WINDOWS" /D "_USRDLL" /D "LIBMAD_EXPORTS" /D "$(ARCHFAM)" /D "$(_ARCHFAM_)" /D "_UNICODE" /D "UNICODE" /D "_UNICODE" PRECOMP_VC7_TOBEREMOVED /c /GX 
# ADD BASE MTL /nologo /win32 
# ADD MTL /nologo /win32 
# ADD BASE RSC /l 1033 /d "NDEBUG" /d "_UNICODE" /d "UNICODE" /d "_WIN32_WCE" /d "UNDER_CE" /i "$(IntDir)" 
# ADD RSC /l 1033 /d "NDEBUG" /d "_UNICODE" /d "UNICODE" /d "_WIN32_WCE" /d "UNDER_CE" /i "$(IntDir)" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo 
# ADD BSC32 /nologo 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /out:"..\$(PlatformName)\Release\libmad.plg" /incremental:no /debug /pdb:"..\$(PlatformName)\Release\libmad.pdb" /pdbtype:sept /subsystem:windows /opt:ref /opt:icf /implib:"$(OutDir)/libmad.lib"  /subsystem:windowsce,5.01 /machine:THUMB
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /out:"..\$(PlatformName)\Release\libmad.plg" /incremental:no /debug /pdb:"..\$(PlatformName)\Release\libmad.pdb" /pdbtype:sept /subsystem:windows /opt:ref /opt:icf /implib:"$(OutDir)/libmad.lib"  /subsystem:windowsce,5.01 /machine:THUMB

!ELSEIF  "$(CFG)" == "libmad - Win32 Release"

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
# ADD BASE CPP /nologo /D "inline=__inline" /D "FPM_DEFAULT" /D "OPT_SPEED" /D "ASO_INTERLEAVE1" /D "BUILDFIXED" /D "_USRDLL" /D "NDEBUG" /D "LIBMAD_EXPORTS" /c /GX 
# ADD CPP /nologo /D "inline=__inline" /D "FPM_DEFAULT" /D "OPT_SPEED" /D "ASO_INTERLEAVE1" /D "BUILDFIXED" /D "_USRDLL" /D "NDEBUG" /D "LIBMAD_EXPORTS" /c /GX 
# ADD BASE MTL /nologo /win32 
# ADD MTL /nologo /win32 
# ADD BASE RSC /l 1033 
# ADD RSC /l 1033 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo 
# ADD BSC32 /nologo 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /out:"..\$(PlatformName)\$(ConfigurationName)\libmad.plg" /pdbtype:sept /subsystem:windows 
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /out:"..\$(PlatformName)\$(ConfigurationName)\libmad.plg" /pdbtype:sept /subsystem:windows 

!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 6 Professional SDK (ARMV4I) Release"

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
# ADD BASE CPP /nologo /MT /Zi /W3 /O2 /D "inline=__inline" /D "FPM_DEFAULT" /D "OPT_SPEED" /D "ASO_INTERLEAVE1" /D "BUILDFIXED" /D "_WIN32_WCE=$(CEVER)" /D "UNDER_CE=$(CEVER)" /D "WINCE" /D "$(PLATFORMDEFINES)" /D "NDEBUG" /D "_WINDOWS" /D "_USRDLL" /D "LIBMAD_EXPORTS" /D "$(ARCHFAM)" /D "$(_ARCHFAM_)" /D "_UNICODE" /D "UNICODE" /D "_UNICODE" PRECOMP_VC7_TOBEREMOVED /c /GX 
# ADD CPP /nologo /MT /Zi /W3 /O2 /D "inline=__inline" /D "FPM_DEFAULT" /D "OPT_SPEED" /D "ASO_INTERLEAVE1" /D "BUILDFIXED" /D "_WIN32_WCE=$(CEVER)" /D "UNDER_CE=$(CEVER)" /D "WINCE" /D "$(PLATFORMDEFINES)" /D "NDEBUG" /D "_WINDOWS" /D "_USRDLL" /D "LIBMAD_EXPORTS" /D "$(ARCHFAM)" /D "$(_ARCHFAM_)" /D "_UNICODE" /D "UNICODE" /D "_UNICODE" PRECOMP_VC7_TOBEREMOVED /c /GX 
# ADD BASE MTL /nologo /win32 
# ADD MTL /nologo /win32 
# ADD BASE RSC /l 1033 /d "NDEBUG" /d "_UNICODE" /d "UNICODE" /d "_WIN32_WCE" /d "UNDER_CE" /i "$(IntDir)" 
# ADD RSC /l 1033 /d "NDEBUG" /d "_UNICODE" /d "UNICODE" /d "_WIN32_WCE" /d "UNDER_CE" /i "$(IntDir)" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo 
# ADD BSC32 /nologo 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib commctrl.lib coredll.lib /nologo /dll /out:"..\$(PlatformName)\$(ConfigurationName)\libmad.plg" /incremental:no /debug /pdb:"..\$(PlatformName)\$(ConfigurationName)\libmad.pdb" /pdbtype:sept /subsystem:windows /opt:ref /opt:icf /implib:"$(OutDir)/libmad.lib" /ALIGN:4096 /subsystem:windowsce,4.20 /ARMPADCODE
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib commctrl.lib coredll.lib /nologo /dll /out:"..\$(PlatformName)\$(ConfigurationName)\libmad.plg" /incremental:no /debug /pdb:"..\$(PlatformName)\$(ConfigurationName)\libmad.pdb" /pdbtype:sept /subsystem:windows /opt:ref /opt:icf /implib:"$(OutDir)/libmad.lib" /ALIGN:4096 /subsystem:windowsce,4.20 /ARMPADCODE

!ELSEIF  "$(CFG)" == "libmad - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Pocket PC 2003 (ARMV4)\$(ConfigurationName)"
# PROP BASE Intermediate_Dir "Pocket PC 2003 (ARMV4)\$(ConfigurationName)"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Pocket PC 2003 (ARMV4)\$(ConfigurationName)"
# PROP Intermediate_Dir "Pocket PC 2003 (ARMV4)\$(ConfigurationName)"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MT /Zi /W3 /O2 /D "inline=__inline" /D "FPM_DEFAULT" /D "OPT_SPEED" /D "ASO_INTERLEAVE1" /D "BUILDFIXED" /D "_WIN32_WCE=$(CEVER)" /D "UNDER_CE=$(CEVER)" /D "WINCE" /D "$(PLATFORMDEFINES)" /D "NDEBUG" /D "_WINDOWS" /D "_USRDLL" /D "LIBMAD_EXPORTS" /D "$(ARCHFAM)" /D "$(_ARCHFAM_)" /D "_UNICODE" /D "UNICODE" /D "_UNICODE" PRECOMP_VC7_TOBEREMOVED /c /GX 
# ADD CPP /nologo /MT /Zi /W3 /O2 /D "inline=__inline" /D "FPM_DEFAULT" /D "OPT_SPEED" /D "ASO_INTERLEAVE1" /D "BUILDFIXED" /D "_WIN32_WCE=$(CEVER)" /D "UNDER_CE=$(CEVER)" /D "WINCE" /D "$(PLATFORMDEFINES)" /D "NDEBUG" /D "_WINDOWS" /D "_USRDLL" /D "LIBMAD_EXPORTS" /D "$(ARCHFAM)" /D "$(_ARCHFAM_)" /D "_UNICODE" /D "UNICODE" /D "_UNICODE" PRECOMP_VC7_TOBEREMOVED /c /GX 
# ADD BASE MTL /nologo /win32 
# ADD MTL /nologo /win32 
# ADD BASE RSC /l 1033 /d "NDEBUG" /d "_UNICODE" /d "UNICODE" /d "_WIN32_WCE" /d "UNDER_CE" /i "$(IntDir)" 
# ADD RSC /l 1033 /d "NDEBUG" /d "_UNICODE" /d "UNICODE" /d "_WIN32_WCE" /d "UNDER_CE" /i "$(IntDir)" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo 
# ADD BSC32 /nologo 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib commctrl.lib coredll.lib /nologo /dll /out:"Pocket PC 2003 (ARMV4)\$(ConfigurationName)\libmad.plg" /incremental:no /debug /pdb:"Pocket PC 2003 (ARMV4)\$(ConfigurationName)\libmad.pdb" /pdbtype:sept /subsystem:windows /opt:ref /opt:icf /implib:"$(OutDir)/libmad.lib" /ALIGN:4096 /subsystem:windowsce,4.20 /machine:ARM /ARMPADCODE
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib commctrl.lib coredll.lib /nologo /dll /out:"Pocket PC 2003 (ARMV4)\$(ConfigurationName)\libmad.plg" /incremental:no /debug /pdb:"Pocket PC 2003 (ARMV4)\$(ConfigurationName)\libmad.pdb" /pdbtype:sept /subsystem:windows /opt:ref /opt:icf /implib:"$(OutDir)/libmad.lib" /ALIGN:4096 /subsystem:windowsce,4.20 /machine:ARM /ARMPADCODE

!ELSEIF  "$(CFG)" == "libmad - Smartphone 2003 (ARMV4) cegcc-flac-ffmpeg-release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Smartphone 2003 (ARMV4)\$(ConfigurationName)"
# PROP BASE Intermediate_Dir "Smartphone 2003 (ARMV4)\$(ConfigurationName)"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Smartphone 2003 (ARMV4)\$(ConfigurationName)"
# PROP Intermediate_Dir "Smartphone 2003 (ARMV4)\$(ConfigurationName)"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MT /Zi /W3 /O2 /D "inline=__inline" /D "FPM_DEFAULT" /D "OPT_SPEED" /D "ASO_INTERLEAVE1" /D "BUILDFIXED" /D "_WIN32_WCE=$(CEVER)" /D "UNDER_CE=$(CEVER)" /D "WINCE" /D "$(PLATFORMDEFINES)" /D "NDEBUG" /D "_WINDOWS" /D "_USRDLL" /D "LIBMAD_EXPORTS" /D "$(ARCHFAM)" /D "$(_ARCHFAM_)" /D "_UNICODE" /D "UNICODE" /D "_UNICODE" PRECOMP_VC7_TOBEREMOVED /c /GX 
# ADD CPP /nologo /MT /Zi /W3 /O2 /D "inline=__inline" /D "FPM_DEFAULT" /D "OPT_SPEED" /D "ASO_INTERLEAVE1" /D "BUILDFIXED" /D "_WIN32_WCE=$(CEVER)" /D "UNDER_CE=$(CEVER)" /D "WINCE" /D "$(PLATFORMDEFINES)" /D "NDEBUG" /D "_WINDOWS" /D "_USRDLL" /D "LIBMAD_EXPORTS" /D "$(ARCHFAM)" /D "$(_ARCHFAM_)" /D "_UNICODE" /D "UNICODE" /D "_UNICODE" PRECOMP_VC7_TOBEREMOVED /c /GX 
# ADD BASE MTL /nologo /win32 
# ADD MTL /nologo /win32 
# ADD BASE RSC /l 1033 /d "NDEBUG" /d "_UNICODE" /d "UNICODE" /d "_WIN32_WCE" /d "UNDER_CE" /i "$(IntDir)" 
# ADD RSC /l 1033 /d "NDEBUG" /d "_UNICODE" /d "UNICODE" /d "_WIN32_WCE" /d "UNDER_CE" /i "$(IntDir)" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo 
# ADD BSC32 /nologo 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /out:"Smartphone 2003 (ARMV4)\$(ConfigurationName)\libmad.plg" /incremental:no /debug /pdb:"Smartphone 2003 (ARMV4)\$(ConfigurationName)\libmad.pdb" /pdbtype:sept /subsystem:windows /opt:ref /opt:icf /implib:"$(OutDir)/libmad.lib"  /subsystem:windowsce,4.20 /machine:ARM /ARMPADCODE
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /out:"Smartphone 2003 (ARMV4)\$(ConfigurationName)\libmad.plg" /incremental:no /debug /pdb:"Smartphone 2003 (ARMV4)\$(ConfigurationName)\libmad.pdb" /pdbtype:sept /subsystem:windows /opt:ref /opt:icf /implib:"$(OutDir)/libmad.lib"  /subsystem:windowsce,4.20 /machine:ARM /ARMPADCODE

!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Windows Mobile 5.0 Pocket PC SDK (ARMV4I)\$(ConfigurationName)"
# PROP BASE Intermediate_Dir "Windows Mobile 5.0 Pocket PC SDK (ARMV4I)\$(ConfigurationName)"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Windows Mobile 5.0 Pocket PC SDK (ARMV4I)\$(ConfigurationName)"
# PROP Intermediate_Dir "Windows Mobile 5.0 Pocket PC SDK (ARMV4I)\$(ConfigurationName)"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MT /Zi /W3 /O2 /D "inline=__inline" /D "FPM_DEFAULT" /D "OPT_SPEED" /D "ASO_INTERLEAVE1" /D "BUILDFIXED" /D "_WIN32_WCE=$(CEVER)" /D "UNDER_CE=$(CEVER)" /D "WINCE" /D "$(PLATFORMDEFINES)" /D "NDEBUG" /D "_WINDOWS" /D "_USRDLL" /D "LIBMAD_EXPORTS" /D "$(ARCHFAM)" /D "$(_ARCHFAM_)" /D "_UNICODE" /D "UNICODE" /D "_UNICODE" PRECOMP_VC7_TOBEREMOVED /c /GX 
# ADD CPP /nologo /MT /Zi /W3 /O2 /D "inline=__inline" /D "FPM_DEFAULT" /D "OPT_SPEED" /D "ASO_INTERLEAVE1" /D "BUILDFIXED" /D "_WIN32_WCE=$(CEVER)" /D "UNDER_CE=$(CEVER)" /D "WINCE" /D "$(PLATFORMDEFINES)" /D "NDEBUG" /D "_WINDOWS" /D "_USRDLL" /D "LIBMAD_EXPORTS" /D "$(ARCHFAM)" /D "$(_ARCHFAM_)" /D "_UNICODE" /D "UNICODE" /D "_UNICODE" PRECOMP_VC7_TOBEREMOVED /c /GX 
# ADD BASE MTL /nologo /win32 
# ADD MTL /nologo /win32 
# ADD BASE RSC /l 1033 /d "NDEBUG" /d "_UNICODE" /d "UNICODE" /d "_WIN32_WCE" /d "UNDER_CE" /i "$(IntDir)" 
# ADD RSC /l 1033 /d "NDEBUG" /d "_UNICODE" /d "UNICODE" /d "_WIN32_WCE" /d "UNDER_CE" /i "$(IntDir)" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo 
# ADD BSC32 /nologo 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /out:"Windows Mobile 5.0 Pocket PC SDK (ARMV4I)\$(ConfigurationName)\libmad.plg" /incremental:no /debug /pdb:"Windows Mobile 5.0 Pocket PC SDK (ARMV4I)\$(ConfigurationName)\libmad.pdb" /pdbtype:sept /subsystem:windows /opt:ref /opt:icf /implib:"$(OutDir)/libmad.lib"  /subsystem:windowsce,5.01 /machine:THUMB
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /out:"Windows Mobile 5.0 Pocket PC SDK (ARMV4I)\$(ConfigurationName)\libmad.plg" /incremental:no /debug /pdb:"Windows Mobile 5.0 Pocket PC SDK (ARMV4I)\$(ConfigurationName)\libmad.pdb" /pdbtype:sept /subsystem:windows /opt:ref /opt:icf /implib:"$(OutDir)/libmad.lib"  /subsystem:windowsce,5.01 /machine:THUMB

!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Smartphone SDK (ARMV4I) cegcc-flac-ffmpeg-release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Windows Mobile 5.0 Smartphone SDK (ARMV4I)\$(ConfigurationName)"
# PROP BASE Intermediate_Dir "Windows Mobile 5.0 Smartphone SDK (ARMV4I)\$(ConfigurationName)"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Windows Mobile 5.0 Smartphone SDK (ARMV4I)\$(ConfigurationName)"
# PROP Intermediate_Dir "Windows Mobile 5.0 Smartphone SDK (ARMV4I)\$(ConfigurationName)"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MT /Zi /W3 /O2 /D "inline=__inline" /D "FPM_DEFAULT" /D "OPT_SPEED" /D "ASO_INTERLEAVE1" /D "BUILDFIXED" /D "_WIN32_WCE=$(CEVER)" /D "UNDER_CE=$(CEVER)" /D "WINCE" /D "$(PLATFORMDEFINES)" /D "NDEBUG" /D "_WINDOWS" /D "_USRDLL" /D "LIBMAD_EXPORTS" /D "$(ARCHFAM)" /D "$(_ARCHFAM_)" /D "_UNICODE" /D "UNICODE" /D "_UNICODE" PRECOMP_VC7_TOBEREMOVED /c /GX 
# ADD CPP /nologo /MT /Zi /W3 /O2 /D "inline=__inline" /D "FPM_DEFAULT" /D "OPT_SPEED" /D "ASO_INTERLEAVE1" /D "BUILDFIXED" /D "_WIN32_WCE=$(CEVER)" /D "UNDER_CE=$(CEVER)" /D "WINCE" /D "$(PLATFORMDEFINES)" /D "NDEBUG" /D "_WINDOWS" /D "_USRDLL" /D "LIBMAD_EXPORTS" /D "$(ARCHFAM)" /D "$(_ARCHFAM_)" /D "_UNICODE" /D "UNICODE" /D "_UNICODE" PRECOMP_VC7_TOBEREMOVED /c /GX 
# ADD BASE MTL /nologo /win32 
# ADD MTL /nologo /win32 
# ADD BASE RSC /l 1033 /d "NDEBUG" /d "_UNICODE" /d "UNICODE" /d "_WIN32_WCE" /d "UNDER_CE" /i "$(IntDir)" 
# ADD RSC /l 1033 /d "NDEBUG" /d "_UNICODE" /d "UNICODE" /d "_WIN32_WCE" /d "UNDER_CE" /i "$(IntDir)" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo 
# ADD BSC32 /nologo 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /out:"Windows Mobile 5.0 Smartphone SDK (ARMV4I)\$(ConfigurationName)\libmad.plg" /incremental:no /debug /pdb:"Windows Mobile 5.0 Smartphone SDK (ARMV4I)\$(ConfigurationName)\libmad.pdb" /pdbtype:sept /subsystem:windows /opt:ref /opt:icf /implib:"$(OutDir)/libmad.lib"  /subsystem:windowsce,5.01 /machine:THUMB
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /out:"Windows Mobile 5.0 Smartphone SDK (ARMV4I)\$(ConfigurationName)\libmad.plg" /incremental:no /debug /pdb:"Windows Mobile 5.0 Smartphone SDK (ARMV4I)\$(ConfigurationName)\libmad.pdb" /pdbtype:sept /subsystem:windows /opt:ref /opt:icf /implib:"$(OutDir)/libmad.lib"  /subsystem:windowsce,5.01 /machine:THUMB

!ELSEIF  "$(CFG)" == "libmad - Win32 cegcc-flac-ffmpeg-release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "$(ConfigurationName)"
# PROP BASE Intermediate_Dir "$(ConfigurationName)"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "$(ConfigurationName)"
# PROP Intermediate_Dir "$(ConfigurationName)"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /D "inline=__inline" /D "FPM_DEFAULT" /D "OPT_SPEED" /D "ASO_INTERLEAVE1" /D "BUILDFIXED" /D "_USRDLL" /D "NDEBUG" /D "LIBMAD_EXPORTS" /c /GX 
# ADD CPP /nologo /D "inline=__inline" /D "FPM_DEFAULT" /D "OPT_SPEED" /D "ASO_INTERLEAVE1" /D "BUILDFIXED" /D "_USRDLL" /D "NDEBUG" /D "LIBMAD_EXPORTS" /c /GX 
# ADD BASE MTL /nologo /win32 
# ADD MTL /nologo /win32 
# ADD BASE RSC /l 1033 
# ADD RSC /l 1033 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo 
# ADD BSC32 /nologo 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /out:"$(ConfigurationName)\libmad.plg" /pdbtype:sept /subsystem:windows 
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /out:"$(ConfigurationName)\libmad.plg" /pdbtype:sept /subsystem:windows 

!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Windows Mobile 6 Professional SDK (ARMV4I)\$(ConfigurationName)"
# PROP BASE Intermediate_Dir "Windows Mobile 6 Professional SDK (ARMV4I)\$(ConfigurationName)"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Windows Mobile 6 Professional SDK (ARMV4I)\$(ConfigurationName)"
# PROP Intermediate_Dir "Windows Mobile 6 Professional SDK (ARMV4I)\$(ConfigurationName)"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MT /Zi /W3 /O2 /D "inline=__inline" /D "FPM_DEFAULT" /D "OPT_SPEED" /D "ASO_INTERLEAVE1" /D "BUILDFIXED" /D "_WIN32_WCE=$(CEVER)" /D "UNDER_CE=$(CEVER)" /D "WINCE" /D "$(PLATFORMDEFINES)" /D "NDEBUG" /D "_WINDOWS" /D "_USRDLL" /D "LIBMAD_EXPORTS" /D "$(ARCHFAM)" /D "$(_ARCHFAM_)" /D "_UNICODE" /D "UNICODE" /D "_UNICODE" PRECOMP_VC7_TOBEREMOVED /c /GX 
# ADD CPP /nologo /MT /Zi /W3 /O2 /D "inline=__inline" /D "FPM_DEFAULT" /D "OPT_SPEED" /D "ASO_INTERLEAVE1" /D "BUILDFIXED" /D "_WIN32_WCE=$(CEVER)" /D "UNDER_CE=$(CEVER)" /D "WINCE" /D "$(PLATFORMDEFINES)" /D "NDEBUG" /D "_WINDOWS" /D "_USRDLL" /D "LIBMAD_EXPORTS" /D "$(ARCHFAM)" /D "$(_ARCHFAM_)" /D "_UNICODE" /D "UNICODE" /D "_UNICODE" PRECOMP_VC7_TOBEREMOVED /c /GX 
# ADD BASE MTL /nologo /win32 
# ADD MTL /nologo /win32 
# ADD BASE RSC /l 1033 /d "NDEBUG" /d "_UNICODE" /d "UNICODE" /d "_WIN32_WCE" /d "UNDER_CE" /i "$(IntDir)" 
# ADD RSC /l 1033 /d "NDEBUG" /d "_UNICODE" /d "UNICODE" /d "_WIN32_WCE" /d "UNDER_CE" /i "$(IntDir)" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo 
# ADD BSC32 /nologo 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib commctrl.lib coredll.lib /nologo /dll /out:"Windows Mobile 6 Professional SDK (ARMV4I)\$(ConfigurationName)\libmad.plg" /incremental:no /debug /pdb:"Windows Mobile 6 Professional SDK (ARMV4I)\$(ConfigurationName)\libmad.pdb" /pdbtype:sept /subsystem:windows /opt:ref /opt:icf /implib:"$(OutDir)/libmad.lib" /ALIGN:4096 /subsystem:windowsce,4.20 /ARMPADCODE
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib commctrl.lib coredll.lib /nologo /dll /out:"Windows Mobile 6 Professional SDK (ARMV4I)\$(ConfigurationName)\libmad.plg" /incremental:no /debug /pdb:"Windows Mobile 6 Professional SDK (ARMV4I)\$(ConfigurationName)\libmad.pdb" /pdbtype:sept /subsystem:windows /opt:ref /opt:icf /implib:"$(OutDir)/libmad.lib" /ALIGN:4096 /subsystem:windowsce,4.20 /ARMPADCODE

!ENDIF

# Begin Target

# Name "libmad - Pocket PC 2003 (ARMV4) Debug"
# Name "libmad - Smartphone 2003 (ARMV4) Debug"
# Name "libmad - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"
# Name "libmad - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Debug"
# Name "libmad - Win32 Debug"
# Name "libmad - Windows Mobile 6 Professional SDK (ARMV4I) Debug"
# Name "libmad - Pocket PC 2003 (ARMV4) Release"
# Name "libmad - Smartphone 2003 (ARMV4) Release"
# Name "libmad - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"
# Name "libmad - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Release"
# Name "libmad - Win32 Release"
# Name "libmad - Windows Mobile 6 Professional SDK (ARMV4I) Release"
# Name "libmad - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"
# Name "libmad - Smartphone 2003 (ARMV4) cegcc-flac-ffmpeg-release"
# Name "libmad - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"
# Name "libmad - Windows Mobile 5.0 Smartphone SDK (ARMV4I) cegcc-flac-ffmpeg-release"
# Name "libmad - Win32 cegcc-flac-ffmpeg-release"
# Name "libmad - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cc;cxx;def;odl;idl;hpj;bat;asm;asmx"
# Begin Source File

SOURCE=.\libmad\bit.c

!IF  "$(CFG)" == "libmad - Pocket PC 2003 (ARMV4) Debug"

# ADD CPP /nologo /W1 /GZ /GX 
!ELSEIF  "$(CFG)" == "libmad - Smartphone 2003 (ARMV4) Debug"

# ADD CPP /nologo /W1 /GZ /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"

# ADD CPP /nologo /W1 /GZ /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Debug"

# ADD CPP /nologo /W1 /GZ /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 6 Professional SDK (ARMV4I) Debug"

# ADD CPP /nologo /W1 /GZ /GX 
!ELSEIF  "$(CFG)" == "libmad - Pocket PC 2003 (ARMV4) Release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Smartphone 2003 (ARMV4) Release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 6 Professional SDK (ARMV4I) Release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Smartphone 2003 (ARMV4) cegcc-flac-ffmpeg-release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Smartphone SDK (ARMV4I) cegcc-flac-ffmpeg-release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"

# ADD CPP /nologo /W1 /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=.\libmad\fixed.c

!IF  "$(CFG)" == "libmad - Pocket PC 2003 (ARMV4) Debug"

# ADD CPP /nologo /W1 /GZ /GX 
!ELSEIF  "$(CFG)" == "libmad - Smartphone 2003 (ARMV4) Debug"

# ADD CPP /nologo /W1 /GZ /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"

# ADD CPP /nologo /W1 /GZ /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Debug"

# ADD CPP /nologo /W1 /GZ /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 6 Professional SDK (ARMV4I) Debug"

# ADD CPP /nologo /W1 /GZ /GX 
!ELSEIF  "$(CFG)" == "libmad - Pocket PC 2003 (ARMV4) Release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Smartphone 2003 (ARMV4) Release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 6 Professional SDK (ARMV4I) Release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Smartphone 2003 (ARMV4) cegcc-flac-ffmpeg-release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Smartphone SDK (ARMV4I) cegcc-flac-ffmpeg-release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"

# ADD CPP /nologo /W1 /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=.\libmad\frame.c

!IF  "$(CFG)" == "libmad - Pocket PC 2003 (ARMV4) Debug"

# ADD CPP /nologo /W1 /GZ /GX 
!ELSEIF  "$(CFG)" == "libmad - Smartphone 2003 (ARMV4) Debug"

# ADD CPP /nologo /W1 /GZ /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"

# ADD CPP /nologo /W1 /GZ /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Debug"

# ADD CPP /nologo /W1 /GZ /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 6 Professional SDK (ARMV4I) Debug"

# ADD CPP /nologo /W1 /GZ /GX 
!ELSEIF  "$(CFG)" == "libmad - Pocket PC 2003 (ARMV4) Release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Smartphone 2003 (ARMV4) Release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 6 Professional SDK (ARMV4I) Release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Smartphone 2003 (ARMV4) cegcc-flac-ffmpeg-release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Smartphone SDK (ARMV4I) cegcc-flac-ffmpeg-release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"

# ADD CPP /nologo /W1 /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=.\libmad\huffmanmad.c

!IF  "$(CFG)" == "libmad - Pocket PC 2003 (ARMV4) Debug"

# ADD CPP /nologo /W1 /GZ /GX 
!ELSEIF  "$(CFG)" == "libmad - Smartphone 2003 (ARMV4) Debug"

# ADD CPP /nologo /W1 /GZ /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"

# ADD CPP /nologo /W1 /GZ /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Debug"

# ADD CPP /nologo /W1 /GZ /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 6 Professional SDK (ARMV4I) Debug"

# ADD CPP /nologo /W1 /GZ /GX 
!ELSEIF  "$(CFG)" == "libmad - Pocket PC 2003 (ARMV4) Release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Smartphone 2003 (ARMV4) Release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 6 Professional SDK (ARMV4I) Release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Smartphone 2003 (ARMV4) cegcc-flac-ffmpeg-release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Smartphone SDK (ARMV4I) cegcc-flac-ffmpeg-release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"

# ADD CPP /nologo /W1 /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=.\libmad\layer12.c

!IF  "$(CFG)" == "libmad - Pocket PC 2003 (ARMV4) Debug"

# ADD CPP /nologo /W1 /GZ /GX 
!ELSEIF  "$(CFG)" == "libmad - Smartphone 2003 (ARMV4) Debug"

# ADD CPP /nologo /W1 /GZ /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"

# ADD CPP /nologo /W1 /GZ /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Debug"

# ADD CPP /nologo /W1 /GZ /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 6 Professional SDK (ARMV4I) Debug"

# ADD CPP /nologo /W1 /GZ /GX 
!ELSEIF  "$(CFG)" == "libmad - Pocket PC 2003 (ARMV4) Release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Smartphone 2003 (ARMV4) Release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 6 Professional SDK (ARMV4I) Release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Smartphone 2003 (ARMV4) cegcc-flac-ffmpeg-release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Smartphone SDK (ARMV4I) cegcc-flac-ffmpeg-release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"

# ADD CPP /nologo /W1 /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=.\libmad\layer3.c

!IF  "$(CFG)" == "libmad - Pocket PC 2003 (ARMV4) Debug"

# ADD CPP /nologo /W1 /GZ /GX 
!ELSEIF  "$(CFG)" == "libmad - Smartphone 2003 (ARMV4) Debug"

# ADD CPP /nologo /W1 /GZ /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"

# ADD CPP /nologo /W1 /GZ /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Debug"

# ADD CPP /nologo /W1 /GZ /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 6 Professional SDK (ARMV4I) Debug"

# ADD CPP /nologo /W1 /GZ /GX 
!ELSEIF  "$(CFG)" == "libmad - Pocket PC 2003 (ARMV4) Release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Smartphone 2003 (ARMV4) Release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 6 Professional SDK (ARMV4I) Release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Smartphone 2003 (ARMV4) cegcc-flac-ffmpeg-release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Smartphone SDK (ARMV4I) cegcc-flac-ffmpeg-release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"

# ADD CPP /nologo /W1 /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=.\libmad.c

!IF  "$(CFG)" == "libmad - Pocket PC 2003 (ARMV4) Debug"

# ADD CPP /nologo /W1 /GZ /GX 
!ELSEIF  "$(CFG)" == "libmad - Smartphone 2003 (ARMV4) Debug"

# ADD CPP /nologo /W1 /GZ /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"

# ADD CPP /nologo /W1 /GZ /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Debug"

# ADD CPP /nologo /W1 /GZ /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 6 Professional SDK (ARMV4I) Debug"

# ADD CPP /nologo /W1 /GZ /GX 
!ELSEIF  "$(CFG)" == "libmad - Pocket PC 2003 (ARMV4) Release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Smartphone 2003 (ARMV4) Release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 6 Professional SDK (ARMV4I) Release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Smartphone 2003 (ARMV4) cegcc-flac-ffmpeg-release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Smartphone SDK (ARMV4I) cegcc-flac-ffmpeg-release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"

# ADD CPP /nologo /W1 /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=.\stdafx.c

!IF  "$(CFG)" == "libmad - Pocket PC 2003 (ARMV4) Debug"

# ADD CPP /nologo /W1 /GZ /GX 
!ELSEIF  "$(CFG)" == "libmad - Smartphone 2003 (ARMV4) Debug"

# ADD CPP /nologo /W1 /GZ /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"

# ADD CPP /nologo /W1 /GZ /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Debug"

# ADD CPP /nologo /W1 /GZ /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 6 Professional SDK (ARMV4I) Debug"

# ADD CPP /nologo /W1 /GZ /GX 
!ELSEIF  "$(CFG)" == "libmad - Pocket PC 2003 (ARMV4) Release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Smartphone 2003 (ARMV4) Release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 6 Professional SDK (ARMV4I) Release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Smartphone 2003 (ARMV4) cegcc-flac-ffmpeg-release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Smartphone SDK (ARMV4I) cegcc-flac-ffmpeg-release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"

# ADD CPP /nologo /W1 /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=.\libmad\stream.c

!IF  "$(CFG)" == "libmad - Pocket PC 2003 (ARMV4) Debug"

# ADD CPP /nologo /W1 /GZ /GX 
!ELSEIF  "$(CFG)" == "libmad - Smartphone 2003 (ARMV4) Debug"

# ADD CPP /nologo /W1 /GZ /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"

# ADD CPP /nologo /W1 /GZ /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Debug"

# ADD CPP /nologo /W1 /GZ /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 6 Professional SDK (ARMV4I) Debug"

# ADD CPP /nologo /W1 /GZ /GX 
!ELSEIF  "$(CFG)" == "libmad - Pocket PC 2003 (ARMV4) Release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Smartphone 2003 (ARMV4) Release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 6 Professional SDK (ARMV4I) Release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Smartphone 2003 (ARMV4) cegcc-flac-ffmpeg-release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Smartphone SDK (ARMV4I) cegcc-flac-ffmpeg-release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"

# ADD CPP /nologo /W1 /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=.\libmad\synth.c

!IF  "$(CFG)" == "libmad - Pocket PC 2003 (ARMV4) Debug"

# ADD CPP /nologo /W1 /GZ /GX 
!ELSEIF  "$(CFG)" == "libmad - Smartphone 2003 (ARMV4) Debug"

# ADD CPP /nologo /W1 /GZ /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"

# ADD CPP /nologo /W1 /GZ /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Debug"

# ADD CPP /nologo /W1 /GZ /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 6 Professional SDK (ARMV4I) Debug"

# ADD CPP /nologo /W1 /GZ /GX 
!ELSEIF  "$(CFG)" == "libmad - Pocket PC 2003 (ARMV4) Release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Smartphone 2003 (ARMV4) Release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 6 Professional SDK (ARMV4I) Release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Smartphone 2003 (ARMV4) cegcc-flac-ffmpeg-release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 5.0 Smartphone SDK (ARMV4I) cegcc-flac-ffmpeg-release"

# ADD CPP /nologo /W1 /GX 
!ELSEIF  "$(CFG)" == "libmad - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"

# ADD CPP /nologo /W1 /GX 
!ENDIF

# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl;inc;xsd"
# Begin Source File

SOURCE=.\libmad\bit.h
# End Source File
# Begin Source File

SOURCE=.\libmad\fixed.h
# End Source File
# Begin Source File

SOURCE=.\libmad\frame.h
# End Source File
# Begin Source File

SOURCE=.\libmad\global.h
# End Source File
# Begin Source File

SOURCE=.\libmad\huffman.h
# End Source File
# Begin Source File

SOURCE=.\libmad\layer12.h
# End Source File
# Begin Source File

SOURCE=.\libmad\layer3.h
# End Source File
# Begin Source File

SOURCE=.\libmad.h
# End Source File
# Begin Source File

SOURCE=.\libmad\mad.h
# End Source File
# Begin Source File

SOURCE=.\libmad\stream.h
# End Source File
# Begin Source File

SOURCE=.\libmad\synth.h
# End Source File
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "rc;ico;cur;bmp;dlg;rc2;rct;bin;rgs;gif;jpg;jpeg;jpe;resx;tiff;tif;png;wav"
# End Group
# End Target
# End Project


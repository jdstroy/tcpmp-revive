# Microsoft Developer Studio Project File - Name="wavpack" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

CFG=wavpack - Win32 Release
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "wavpack.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "wavpack.mak" CFG="wavpack - Win32 Release"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "wavpack - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "wavpack - Pocket PC 2003 (ARMV4) Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "wavpack - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "wavpack - Windows Mobile 6 Professional SDK (ARMV4I) Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "wavpack - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "wavpack - Pocket PC 2003 (ARMV4) Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "wavpack - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "wavpack - Windows Mobile 6 Professional SDK (ARMV4I) Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "wavpack - Win32 ReleaseNoPlugins" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "wavpack - Pocket PC 2003 (ARMV4) ReleaseNoPlugins" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "wavpack - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) ReleaseNoPlugins" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "wavpack - Windows Mobile 6 Professional SDK (ARMV4I) ReleaseNoPlugins" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "wavpack - Win32 Debug Unicode" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "wavpack - Pocket PC 2003 (ARMV4) Debug Unicode" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "wavpack - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug Unicode" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "wavpack - Windows Mobile 6 Professional SDK (ARMV4I) Debug Unicode" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "wavpack - Win32 Release Unicode" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "wavpack - Pocket PC 2003 (ARMV4) Release Unicode" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "wavpack - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release Unicode" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "wavpack - Windows Mobile 6 Professional SDK (ARMV4I) Release Unicode" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "wavpack - Win32 cegcc-flac-ffmpeg-release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "wavpack - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "wavpack - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "wavpack - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "wavpack - Win32 Release"

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
# ADD BASE CPP /nologo /MT /Zi /O2 /D "NDEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /GF /Gy /Fp".\Release/tta.pch" /Fo".\Release/" /Fd".\Release/" /c /GX 
# ADD CPP /nologo /MT /Zi /O2 /D "NDEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /GF /Gy /Fp".\Release/tta.pch" /Fo".\Release/" /Fd".\Release/" /c /GX 
# ADD BASE MTL /nologo /D"NDEBUG" /mktyplib203 /tlb".\Release\tta.tlb" /win32 
# ADD MTL /nologo /D"NDEBUG" /mktyplib203 /tlb".\Release\tta.tlb" /win32 
# ADD BASE RSC /l 1038 /d "NDEBUG" 
# ADD RSC /l 1038 /d "NDEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo /o ".\Release\tta.bsc" 
# ADD BSC32 /nologo /o ".\Release\tta.bsc" 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /out:"..\$(PlatformName)\$(ConfigurationName)\$(ProjectName).plg" /incremental:no /pdb:".\Release\wavpack.pdb" /pdbtype:sept /map:".\Release\wavpack.map" /subsystem:windows /implib:".\Release/wavpack.lib" /machine:ix86 
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /out:"..\$(PlatformName)\$(ConfigurationName)\$(ProjectName).plg" /incremental:no /pdb:".\Release\wavpack.pdb" /pdbtype:sept /map:".\Release\wavpack.map" /subsystem:windows /implib:".\Release/wavpack.lib" /machine:ix86 

!ELSEIF  "$(CFG)" == "wavpack - Pocket PC 2003 (ARMV4) Release"

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
# ADD BASE CPP /nologo /MT /Zi /O2 /D "NDEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "WAVPACK_EXPORTS" /D "_UNICODE" /GF /Gy /Fp".\Release/tta.pch" /Fo".\Release/" /Fd".\Release/" /c /GX 
# ADD CPP /nologo /MT /Zi /O2 /D "NDEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "WAVPACK_EXPORTS" /D "_UNICODE" /GF /Gy /Fp".\Release/tta.pch" /Fo".\Release/" /Fd".\Release/" /c /GX 
# ADD BASE MTL /nologo /D"NDEBUG" /mktyplib203 /tlb".\Release\tta.tlb" /win32 
# ADD MTL /nologo /D"NDEBUG" /mktyplib203 /tlb".\Release\tta.tlb" /win32 
# ADD BASE RSC /l 1038 /d "NDEBUG" 
# ADD RSC /l 1038 /d "NDEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo /o ".\Release\tta.bsc" 
# ADD BSC32 /nologo /o ".\Release\tta.bsc" 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib commctrl.lib coredll.lib /nologo /dll /out:"..\$(PlatformName)\$(ConfigurationName)\wavpack.plg" /incremental:no /pdb:".\Release\wavpack.pdb" /pdbtype:sept /map:".\Release\wavpack.map" /subsystem:windows /implib:".\Release/wavpack.lib" /ALIGN:4096 /subsystem:windowsce,4.20 /machine:ARM /ARMPADCODE
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib commctrl.lib coredll.lib /nologo /dll /out:"..\$(PlatformName)\$(ConfigurationName)\wavpack.plg" /incremental:no /pdb:".\Release\wavpack.pdb" /pdbtype:sept /map:".\Release\wavpack.map" /subsystem:windows /implib:".\Release/wavpack.lib" /ALIGN:4096 /subsystem:windowsce,4.20 /machine:ARM /ARMPADCODE

!ELSEIF  "$(CFG)" == "wavpack - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"

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
# ADD BASE CPP /nologo /MT /Zi /O2 /Ot /D "NDEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "_UNICODE" /GF /Gy /Fp".\Release/tta.pch" /Fo".\Release/" /Fd".\Release/" /c /GX 
# ADD CPP /nologo /MT /Zi /O2 /Ot /D "NDEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "_UNICODE" /GF /Gy /Fp".\Release/tta.pch" /Fo".\Release/" /Fd".\Release/" /c /GX 
# ADD BASE MTL /nologo /D"NDEBUG" /mktyplib203 /tlb".\Release\tta.tlb" /win32 
# ADD MTL /nologo /D"NDEBUG" /mktyplib203 /tlb".\Release\tta.tlb" /win32 
# ADD BASE RSC /l 1038 /d "NDEBUG" 
# ADD RSC /l 1038 /d "NDEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo /o ".\Release\tta.bsc" 
# ADD BSC32 /nologo /o ".\Release\tta.bsc" 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /out:"..\$(PlatformName)\$(ConfigurationName)\wavpack.plg" /incremental:no /pdb:".\Release\wavpack.pdb" /pdbtype:sept /map:".\Release\wavpack.map" /subsystem:windows /implib:".\Release/wavpack.lib" /ALIGN:4096 /subsystem:windowsce,5.01
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /out:"..\$(PlatformName)\$(ConfigurationName)\wavpack.plg" /incremental:no /pdb:".\Release\wavpack.pdb" /pdbtype:sept /map:".\Release\wavpack.map" /subsystem:windows /implib:".\Release/wavpack.lib" /ALIGN:4096 /subsystem:windowsce,5.01

!ELSEIF  "$(CFG)" == "wavpack - Windows Mobile 6 Professional SDK (ARMV4I) Release"

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
# ADD BASE CPP /nologo /MT /Zi /O2 /D "NDEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "_UNICODE" /GF /Gy /Fp".\Release/tta.pch" /Fo".\Release/" /Fd".\Release/" /c /GX 
# ADD CPP /nologo /MT /Zi /O2 /D "NDEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "_UNICODE" /GF /Gy /Fp".\Release/tta.pch" /Fo".\Release/" /Fd".\Release/" /c /GX 
# ADD BASE MTL /nologo /D"NDEBUG" /mktyplib203 /tlb".\Release\tta.tlb" /win32 
# ADD MTL /nologo /D"NDEBUG" /mktyplib203 /tlb".\Release\tta.tlb" /win32 
# ADD BASE RSC /l 1038 /d "NDEBUG" 
# ADD RSC /l 1038 /d "NDEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo /o ".\Release\tta.bsc" 
# ADD BSC32 /nologo /o ".\Release\tta.bsc" 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib commctrl.lib coredll.lib /nologo /dll /out:"..\$(PlatformName)\$(ConfigurationName)\wavpack.plg" /incremental:no /pdb:".\Release\wavpack.pdb" /pdbtype:sept /map:".\Release\wavpack.map" /subsystem:windows /implib:".\Release/wavpack.lib" /ALIGN:4096 /subsystem:windowsce,4.20 /ARMPADCODE
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib commctrl.lib coredll.lib /nologo /dll /out:"..\$(PlatformName)\$(ConfigurationName)\wavpack.plg" /incremental:no /pdb:".\Release\wavpack.pdb" /pdbtype:sept /map:".\Release\wavpack.map" /subsystem:windows /implib:".\Release/wavpack.lib" /ALIGN:4096 /subsystem:windowsce,4.20 /ARMPADCODE

!ELSEIF  "$(CFG)" == "wavpack - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "..\$(PlatformName)\$(ConfigurationName)"
# PROP BASE Intermediate_Dir "$(PlatformName)\$(ConfigurationName)"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "..\$(PlatformName)\$(ConfigurationName)"
# PROP Intermediate_Dir "$(PlatformName)\$(ConfigurationName)"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MDd /ZI /Od /D "_DEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /Gm /Fp".\Debug/tta.pch" /Fo".\Debug/" /Fd".\Debug/" /GZ /c /GX 
# ADD CPP /nologo /MDd /ZI /Od /D "_DEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /Gm /Fp".\Debug/tta.pch" /Fo".\Debug/" /Fd".\Debug/" /GZ /c /GX 
# ADD BASE MTL /nologo /D"_DEBUG" /mktyplib203 /tlb".\Debug\tta.tlb" /win32 
# ADD MTL /nologo /D"_DEBUG" /mktyplib203 /tlb".\Debug\tta.tlb" /win32 
# ADD BASE RSC /l 1038 /d "_DEBUG" 
# ADD RSC /l 1038 /d "_DEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo /o ".\Debug\tta.bsc" 
# ADD BSC32 /nologo /o ".\Debug\tta.bsc" 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /out:"..\debug\wavpack.plg" /incremental:yes /debug /pdb:".\Debug\wavpack.pdb" /pdbtype:sept /subsystem:windows /implib:".\Debug/wavpack.lib" /machine:ix86 
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /out:"..\debug\wavpack.plg" /incremental:yes /debug /pdb:".\Debug\wavpack.pdb" /pdbtype:sept /subsystem:windows /implib:".\Debug/wavpack.lib" /machine:ix86 

!ELSEIF  "$(CFG)" == "wavpack - Pocket PC 2003 (ARMV4) Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "..\$(PlatformName)\$(ConfigurationName)"
# PROP BASE Intermediate_Dir "$(PlatformName)\$(ConfigurationName)"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "..\$(PlatformName)\$(ConfigurationName)"
# PROP Intermediate_Dir "$(PlatformName)\$(ConfigurationName)"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MDd /Od /D "_DEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "_UNICODE" /Gm /Fp".\Debug/tta.pch" /Fo".\Debug/" /Fd".\Debug/" /GZ /c /GX 
# ADD CPP /nologo /MDd /Od /D "_DEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "_UNICODE" /Gm /Fp".\Debug/tta.pch" /Fo".\Debug/" /Fd".\Debug/" /GZ /c /GX 
# ADD BASE MTL /nologo /D"_DEBUG" /mktyplib203 /tlb".\Debug\tta.tlb" /win32 
# ADD MTL /nologo /D"_DEBUG" /mktyplib203 /tlb".\Debug\tta.tlb" /win32 
# ADD BASE RSC /l 1038 /d "_DEBUG" 
# ADD RSC /l 1038 /d "_DEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo /o ".\Debug\tta.bsc" 
# ADD BSC32 /nologo /o ".\Debug\tta.bsc" 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib commctrl.lib coredll.lib /nologo /dll /out:"..\$(PlatformName)\$(ConfigurationName)\wavpack.plg" /incremental:yes /debug /pdb:".\Debug\wavpack.pdb" /pdbtype:sept /subsystem:windows /implib:".\Debug/wavpack.lib" /ALIGN:4096 /subsystem:windowsce,4.20 /machine:ARM /ARMPADCODE
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib commctrl.lib coredll.lib /nologo /dll /out:"..\$(PlatformName)\$(ConfigurationName)\wavpack.plg" /incremental:yes /debug /pdb:".\Debug\wavpack.pdb" /pdbtype:sept /subsystem:windows /implib:".\Debug/wavpack.lib" /ALIGN:4096 /subsystem:windowsce,4.20 /machine:ARM /ARMPADCODE

!ELSEIF  "$(CFG)" == "wavpack - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "..\$(PlatformName)\$(ConfigurationName)"
# PROP BASE Intermediate_Dir "$(PlatformName)\$(ConfigurationName)"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "..\$(PlatformName)\$(ConfigurationName)"
# PROP Intermediate_Dir "$(PlatformName)\$(ConfigurationName)"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MDd /Od /D "_DEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "_UNICODE" /Gm /Fp".\Debug/tta.pch" /Fo".\Debug/" /Fd".\Debug/" /GZ /c /GX 
# ADD CPP /nologo /MDd /Od /D "_DEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "_UNICODE" /Gm /Fp".\Debug/tta.pch" /Fo".\Debug/" /Fd".\Debug/" /GZ /c /GX 
# ADD BASE MTL /nologo /D"_DEBUG" /mktyplib203 /tlb".\Debug\tta.tlb" /win32 
# ADD MTL /nologo /D"_DEBUG" /mktyplib203 /tlb".\Debug\tta.tlb" /win32 
# ADD BASE RSC /l 1038 /d "_DEBUG" 
# ADD RSC /l 1038 /d "_DEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo /o ".\Debug\tta.bsc" 
# ADD BSC32 /nologo /o ".\Debug\tta.bsc" 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /out:"..\$(PlatformName)\$(ConfigurationName)\wavpack.plg" /incremental:yes /debug /pdb:".\Debug\wavpack.pdb" /pdbtype:sept /subsystem:windows /implib:".\Debug/wavpack.lib" /ALIGN:4096 /subsystem:windowsce,2.01
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /out:"..\$(PlatformName)\$(ConfigurationName)\wavpack.plg" /incremental:yes /debug /pdb:".\Debug\wavpack.pdb" /pdbtype:sept /subsystem:windows /implib:".\Debug/wavpack.lib" /ALIGN:4096 /subsystem:windowsce,2.01

!ELSEIF  "$(CFG)" == "wavpack - Windows Mobile 6 Professional SDK (ARMV4I) Debug"

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
# ADD BASE CPP /nologo /MDd /Od /D "_DEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "_UNICODE" /Gm /Fp".\Debug/tta.pch" /Fo".\Debug/" /Fd".\Debug/" /GZ /c /GX 
# ADD CPP /nologo /MDd /Od /D "_DEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "_UNICODE" /Gm /Fp".\Debug/tta.pch" /Fo".\Debug/" /Fd".\Debug/" /GZ /c /GX 
# ADD BASE MTL /nologo /D"_DEBUG" /mktyplib203 /tlb".\Debug\tta.tlb" /win32 
# ADD MTL /nologo /D"_DEBUG" /mktyplib203 /tlb".\Debug\tta.tlb" /win32 
# ADD BASE RSC /l 1038 /d "_DEBUG" 
# ADD RSC /l 1038 /d "_DEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo /o ".\Debug\tta.bsc" 
# ADD BSC32 /nologo /o ".\Debug\tta.bsc" 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib commctrl.lib coredll.lib /nologo /dll /out:"Windows Mobile 6 Professional SDK (ARMV4I)\$(ConfigurationName)\wavpack.plg" /incremental:yes /debug /pdb:".\Debug\wavpack.pdb" /pdbtype:sept /subsystem:windows /implib:".\Debug/wavpack.lib" /ALIGN:4096 /subsystem:windowsce,4.20 /machine:ARM /ARMPADCODE
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib commctrl.lib coredll.lib /nologo /dll /out:"Windows Mobile 6 Professional SDK (ARMV4I)\$(ConfigurationName)\wavpack.plg" /incremental:yes /debug /pdb:".\Debug\wavpack.pdb" /pdbtype:sept /subsystem:windows /implib:".\Debug/wavpack.lib" /ALIGN:4096 /subsystem:windowsce,4.20 /machine:ARM /ARMPADCODE

!ELSEIF  "$(CFG)" == "wavpack - Win32 ReleaseNoPlugins"

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
# ADD BASE CPP /nologo /MT /Zi /O2 /D "NDEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "NO_PLUGINS" /D "_MBCS" /GF /Gy /Fp".\Release/tta.pch" /Fo".\Release/" /Fd".\Release/" /c /GX 
# ADD CPP /nologo /MT /Zi /O2 /D "NDEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "NO_PLUGINS" /D "_MBCS" /GF /Gy /Fp".\Release/tta.pch" /Fo".\Release/" /Fd".\Release/" /c /GX 
# ADD BASE MTL /nologo /D"NDEBUG" /mktyplib203 /tlb".\Release\tta.tlb" /win32 
# ADD MTL /nologo /D"NDEBUG" /mktyplib203 /tlb".\Release\tta.tlb" /win32 
# ADD BASE RSC /l 1038 /d "NDEBUG" 
# ADD RSC /l 1038 /d "NDEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo /o ".\Release\tta.bsc" 
# ADD BSC32 /nologo /o ".\Release\tta.bsc" 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /pdbtype:sept /subsystem:windows 
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /pdbtype:sept /subsystem:windows 

!ELSEIF  "$(CFG)" == "wavpack - Pocket PC 2003 (ARMV4) ReleaseNoPlugins"

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
# ADD BASE CPP /nologo /MT /Zi /O2 /D "NDEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "_UNICODE" /GF /Gy /Fp".\Release/tta.pch" /Fo".\Release/" /Fd".\Release/" /c /GX 
# ADD CPP /nologo /MT /Zi /O2 /D "NDEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "_UNICODE" /GF /Gy /Fp".\Release/tta.pch" /Fo".\Release/" /Fd".\Release/" /c /GX 
# ADD BASE MTL /nologo /D"NDEBUG" /mktyplib203 /tlb".\Release\tta.tlb" /win32 
# ADD MTL /nologo /D"NDEBUG" /mktyplib203 /tlb".\Release\tta.tlb" /win32 
# ADD BASE RSC /l 1038 /d "NDEBUG" 
# ADD RSC /l 1038 /d "NDEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo /o ".\Release\tta.bsc" 
# ADD BSC32 /nologo /o ".\Release\tta.bsc" 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib commctrl.lib coredll.lib /nologo /dll /out:"..\$(PlatformName)\$(ConfigurationName)\wavpack.plg" /incremental:no /pdb:".\Release\wavpack.pdb" /pdbtype:sept /map:".\Release\wavpack.map" /subsystem:windows /implib:".\Release/wavpack.lib" /ALIGN:4096 /subsystem:windowsce,4.20 /machine:ARM /ARMPADCODE
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib commctrl.lib coredll.lib /nologo /dll /out:"..\$(PlatformName)\$(ConfigurationName)\wavpack.plg" /incremental:no /pdb:".\Release\wavpack.pdb" /pdbtype:sept /map:".\Release\wavpack.map" /subsystem:windows /implib:".\Release/wavpack.lib" /ALIGN:4096 /subsystem:windowsce,4.20 /machine:ARM /ARMPADCODE

!ELSEIF  "$(CFG)" == "wavpack - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) ReleaseNoPlugins"

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
# ADD BASE CPP /nologo /MT /Zi /O2 /D "NDEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "_UNICODE" /GF /Gy /Fp".\Release/tta.pch" /Fo".\Release/" /Fd".\Release/" /c /GX 
# ADD CPP /nologo /MT /Zi /O2 /D "NDEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "_UNICODE" /GF /Gy /Fp".\Release/tta.pch" /Fo".\Release/" /Fd".\Release/" /c /GX 
# ADD BASE MTL /nologo /D"NDEBUG" /mktyplib203 /tlb".\Release\tta.tlb" /win32 
# ADD MTL /nologo /D"NDEBUG" /mktyplib203 /tlb".\Release\tta.tlb" /win32 
# ADD BASE RSC /l 1038 /d "NDEBUG" 
# ADD RSC /l 1038 /d "NDEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo /o ".\Release\tta.bsc" 
# ADD BSC32 /nologo /o ".\Release\tta.bsc" 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /out:"..\$(PlatformName)\$(ConfigurationName)\wavpack.plg" /incremental:no /pdb:".\Release\wavpack.pdb" /pdbtype:sept /map:".\Release\wavpack.map" /subsystem:windows /implib:".\Release/wavpack.lib" /ALIGN:4096 /subsystem:windowsce,2.01
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /out:"..\$(PlatformName)\$(ConfigurationName)\wavpack.plg" /incremental:no /pdb:".\Release\wavpack.pdb" /pdbtype:sept /map:".\Release\wavpack.map" /subsystem:windows /implib:".\Release/wavpack.lib" /ALIGN:4096 /subsystem:windowsce,2.01

!ELSEIF  "$(CFG)" == "wavpack - Windows Mobile 6 Professional SDK (ARMV4I) ReleaseNoPlugins"

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
# ADD BASE CPP /nologo /MT /Zi /O2 /D "NDEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "_UNICODE" /GF /Gy /Fp".\Release/tta.pch" /Fo".\Release/" /Fd".\Release/" /c /GX 
# ADD CPP /nologo /MT /Zi /O2 /D "NDEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "_UNICODE" /GF /Gy /Fp".\Release/tta.pch" /Fo".\Release/" /Fd".\Release/" /c /GX 
# ADD BASE MTL /nologo /D"NDEBUG" /mktyplib203 /tlb".\Release\tta.tlb" /win32 
# ADD MTL /nologo /D"NDEBUG" /mktyplib203 /tlb".\Release\tta.tlb" /win32 
# ADD BASE RSC /l 1038 /d "NDEBUG" 
# ADD RSC /l 1038 /d "NDEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo /o ".\Release\tta.bsc" 
# ADD BSC32 /nologo /o ".\Release\tta.bsc" 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib commctrl.lib coredll.lib /nologo /dll /out:"Windows Mobile 6 Professional SDK (ARMV4I)\$(ConfigurationName)\wavpack.plg" /incremental:no /pdb:".\Release\wavpack.pdb" /pdbtype:sept /map:".\Release\wavpack.map" /subsystem:windows /implib:".\Release/wavpack.lib" /ALIGN:4096 /subsystem:windowsce,4.20 /machine:ARM /ARMPADCODE
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib commctrl.lib coredll.lib /nologo /dll /out:"Windows Mobile 6 Professional SDK (ARMV4I)\$(ConfigurationName)\wavpack.plg" /incremental:no /pdb:".\Release\wavpack.pdb" /pdbtype:sept /map:".\Release\wavpack.map" /subsystem:windows /implib:".\Release/wavpack.lib" /ALIGN:4096 /subsystem:windowsce,4.20 /machine:ARM /ARMPADCODE

!ELSEIF  "$(CFG)" == "wavpack - Win32 Debug Unicode"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "..\$(PlatformName)\$(ConfigurationName)"
# PROP BASE Intermediate_Dir "$(PlatformName)\$(ConfigurationName)"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "..\$(PlatformName)\$(ConfigurationName)"
# PROP Intermediate_Dir "$(PlatformName)\$(ConfigurationName)"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MDd /ZI /Od /D "_DEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /Gm /Fp".\Debug/tta.pch" /Fo".\Debug/" /Fd".\Debug/" /GZ /c /GX 
# ADD CPP /nologo /MDd /ZI /Od /D "_DEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /Gm /Fp".\Debug/tta.pch" /Fo".\Debug/" /Fd".\Debug/" /GZ /c /GX 
# ADD BASE MTL /nologo /D"_DEBUG" /mktyplib203 /tlb".\Debug\tta.tlb" /win32 
# ADD MTL /nologo /D"_DEBUG" /mktyplib203 /tlb".\Debug\tta.tlb" /win32 
# ADD BASE RSC /l 1038 /d "_DEBUG" 
# ADD RSC /l 1038 /d "_DEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo /o ".\Debug\tta.bsc" 
# ADD BSC32 /nologo /o ".\Debug\tta.bsc" 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /out:"..\debug\wavpack.plg" /incremental:yes /debug /pdb:".\Debug\wavpack.pdb" /pdbtype:sept /subsystem:windows /implib:".\Debug/wavpack.lib" /machine:ix86 
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /out:"..\debug\wavpack.plg" /incremental:yes /debug /pdb:".\Debug\wavpack.pdb" /pdbtype:sept /subsystem:windows /implib:".\Debug/wavpack.lib" /machine:ix86 

!ELSEIF  "$(CFG)" == "wavpack - Pocket PC 2003 (ARMV4) Debug Unicode"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "..\$(PlatformName)\$(ConfigurationName)"
# PROP BASE Intermediate_Dir "$(PlatformName)\$(ConfigurationName)"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "..\$(PlatformName)\$(ConfigurationName)"
# PROP Intermediate_Dir "$(PlatformName)\$(ConfigurationName)"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MDd /Od /D "_DEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "_UNICODE" /Gm /Fp".\Debug/tta.pch" /Fo".\Debug/" /Fd".\Debug/" /GZ /c /GX 
# ADD CPP /nologo /MDd /Od /D "_DEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "_UNICODE" /Gm /Fp".\Debug/tta.pch" /Fo".\Debug/" /Fd".\Debug/" /GZ /c /GX 
# ADD BASE MTL /nologo /D"_DEBUG" /mktyplib203 /tlb".\Debug\tta.tlb" /win32 
# ADD MTL /nologo /D"_DEBUG" /mktyplib203 /tlb".\Debug\tta.tlb" /win32 
# ADD BASE RSC /l 1038 /d "_DEBUG" 
# ADD RSC /l 1038 /d "_DEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo /o ".\Debug\tta.bsc" 
# ADD BSC32 /nologo /o ".\Debug\tta.bsc" 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib commctrl.lib coredll.lib /nologo /dll /out:"..\$(PlatformName)\$(ConfigurationName)\wavpack.plg" /incremental:yes /debug /pdb:".\Debug\wavpack.pdb" /pdbtype:sept /subsystem:windows /implib:".\Debug/wavpack.lib" /ALIGN:4096 /subsystem:windowsce,4.20 /machine:ARM /ARMPADCODE
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib commctrl.lib coredll.lib /nologo /dll /out:"..\$(PlatformName)\$(ConfigurationName)\wavpack.plg" /incremental:yes /debug /pdb:".\Debug\wavpack.pdb" /pdbtype:sept /subsystem:windows /implib:".\Debug/wavpack.lib" /ALIGN:4096 /subsystem:windowsce,4.20 /machine:ARM /ARMPADCODE

!ELSEIF  "$(CFG)" == "wavpack - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug Unicode"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "..\$(PlatformName)\$(ConfigurationName)"
# PROP BASE Intermediate_Dir "$(PlatformName)\$(ConfigurationName)"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "..\$(PlatformName)\$(ConfigurationName)"
# PROP Intermediate_Dir "$(PlatformName)\$(ConfigurationName)"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MDd /Od /D "_DEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "_UNICODE" /Gm /Fp".\Debug/tta.pch" /Fo".\Debug/" /Fd".\Debug/" /GZ /c /GX 
# ADD CPP /nologo /MDd /Od /D "_DEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "_UNICODE" /Gm /Fp".\Debug/tta.pch" /Fo".\Debug/" /Fd".\Debug/" /GZ /c /GX 
# ADD BASE MTL /nologo /D"_DEBUG" /mktyplib203 /tlb".\Debug\tta.tlb" /win32 
# ADD MTL /nologo /D"_DEBUG" /mktyplib203 /tlb".\Debug\tta.tlb" /win32 
# ADD BASE RSC /l 1038 /d "_DEBUG" 
# ADD RSC /l 1038 /d "_DEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo /o ".\Debug\tta.bsc" 
# ADD BSC32 /nologo /o ".\Debug\tta.bsc" 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /out:"..\$(PlatformName)\$(ConfigurationName)\wavpack.plg" /incremental:yes /debug /pdb:".\Debug\wavpack.pdb" /pdbtype:sept /subsystem:windows /implib:".\Debug/wavpack.lib" /ALIGN:4096 /subsystem:windowsce,2.01
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /out:"..\$(PlatformName)\$(ConfigurationName)\wavpack.plg" /incremental:yes /debug /pdb:".\Debug\wavpack.pdb" /pdbtype:sept /subsystem:windows /implib:".\Debug/wavpack.lib" /ALIGN:4096 /subsystem:windowsce,2.01

!ELSEIF  "$(CFG)" == "wavpack - Windows Mobile 6 Professional SDK (ARMV4I) Debug Unicode"

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
# ADD BASE CPP /nologo /MDd /Od /D "_DEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "_UNICODE" /Gm /Fp".\Debug/tta.pch" /Fo".\Debug/" /Fd".\Debug/" /GZ /c /GX 
# ADD CPP /nologo /MDd /Od /D "_DEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "_UNICODE" /Gm /Fp".\Debug/tta.pch" /Fo".\Debug/" /Fd".\Debug/" /GZ /c /GX 
# ADD BASE MTL /nologo /D"_DEBUG" /mktyplib203 /tlb".\Debug\tta.tlb" /win32 
# ADD MTL /nologo /D"_DEBUG" /mktyplib203 /tlb".\Debug\tta.tlb" /win32 
# ADD BASE RSC /l 1038 /d "_DEBUG" 
# ADD RSC /l 1038 /d "_DEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo /o ".\Debug\tta.bsc" 
# ADD BSC32 /nologo /o ".\Debug\tta.bsc" 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib commctrl.lib coredll.lib /nologo /dll /out:"Windows Mobile 6 Professional SDK (ARMV4I)\$(ConfigurationName)\wavpack.plg" /incremental:yes /debug /pdb:".\Debug\wavpack.pdb" /pdbtype:sept /subsystem:windows /implib:".\Debug/wavpack.lib" /ALIGN:4096 /subsystem:windowsce,4.20 /machine:ARM /ARMPADCODE
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib commctrl.lib coredll.lib /nologo /dll /out:"Windows Mobile 6 Professional SDK (ARMV4I)\$(ConfigurationName)\wavpack.plg" /incremental:yes /debug /pdb:".\Debug\wavpack.pdb" /pdbtype:sept /subsystem:windows /implib:".\Debug/wavpack.lib" /ALIGN:4096 /subsystem:windowsce,4.20 /machine:ARM /ARMPADCODE

!ELSEIF  "$(CFG)" == "wavpack - Win32 Release Unicode"

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
# ADD BASE CPP /nologo /MT /Zi /O2 /D "NDEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /GF /Gy /Fp".\Release/tta.pch" /Fo".\Release/" /Fd".\Release/" /c /GX 
# ADD CPP /nologo /MT /Zi /O2 /D "NDEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /GF /Gy /Fp".\Release/tta.pch" /Fo".\Release/" /Fd".\Release/" /c /GX 
# ADD BASE MTL /nologo /D"NDEBUG" /mktyplib203 /tlb".\Release\tta.tlb" /win32 
# ADD MTL /nologo /D"NDEBUG" /mktyplib203 /tlb".\Release\tta.tlb" /win32 
# ADD BASE RSC /l 1038 /d "NDEBUG" 
# ADD RSC /l 1038 /d "NDEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo /o ".\Release\tta.bsc" 
# ADD BSC32 /nologo /o ".\Release\tta.bsc" 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /out:"..\release\wavpack.plg" /incremental:no /pdb:".\Release\wavpack.pdb" /pdbtype:sept /map:".\Release\wavpack.map" /subsystem:windows /implib:".\Release/wavpack.lib" /machine:ix86 
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /out:"..\release\wavpack.plg" /incremental:no /pdb:".\Release\wavpack.pdb" /pdbtype:sept /map:".\Release\wavpack.map" /subsystem:windows /implib:".\Release/wavpack.lib" /machine:ix86 

!ELSEIF  "$(CFG)" == "wavpack - Pocket PC 2003 (ARMV4) Release Unicode"

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
# ADD BASE CPP /nologo /MT /Zi /O2 /D "NDEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "_UNICODE" /GF /Gy /Fp".\Release/tta.pch" /Fo".\Release/" /Fd".\Release/" /c /GX 
# ADD CPP /nologo /MT /Zi /O2 /D "NDEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "_UNICODE" /GF /Gy /Fp".\Release/tta.pch" /Fo".\Release/" /Fd".\Release/" /c /GX 
# ADD BASE MTL /nologo /D"NDEBUG" /mktyplib203 /tlb".\Release\tta.tlb" /win32 
# ADD MTL /nologo /D"NDEBUG" /mktyplib203 /tlb".\Release\tta.tlb" /win32 
# ADD BASE RSC /l 1038 /d "NDEBUG" 
# ADD RSC /l 1038 /d "NDEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo /o ".\Release\tta.bsc" 
# ADD BSC32 /nologo /o ".\Release\tta.bsc" 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib commctrl.lib coredll.lib /nologo /dll /out:"..\$(PlatformName)\$(ConfigurationName)\wavpack.plg" /incremental:no /pdb:".\Release\wavpack.pdb" /pdbtype:sept /map:".\Release\wavpack.map" /subsystem:windows /implib:".\Release/wavpack.lib" /ALIGN:4096 /subsystem:windowsce,4.20 /machine:ARM /ARMPADCODE
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib commctrl.lib coredll.lib /nologo /dll /out:"..\$(PlatformName)\$(ConfigurationName)\wavpack.plg" /incremental:no /pdb:".\Release\wavpack.pdb" /pdbtype:sept /map:".\Release\wavpack.map" /subsystem:windows /implib:".\Release/wavpack.lib" /ALIGN:4096 /subsystem:windowsce,4.20 /machine:ARM /ARMPADCODE

!ELSEIF  "$(CFG)" == "wavpack - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release Unicode"

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
# ADD BASE CPP /nologo /MT /Zi /O2 /Ot /D "NDEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "_UNICODE" /GF /Gy /Fp".\Release/tta.pch" /Fo".\Release/" /Fd".\Release/" /c /GX 
# ADD CPP /nologo /MT /Zi /O2 /Ot /D "NDEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "_UNICODE" /GF /Gy /Fp".\Release/tta.pch" /Fo".\Release/" /Fd".\Release/" /c /GX 
# ADD BASE MTL /nologo /D"NDEBUG" /mktyplib203 /tlb".\Release\tta.tlb" /win32 
# ADD MTL /nologo /D"NDEBUG" /mktyplib203 /tlb".\Release\tta.tlb" /win32 
# ADD BASE RSC /l 1038 /d "NDEBUG" 
# ADD RSC /l 1038 /d "NDEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo /o ".\Release\tta.bsc" 
# ADD BSC32 /nologo /o ".\Release\tta.bsc" 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /out:"..\$(PlatformName)\$(ConfigurationName)\wavpack.plg" /incremental:no /pdb:".\Release\wavpack.pdb" /pdbtype:sept /map:".\Release\wavpack.map" /subsystem:windows /implib:".\Release/wavpack.lib" /ALIGN:4096 /subsystem:windowsce,2.01
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /out:"..\$(PlatformName)\$(ConfigurationName)\wavpack.plg" /incremental:no /pdb:".\Release\wavpack.pdb" /pdbtype:sept /map:".\Release\wavpack.map" /subsystem:windows /implib:".\Release/wavpack.lib" /ALIGN:4096 /subsystem:windowsce,2.01

!ELSEIF  "$(CFG)" == "wavpack - Windows Mobile 6 Professional SDK (ARMV4I) Release Unicode"

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
# ADD BASE CPP /nologo /MT /Zi /O2 /D "NDEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "_UNICODE" /GF /Gy /Fp".\Release/tta.pch" /Fo".\Release/" /Fd".\Release/" /c /GX 
# ADD CPP /nologo /MT /Zi /O2 /D "NDEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "_UNICODE" /GF /Gy /Fp".\Release/tta.pch" /Fo".\Release/" /Fd".\Release/" /c /GX 
# ADD BASE MTL /nologo /D"NDEBUG" /mktyplib203 /tlb".\Release\tta.tlb" /win32 
# ADD MTL /nologo /D"NDEBUG" /mktyplib203 /tlb".\Release\tta.tlb" /win32 
# ADD BASE RSC /l 1038 /d "NDEBUG" 
# ADD RSC /l 1038 /d "NDEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo /o ".\Release\tta.bsc" 
# ADD BSC32 /nologo /o ".\Release\tta.bsc" 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib commctrl.lib coredll.lib /nologo /dll /out:"Windows Mobile 6 Professional SDK (ARMV4I)\$(ConfigurationName)\wavpack.plg" /incremental:no /pdb:".\Release\wavpack.pdb" /pdbtype:sept /map:".\Release\wavpack.map" /subsystem:windows /implib:".\Release/wavpack.lib" /ALIGN:4096 /subsystem:windowsce,4.20 /machine:ARM /ARMPADCODE
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib commctrl.lib coredll.lib /nologo /dll /out:"Windows Mobile 6 Professional SDK (ARMV4I)\$(ConfigurationName)\wavpack.plg" /incremental:no /pdb:".\Release\wavpack.pdb" /pdbtype:sept /map:".\Release\wavpack.map" /subsystem:windows /implib:".\Release/wavpack.lib" /ALIGN:4096 /subsystem:windowsce,4.20 /machine:ARM /ARMPADCODE

!ELSEIF  "$(CFG)" == "wavpack - Win32 cegcc-flac-ffmpeg-release"

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
# ADD BASE CPP /nologo /MT /Zi /O2 /D "NDEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /GF /Gy /Fp".\Release/tta.pch" /Fo".\Release/" /Fd".\Release/" /c /GX 
# ADD CPP /nologo /MT /Zi /O2 /D "NDEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "_MBCS" /GF /Gy /Fp".\Release/tta.pch" /Fo".\Release/" /Fd".\Release/" /c /GX 
# ADD BASE MTL /nologo /D"NDEBUG" /mktyplib203 /tlb".\Release\tta.tlb" /win32 
# ADD MTL /nologo /D"NDEBUG" /mktyplib203 /tlb".\Release\tta.tlb" /win32 
# ADD BASE RSC /l 1038 /d "NDEBUG" 
# ADD RSC /l 1038 /d "NDEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo /o ".\Release\tta.bsc" 
# ADD BSC32 /nologo /o ".\Release\tta.bsc" 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /out:"$(ConfigurationName)\$(ProjectName).plg" /incremental:no /pdb:".\Release\wavpack.pdb" /pdbtype:sept /map:".\Release\wavpack.map" /subsystem:windows /implib:".\Release/wavpack.lib" /machine:ix86 
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /out:"$(ConfigurationName)\$(ProjectName).plg" /incremental:no /pdb:".\Release\wavpack.pdb" /pdbtype:sept /map:".\Release\wavpack.map" /subsystem:windows /implib:".\Release/wavpack.lib" /machine:ix86 

!ELSEIF  "$(CFG)" == "wavpack - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"

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
# ADD BASE CPP /nologo /MT /Zi /O2 /D "NDEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "_UNICODE" /GF /Gy /Fp".\Release/tta.pch" /Fo".\Release/" /Fd".\Release/" /c /GX 
# ADD CPP /nologo /MT /Zi /O2 /D "NDEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "_UNICODE" /GF /Gy /Fp".\Release/tta.pch" /Fo".\Release/" /Fd".\Release/" /c /GX 
# ADD BASE MTL /nologo /D"NDEBUG" /mktyplib203 /tlb".\Release\tta.tlb" /win32 
# ADD MTL /nologo /D"NDEBUG" /mktyplib203 /tlb".\Release\tta.tlb" /win32 
# ADD BASE RSC /l 1038 /d "NDEBUG" 
# ADD RSC /l 1038 /d "NDEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo /o ".\Release\tta.bsc" 
# ADD BSC32 /nologo /o ".\Release\tta.bsc" 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib commctrl.lib coredll.lib /nologo /dll /out:"Pocket PC 2003 (ARMV4)\$(ConfigurationName)\wavpack.plg" /incremental:no /pdb:".\Release\wavpack.pdb" /pdbtype:sept /map:".\Release\wavpack.map" /subsystem:windows /implib:".\Release/wavpack.lib" /ALIGN:4096 /subsystem:windowsce,4.20 /machine:ARM /ARMPADCODE
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib commctrl.lib coredll.lib /nologo /dll /out:"Pocket PC 2003 (ARMV4)\$(ConfigurationName)\wavpack.plg" /incremental:no /pdb:".\Release\wavpack.pdb" /pdbtype:sept /map:".\Release\wavpack.map" /subsystem:windows /implib:".\Release/wavpack.lib" /ALIGN:4096 /subsystem:windowsce,4.20 /machine:ARM /ARMPADCODE

!ELSEIF  "$(CFG)" == "wavpack - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"

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
# ADD BASE CPP /nologo /MT /Zi /O2 /Ot /D "NDEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "_UNICODE" /GF /Gy /Fp".\Release/tta.pch" /Fo".\Release/" /Fd".\Release/" /c /GX 
# ADD CPP /nologo /MT /Zi /O2 /Ot /D "NDEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "_UNICODE" /GF /Gy /Fp".\Release/tta.pch" /Fo".\Release/" /Fd".\Release/" /c /GX 
# ADD BASE MTL /nologo /D"NDEBUG" /mktyplib203 /tlb".\Release\tta.tlb" /win32 
# ADD MTL /nologo /D"NDEBUG" /mktyplib203 /tlb".\Release\tta.tlb" /win32 
# ADD BASE RSC /l 1038 /d "NDEBUG" 
# ADD RSC /l 1038 /d "NDEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo /o ".\Release\tta.bsc" 
# ADD BSC32 /nologo /o ".\Release\tta.bsc" 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /out:"Windows Mobile 5.0 Pocket PC SDK (ARMV4I)\$(ConfigurationName)\wavpack.plg" /incremental:no /pdb:".\Release\wavpack.pdb" /pdbtype:sept /map:".\Release\wavpack.map" /subsystem:windows /implib:".\Release/wavpack.lib" /ALIGN:4096 /subsystem:windowsce,5.01
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /out:"Windows Mobile 5.0 Pocket PC SDK (ARMV4I)\$(ConfigurationName)\wavpack.plg" /incremental:no /pdb:".\Release\wavpack.pdb" /pdbtype:sept /map:".\Release\wavpack.map" /subsystem:windows /implib:".\Release/wavpack.lib" /ALIGN:4096 /subsystem:windowsce,5.01

!ELSEIF  "$(CFG)" == "wavpack - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"

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
# ADD BASE CPP /nologo /MT /Zi /O2 /D "NDEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "_UNICODE" /GF /Gy /Fp".\Release/tta.pch" /Fo".\Release/" /Fd".\Release/" /c /GX 
# ADD CPP /nologo /MT /Zi /O2 /D "NDEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "_UNICODE" /GF /Gy /Fp".\Release/tta.pch" /Fo".\Release/" /Fd".\Release/" /c /GX 
# ADD BASE MTL /nologo /D"NDEBUG" /mktyplib203 /tlb".\Release\tta.tlb" /win32 
# ADD MTL /nologo /D"NDEBUG" /mktyplib203 /tlb".\Release\tta.tlb" /win32 
# ADD BASE RSC /l 1038 /d "NDEBUG" 
# ADD RSC /l 1038 /d "NDEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo /o ".\Release\tta.bsc" 
# ADD BSC32 /nologo /o ".\Release\tta.bsc" 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib commctrl.lib coredll.lib /nologo /dll /out:"Windows Mobile 6 Professional SDK (ARMV4I)\$(ConfigurationName)\wavpack.plg" /incremental:no /pdb:".\Release\wavpack.pdb" /pdbtype:sept /map:".\Release\wavpack.map" /subsystem:windows /implib:".\Release/wavpack.lib" /ALIGN:4096 /subsystem:windowsce,4.20 /ARMPADCODE
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib commctrl.lib coredll.lib /nologo /dll /out:"Windows Mobile 6 Professional SDK (ARMV4I)\$(ConfigurationName)\wavpack.plg" /incremental:no /pdb:".\Release\wavpack.pdb" /pdbtype:sept /map:".\Release\wavpack.map" /subsystem:windows /implib:".\Release/wavpack.lib" /ALIGN:4096 /subsystem:windowsce,4.20 /ARMPADCODE

!ENDIF

# Begin Target

# Name "wavpack - Win32 Release"
# Name "wavpack - Pocket PC 2003 (ARMV4) Release"
# Name "wavpack - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"
# Name "wavpack - Windows Mobile 6 Professional SDK (ARMV4I) Release"
# Name "wavpack - Win32 Debug"
# Name "wavpack - Pocket PC 2003 (ARMV4) Debug"
# Name "wavpack - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"
# Name "wavpack - Windows Mobile 6 Professional SDK (ARMV4I) Debug"
# Name "wavpack - Win32 ReleaseNoPlugins"
# Name "wavpack - Pocket PC 2003 (ARMV4) ReleaseNoPlugins"
# Name "wavpack - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) ReleaseNoPlugins"
# Name "wavpack - Windows Mobile 6 Professional SDK (ARMV4I) ReleaseNoPlugins"
# Name "wavpack - Win32 Debug Unicode"
# Name "wavpack - Pocket PC 2003 (ARMV4) Debug Unicode"
# Name "wavpack - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug Unicode"
# Name "wavpack - Windows Mobile 6 Professional SDK (ARMV4I) Debug Unicode"
# Name "wavpack - Win32 Release Unicode"
# Name "wavpack - Pocket PC 2003 (ARMV4) Release Unicode"
# Name "wavpack - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release Unicode"
# Name "wavpack - Windows Mobile 6 Professional SDK (ARMV4I) Release Unicode"
# Name "wavpack - Win32 cegcc-flac-ffmpeg-release"
# Name "wavpack - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"
# Name "wavpack - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"
# Name "wavpack - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=stdafx.c

!IF  "$(CFG)" == "wavpack - Win32 Release"

# ADD CPP /nologo /GX 
!ELSEIF  "$(CFG)" == "wavpack - Pocket PC 2003 (ARMV4) Release"

# ADD CPP /nologo /GX 
!ELSEIF  "$(CFG)" == "wavpack - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"

# ADD CPP /nologo /GX 
!ELSEIF  "$(CFG)" == "wavpack - Windows Mobile 6 Professional SDK (ARMV4I) Release"

# ADD CPP /nologo /GX 
!ELSEIF  "$(CFG)" == "wavpack - Win32 Debug"

# ADD CPP /nologo /GZ /GX 
!ELSEIF  "$(CFG)" == "wavpack - Pocket PC 2003 (ARMV4) Debug"

# ADD CPP /nologo /GZ /GX 
!ELSEIF  "$(CFG)" == "wavpack - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"

# ADD CPP /nologo /GZ /GX 
!ELSEIF  "$(CFG)" == "wavpack - Windows Mobile 6 Professional SDK (ARMV4I) Debug"

# ADD CPP /nologo /GZ /GX 
!ELSEIF  "$(CFG)" == "wavpack - Win32 ReleaseNoPlugins"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "wavpack - Pocket PC 2003 (ARMV4) ReleaseNoPlugins"

# ADD CPP /nologo /GX 
!ELSEIF  "$(CFG)" == "wavpack - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) ReleaseNoPlugins"

# ADD CPP /nologo /GX 
!ELSEIF  "$(CFG)" == "wavpack - Windows Mobile 6 Professional SDK (ARMV4I) ReleaseNoPlugins"

# ADD CPP /nologo /GX 
!ELSEIF  "$(CFG)" == "wavpack - Win32 Debug Unicode"

# ADD CPP /nologo /GZ /GX 
!ELSEIF  "$(CFG)" == "wavpack - Pocket PC 2003 (ARMV4) Debug Unicode"

# ADD CPP /nologo /GZ /GX 
!ELSEIF  "$(CFG)" == "wavpack - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug Unicode"

# ADD CPP /nologo /GZ /GX 
!ELSEIF  "$(CFG)" == "wavpack - Windows Mobile 6 Professional SDK (ARMV4I) Debug Unicode"

# ADD CPP /nologo /GZ /GX 
!ELSEIF  "$(CFG)" == "wavpack - Win32 Release Unicode"

# ADD CPP /nologo /GX 
!ELSEIF  "$(CFG)" == "wavpack - Pocket PC 2003 (ARMV4) Release Unicode"

# ADD CPP /nologo /GX 
!ELSEIF  "$(CFG)" == "wavpack - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release Unicode"

# ADD CPP /nologo /GX 
!ELSEIF  "$(CFG)" == "wavpack - Windows Mobile 6 Professional SDK (ARMV4I) Release Unicode"

# ADD CPP /nologo /GX 
!ELSEIF  "$(CFG)" == "wavpack - Win32 cegcc-flac-ffmpeg-release"

# ADD CPP /nologo /GX 
!ELSEIF  "$(CFG)" == "wavpack - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"

# ADD CPP /nologo /GX 
!ELSEIF  "$(CFG)" == "wavpack - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"

# ADD CPP /nologo /GX 
!ELSEIF  "$(CFG)" == "wavpack - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"

# ADD CPP /nologo /GX 
!ENDIF

# End Source File
# Begin Source File

SOURCE=.\wavpack.c
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=.\wavpack.h
# End Source File
# End Group
# Begin Group "wavpackdecoder"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\decoder\bits.c
# End Source File
# Begin Source File

SOURCE=.\decoder\float.c
# End Source File
# Begin Source File

SOURCE=.\decoder\metadata.c
# End Source File
# Begin Source File

SOURCE=.\decoder\unpack.c
# End Source File
# Begin Source File

SOURCE=.\decoder\wavpack.h
# End Source File
# Begin Source File

SOURCE=.\decoder\words.c
# End Source File
# Begin Source File

SOURCE=.\decoder\wputils.c
# End Source File
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;rgs;gif;jpg;jpeg;jpe"
# Begin Source File

SOURCE=.\wavpack.def
# End Source File
# End Group
# End Target
# End Project


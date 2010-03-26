# Microsoft Developer Studio Project File - Name="flac" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

CFG=flac - Win32 Release
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "flac.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "flac.mak" CFG="flac - Win32 Release"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "flac - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "flac - Pocket PC 2003 (ARMV4) Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "flac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "flac - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "flac - Pocket PC 2003 (ARMV4) Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "flac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "flac - Win32 ReleaseNoPlugins" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "flac - Pocket PC 2003 (ARMV4) ReleaseNoPlugins" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "flac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) ReleaseNoPlugins" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "flac - Win32 Debug Unicode" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "flac - Pocket PC 2003 (ARMV4) Debug Unicode" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "flac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug Unicode" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "flac - Win32 Release Unicode" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "flac - Pocket PC 2003 (ARMV4) Release Unicode" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "flac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release Unicode" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "flac - Win32 Release"

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
# ADD BASE CPP /nologo /MT /I "C:\msys\local\include" /I "flac\include\FLAC" /I "flac\src\libFLAC\include" /I "flac\include" /Zi /O2 /D "NDEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "FLAC__NO_DLL" /D "VERSION=\"1.2.0\"" /D "_MBCS" /GF /Gy /Fp".\Release/flac.pch" /Fo".\Release/" /Fd".\Release/" /c /GX 
# ADD CPP /nologo /MT /I "C:\msys\local\include" /I "flac\include\FLAC" /I "flac\src\libFLAC\include" /I "flac\include" /Zi /O2 /D "NDEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "FLAC__NO_DLL" /D "VERSION=\"1.2.0\"" /D "_MBCS" /GF /Gy /Fp".\Release/flac.pch" /Fo".\Release/" /Fd".\Release/" /c /GX 
# ADD BASE MTL /nologo /D"NDEBUG" /mktyplib203 /tlb".\Release\flac.tlb" /win32 
# ADD MTL /nologo /D"NDEBUG" /mktyplib203 /tlb".\Release\flac.tlb" /win32 
# ADD BASE RSC /l 1038 /d "NDEBUG" 
# ADD RSC /l 1038 /d "NDEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo /o ".\Release\flac.bsc" 
# ADD BSC32 /nologo /o ".\Release\flac.bsc" 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib oldnames.lib /nologo /dll /out:"..\release\flac.plg" /incremental:no /pdb:".\Release\flac.pdb" /pdbtype:sept /map:".\Release\flac.map" /subsystem:windows /implib:".\Release/flac.lib" /machine:ix86 
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib oldnames.lib /nologo /dll /out:"..\release\flac.plg" /incremental:no /pdb:".\Release\flac.pdb" /pdbtype:sept /map:".\Release\flac.map" /subsystem:windows /implib:".\Release/flac.lib" /machine:ix86 

!ELSEIF  "$(CFG)" == "flac - Pocket PC 2003 (ARMV4) Release"

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
# ADD BASE CPP /nologo /MT /I ""D:\PocketPcStuff\tcpmp-0.72rc1-src-vs2008Win32+flac\flac"" /I "flac\include\FLAC" /I "flac\src\libFLAC\include" /I "flac\include" /Zi /O2 /D "offt_t=long" /D "NDEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "VERSION=\"1.2.0\"" /D "FLAC__NO_DLL" /D "_UNICODE" /GF /Gy /Fp".\Release/flac.pch" /Fo".\Release/" /Fd".\Release/" /c /GX 
# ADD CPP /nologo /MT /I ""D:\PocketPcStuff\tcpmp-0.72rc1-src-vs2008Win32+flac\flac"" /I "flac\include\FLAC" /I "flac\src\libFLAC\include" /I "flac\include" /Zi /O2 /D "offt_t=long" /D "NDEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "VERSION=\"1.2.0\"" /D "FLAC__NO_DLL" /D "_UNICODE" /GF /Gy /Fp".\Release/flac.pch" /Fo".\Release/" /Fd".\Release/" /c /GX 
# ADD BASE MTL /nologo /D"NDEBUG" /mktyplib203 /tlb".\Release\flac.tlb" /win32 
# ADD MTL /nologo /D"NDEBUG" /mktyplib203 /tlb".\Release\flac.tlb" /win32 
# ADD BASE RSC /l 1038 /d "NDEBUG" 
# ADD RSC /l 1038 /d "NDEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo /o ".\Release\flac.bsc" 
# ADD BSC32 /nologo /o ".\Release\flac.bsc" 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib commctrl.lib coredll.lib COLDNAMES.lib /nologo /dll /out:"..\$(PlatformName)\$(ConfigurationName)\flac.plg" /incremental:no /pdb:".\Release\flac.pdb" /pdbtype:sept /map:".\Release\flac.map" /subsystem:windows /implib:".\Release/flac.lib" /ALIGN:4096 /subsystem:windowsce,4.20 /machine:ARM /ARMPADCODE
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib commctrl.lib coredll.lib COLDNAMES.lib /nologo /dll /out:"..\$(PlatformName)\$(ConfigurationName)\flac.plg" /incremental:no /pdb:".\Release\flac.pdb" /pdbtype:sept /map:".\Release\flac.map" /subsystem:windows /implib:".\Release/flac.lib" /ALIGN:4096 /subsystem:windowsce,4.20 /machine:ARM /ARMPADCODE

!ELSEIF  "$(CFG)" == "flac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"

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
# ADD BASE CPP /nologo /MT /I "flac\include\FLAC" /I "flac\src\libFLAC\include" /I "flac\include" /Zi /O2 /Ot /D "NDEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "FLAC__NO_DLL" /D "_UNICODE" /GF /Gy /Fp".\Release/flac.pch" /Fo".\Release/" /Fd".\Release/" /c /GX 
# ADD CPP /nologo /MT /I "flac\include\FLAC" /I "flac\src\libFLAC\include" /I "flac\include" /Zi /O2 /Ot /D "NDEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "FLAC__NO_DLL" /D "_UNICODE" /GF /Gy /Fp".\Release/flac.pch" /Fo".\Release/" /Fd".\Release/" /c /GX 
# ADD BASE MTL /nologo /D"NDEBUG" /mktyplib203 /tlb".\Release\flac.tlb" /win32 
# ADD MTL /nologo /D"NDEBUG" /mktyplib203 /tlb".\Release\flac.tlb" /win32 
# ADD BASE RSC /l 1038 /d "NDEBUG" 
# ADD RSC /l 1038 /d "NDEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo /o ".\Release\flac.bsc" 
# ADD BSC32 /nologo /o ".\Release\flac.bsc" 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /out:"..\$(PlatformName)\$(ConfigurationName)\flac.plg" /incremental:no /pdb:".\Release\flac.pdb" /pdbtype:sept /map:".\Release\flac.map" /subsystem:windows /implib:".\Release/flac.lib" /ALIGN:4096 /subsystem:windowsce,5.01
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /out:"..\$(PlatformName)\$(ConfigurationName)\flac.plg" /incremental:no /pdb:".\Release\flac.pdb" /pdbtype:sept /map:".\Release\flac.map" /subsystem:windows /implib:".\Release/flac.lib" /ALIGN:4096 /subsystem:windowsce,5.01

!ELSEIF  "$(CFG)" == "flac - Win32 Debug"

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
# ADD BASE CPP /nologo /MDd /I "flac\include\FLAC" /I "flac\src\libFLAC\include" /I "flac\include" /ZI /Od /D "_DEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "VERSION=\"1.2.0\"" /D "FLAC__NO_DLL" /D "_MBCS" /Gm /Fp".\Debug/flac.pch" /Fo".\Debug/" /Fd".\Debug/" /GZ /c /GX 
# ADD CPP /nologo /MDd /I "flac\include\FLAC" /I "flac\src\libFLAC\include" /I "flac\include" /ZI /Od /D "_DEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "VERSION=\"1.2.0\"" /D "FLAC__NO_DLL" /D "_MBCS" /Gm /Fp".\Debug/flac.pch" /Fo".\Debug/" /Fd".\Debug/" /GZ /c /GX 
# ADD BASE MTL /nologo /D"_DEBUG" /mktyplib203 /tlb".\Debug\flac.tlb" /win32 
# ADD MTL /nologo /D"_DEBUG" /mktyplib203 /tlb".\Debug\flac.tlb" /win32 
# ADD BASE RSC /l 1038 /d "_DEBUG" 
# ADD RSC /l 1038 /d "_DEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo /o ".\Debug\flac.bsc" 
# ADD BSC32 /nologo /o ".\Debug\flac.bsc" 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib OLDNAMES.lib /nologo /dll /out:"..\debug\flac.plg" /incremental:yes /debug /pdb:".\Debug\flac.pdb" /pdbtype:sept /subsystem:windows /implib:".\Debug/flac.lib" /machine:ix86 
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib OLDNAMES.lib /nologo /dll /out:"..\debug\flac.plg" /incremental:yes /debug /pdb:".\Debug\flac.pdb" /pdbtype:sept /subsystem:windows /implib:".\Debug/flac.lib" /machine:ix86 

!ELSEIF  "$(CFG)" == "flac - Pocket PC 2003 (ARMV4) Debug"

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
# ADD BASE CPP /nologo /MDd /I "flac\include\FLAC" /I "flac\src\libFLAC\include" /I "flac\include" /Od /D "_DEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "FLAC__NO_DLL" /D "_UNICODE" /Gm /Fp".\Debug/flac.pch" /Fo".\Debug/" /Fd".\Debug/" /GZ /c /GX 
# ADD CPP /nologo /MDd /I "flac\include\FLAC" /I "flac\src\libFLAC\include" /I "flac\include" /Od /D "_DEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "FLAC__NO_DLL" /D "_UNICODE" /Gm /Fp".\Debug/flac.pch" /Fo".\Debug/" /Fd".\Debug/" /GZ /c /GX 
# ADD BASE MTL /nologo /D"_DEBUG" /mktyplib203 /tlb".\Debug\flac.tlb" /win32 
# ADD MTL /nologo /D"_DEBUG" /mktyplib203 /tlb".\Debug\flac.tlb" /win32 
# ADD BASE RSC /l 1038 /d "_DEBUG" 
# ADD RSC /l 1038 /d "_DEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo /o ".\Debug\flac.bsc" 
# ADD BSC32 /nologo /o ".\Debug\flac.bsc" 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib commctrl.lib coredll.lib /nologo /dll /out:"..\$(PlatformName)\$(ConfigurationName)\flac.plg" /incremental:yes /debug /pdb:".\Debug\flac.pdb" /pdbtype:sept /subsystem:windows /implib:".\Debug/flac.lib" /ALIGN:4096 /subsystem:windowsce,4.20 /machine:ARM /ARMPADCODE
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib commctrl.lib coredll.lib /nologo /dll /out:"..\$(PlatformName)\$(ConfigurationName)\flac.plg" /incremental:yes /debug /pdb:".\Debug\flac.pdb" /pdbtype:sept /subsystem:windows /implib:".\Debug/flac.lib" /ALIGN:4096 /subsystem:windowsce,4.20 /machine:ARM /ARMPADCODE

!ELSEIF  "$(CFG)" == "flac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"

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
# ADD BASE CPP /nologo /MDd /I "flac\include\FLAC" /I "flac\src\libFLAC\include" /I "flac\include" /Od /D "_DEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "FLAC__NO_DLL" /D "_UNICODE" /Gm /Fp".\Debug/flac.pch" /Fo".\Debug/" /Fd".\Debug/" /GZ /c /GX 
# ADD CPP /nologo /MDd /I "flac\include\FLAC" /I "flac\src\libFLAC\include" /I "flac\include" /Od /D "_DEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "FLAC__NO_DLL" /D "_UNICODE" /Gm /Fp".\Debug/flac.pch" /Fo".\Debug/" /Fd".\Debug/" /GZ /c /GX 
# ADD BASE MTL /nologo /D"_DEBUG" /mktyplib203 /tlb".\Debug\flac.tlb" /win32 
# ADD MTL /nologo /D"_DEBUG" /mktyplib203 /tlb".\Debug\flac.tlb" /win32 
# ADD BASE RSC /l 1038 /d "_DEBUG" 
# ADD RSC /l 1038 /d "_DEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo /o ".\Debug\flac.bsc" 
# ADD BSC32 /nologo /o ".\Debug\flac.bsc" 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /out:"..\$(PlatformName)\$(ConfigurationName)\flac.plg" /incremental:yes /debug /pdb:".\Debug\flac.pdb" /pdbtype:sept /subsystem:windows /implib:".\Debug/flac.lib" /ALIGN:4096 /subsystem:windowsce,5.01
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /out:"..\$(PlatformName)\$(ConfigurationName)\flac.plg" /incremental:yes /debug /pdb:".\Debug\flac.pdb" /pdbtype:sept /subsystem:windows /implib:".\Debug/flac.lib" /ALIGN:4096 /subsystem:windowsce,5.01

!ELSEIF  "$(CFG)" == "flac - Win32 ReleaseNoPlugins"

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
# ADD BASE CPP /nologo /MT /I "flac\include\FLAC" /I "flac\src\libFLAC\include" /I "flac\include" /Zi /O2 /D "NDEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "FLAC__NO_DLL" /D "NO_PLUGINS" /D "_MBCS" /GF /Gy /Fp".\Release/flac.pch" /Fo".\Release/" /Fd".\Release/" /c /GX 
# ADD CPP /nologo /MT /I "flac\include\FLAC" /I "flac\src\libFLAC\include" /I "flac\include" /Zi /O2 /D "NDEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "FLAC__NO_DLL" /D "NO_PLUGINS" /D "_MBCS" /GF /Gy /Fp".\Release/flac.pch" /Fo".\Release/" /Fd".\Release/" /c /GX 
# ADD BASE MTL /nologo /D"NDEBUG" /mktyplib203 /tlb".\Release\flac.tlb" /win32 
# ADD MTL /nologo /D"NDEBUG" /mktyplib203 /tlb".\Release\flac.tlb" /win32 
# ADD BASE RSC /l 1038 /d "NDEBUG" 
# ADD RSC /l 1038 /d "NDEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo /o ".\Release\flac.bsc" 
# ADD BSC32 /nologo /o ".\Release\flac.bsc" 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /pdbtype:sept /subsystem:windows 
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /pdbtype:sept /subsystem:windows 

!ELSEIF  "$(CFG)" == "flac - Pocket PC 2003 (ARMV4) ReleaseNoPlugins"

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
# ADD BASE CPP /nologo /MT /I "flac\include\FLAC" /I "flac\src\libFLAC\include" /I "flac\include" /Zi /O2 /D "NDEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "FLAC__NO_DLL" /D "_UNICODE" /GF /Gy /Fp".\Release/flac.pch" /Fo".\Release/" /Fd".\Release/" /c /GX 
# ADD CPP /nologo /MT /I "flac\include\FLAC" /I "flac\src\libFLAC\include" /I "flac\include" /Zi /O2 /D "NDEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "FLAC__NO_DLL" /D "_UNICODE" /GF /Gy /Fp".\Release/flac.pch" /Fo".\Release/" /Fd".\Release/" /c /GX 
# ADD BASE MTL /nologo /D"NDEBUG" /mktyplib203 /tlb".\Release\flac.tlb" /win32 
# ADD MTL /nologo /D"NDEBUG" /mktyplib203 /tlb".\Release\flac.tlb" /win32 
# ADD BASE RSC /l 1038 /d "NDEBUG" 
# ADD RSC /l 1038 /d "NDEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo /o ".\Release\flac.bsc" 
# ADD BSC32 /nologo /o ".\Release\flac.bsc" 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib commctrl.lib coredll.lib /nologo /dll /out:"..\$(PlatformName)\$(ConfigurationName)\flac.plg" /incremental:no /pdb:".\Release\flac.pdb" /pdbtype:sept /map:".\Release\flac.map" /subsystem:windows /implib:".\Release/flac.lib" /ALIGN:4096 /subsystem:windowsce,4.20 /machine:ARM /ARMPADCODE
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib commctrl.lib coredll.lib /nologo /dll /out:"..\$(PlatformName)\$(ConfigurationName)\flac.plg" /incremental:no /pdb:".\Release\flac.pdb" /pdbtype:sept /map:".\Release\flac.map" /subsystem:windows /implib:".\Release/flac.lib" /ALIGN:4096 /subsystem:windowsce,4.20 /machine:ARM /ARMPADCODE

!ELSEIF  "$(CFG)" == "flac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) ReleaseNoPlugins"

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
# ADD BASE CPP /nologo /MT /I "flac\include\FLAC" /I "flac\src\libFLAC\include" /I "flac\include" /Zi /O2 /D "NDEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "FLAC__NO_DLL" /D "_UNICODE" /GF /Gy /Fp".\Release/flac.pch" /Fo".\Release/" /Fd".\Release/" /c /GX 
# ADD CPP /nologo /MT /I "flac\include\FLAC" /I "flac\src\libFLAC\include" /I "flac\include" /Zi /O2 /D "NDEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "FLAC__NO_DLL" /D "_UNICODE" /GF /Gy /Fp".\Release/flac.pch" /Fo".\Release/" /Fd".\Release/" /c /GX 
# ADD BASE MTL /nologo /D"NDEBUG" /mktyplib203 /tlb".\Release\flac.tlb" /win32 
# ADD MTL /nologo /D"NDEBUG" /mktyplib203 /tlb".\Release\flac.tlb" /win32 
# ADD BASE RSC /l 1038 /d "NDEBUG" 
# ADD RSC /l 1038 /d "NDEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo /o ".\Release\flac.bsc" 
# ADD BSC32 /nologo /o ".\Release\flac.bsc" 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /out:"..\$(PlatformName)\$(ConfigurationName)\flac.plg" /incremental:no /pdb:".\Release\flac.pdb" /pdbtype:sept /map:".\Release\flac.map" /subsystem:windows /implib:".\Release/flac.lib" /ALIGN:4096 /subsystem:windowsce,5.01
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /out:"..\$(PlatformName)\$(ConfigurationName)\flac.plg" /incremental:no /pdb:".\Release\flac.pdb" /pdbtype:sept /map:".\Release\flac.map" /subsystem:windows /implib:".\Release/flac.lib" /ALIGN:4096 /subsystem:windowsce,5.01

!ELSEIF  "$(CFG)" == "flac - Win32 Debug Unicode"

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
# ADD BASE CPP /nologo /MDd /I "flac\include\FLAC" /I "flac\src\libFLAC\include" /I "flac\include" /ZI /Od /D "_DEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "FLAC__NO_DLL" /D "_MBCS" /Gm /Fp".\Debug/flac.pch" /Fo".\Debug/" /Fd".\Debug/" /GZ /c /GX 
# ADD CPP /nologo /MDd /I "flac\include\FLAC" /I "flac\src\libFLAC\include" /I "flac\include" /ZI /Od /D "_DEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "FLAC__NO_DLL" /D "_MBCS" /Gm /Fp".\Debug/flac.pch" /Fo".\Debug/" /Fd".\Debug/" /GZ /c /GX 
# ADD BASE MTL /nologo /D"_DEBUG" /mktyplib203 /tlb".\Debug\flac.tlb" /win32 
# ADD MTL /nologo /D"_DEBUG" /mktyplib203 /tlb".\Debug\flac.tlb" /win32 
# ADD BASE RSC /l 1038 /d "_DEBUG" 
# ADD RSC /l 1038 /d "_DEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo /o ".\Debug\flac.bsc" 
# ADD BSC32 /nologo /o ".\Debug\flac.bsc" 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /out:"..\debug\flac.plg" /incremental:yes /debug /pdb:".\Debug\flac.pdb" /pdbtype:sept /subsystem:windows /implib:".\Debug/flac.lib" /machine:ix86 
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /out:"..\debug\flac.plg" /incremental:yes /debug /pdb:".\Debug\flac.pdb" /pdbtype:sept /subsystem:windows /implib:".\Debug/flac.lib" /machine:ix86 

!ELSEIF  "$(CFG)" == "flac - Pocket PC 2003 (ARMV4) Debug Unicode"

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
# ADD BASE CPP /nologo /MDd /I "flac\include\FLAC" /I "flac\src\libFLAC\include" /I "flac\include" /Od /D "_DEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "FLAC__NO_DLL" /D "_UNICODE" /Gm /Fp".\Debug/flac.pch" /Fo".\Debug/" /Fd".\Debug/" /GZ /c /GX 
# ADD CPP /nologo /MDd /I "flac\include\FLAC" /I "flac\src\libFLAC\include" /I "flac\include" /Od /D "_DEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "FLAC__NO_DLL" /D "_UNICODE" /Gm /Fp".\Debug/flac.pch" /Fo".\Debug/" /Fd".\Debug/" /GZ /c /GX 
# ADD BASE MTL /nologo /D"_DEBUG" /mktyplib203 /tlb".\Debug\flac.tlb" /win32 
# ADD MTL /nologo /D"_DEBUG" /mktyplib203 /tlb".\Debug\flac.tlb" /win32 
# ADD BASE RSC /l 1038 /d "_DEBUG" 
# ADD RSC /l 1038 /d "_DEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo /o ".\Debug\flac.bsc" 
# ADD BSC32 /nologo /o ".\Debug\flac.bsc" 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib commctrl.lib coredll.lib /nologo /dll /out:"..\$(PlatformName)\$(ConfigurationName)\flac.plg" /incremental:yes /debug /pdb:".\Debug\flac.pdb" /pdbtype:sept /subsystem:windows /implib:".\Debug/flac.lib" /ALIGN:4096 /subsystem:windowsce,4.20 /machine:ARM /ARMPADCODE
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib commctrl.lib coredll.lib /nologo /dll /out:"..\$(PlatformName)\$(ConfigurationName)\flac.plg" /incremental:yes /debug /pdb:".\Debug\flac.pdb" /pdbtype:sept /subsystem:windows /implib:".\Debug/flac.lib" /ALIGN:4096 /subsystem:windowsce,4.20 /machine:ARM /ARMPADCODE

!ELSEIF  "$(CFG)" == "flac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug Unicode"

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
# ADD BASE CPP /nologo /MDd /I "flac\include\FLAC" /I "flac\src\libFLAC\include" /I "flac\include" /Od /D "_DEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "FLAC__NO_DLL" /D "_UNICODE" /Gm /Fp".\Debug/flac.pch" /Fo".\Debug/" /Fd".\Debug/" /GZ /c /GX 
# ADD CPP /nologo /MDd /I "flac\include\FLAC" /I "flac\src\libFLAC\include" /I "flac\include" /Od /D "_DEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "FLAC__NO_DLL" /D "_UNICODE" /Gm /Fp".\Debug/flac.pch" /Fo".\Debug/" /Fd".\Debug/" /GZ /c /GX 
# ADD BASE MTL /nologo /D"_DEBUG" /mktyplib203 /tlb".\Debug\flac.tlb" /win32 
# ADD MTL /nologo /D"_DEBUG" /mktyplib203 /tlb".\Debug\flac.tlb" /win32 
# ADD BASE RSC /l 1038 /d "_DEBUG" 
# ADD RSC /l 1038 /d "_DEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo /o ".\Debug\flac.bsc" 
# ADD BSC32 /nologo /o ".\Debug\flac.bsc" 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /out:"..\$(PlatformName)\$(ConfigurationName)\flac.plg" /incremental:yes /debug /pdb:".\Debug\flac.pdb" /pdbtype:sept /subsystem:windows /implib:".\Debug/flac.lib" /ALIGN:4096 /subsystem:windowsce,5.01
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /out:"..\$(PlatformName)\$(ConfigurationName)\flac.plg" /incremental:yes /debug /pdb:".\Debug\flac.pdb" /pdbtype:sept /subsystem:windows /implib:".\Debug/flac.lib" /ALIGN:4096 /subsystem:windowsce,5.01

!ELSEIF  "$(CFG)" == "flac - Win32 Release Unicode"

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
# ADD BASE CPP /nologo /MT /I "flac\include\FLAC" /I "flac\src\libFLAC\include" /I "flac\include" /Zi /O2 /D "NDEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "FLAC__NO_DLL" /D "_MBCS" /GF /Gy /Fp".\Release/flac.pch" /Fo".\Release/" /Fd".\Release/" /c /GX 
# ADD CPP /nologo /MT /I "flac\include\FLAC" /I "flac\src\libFLAC\include" /I "flac\include" /Zi /O2 /D "NDEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "FLAC__NO_DLL" /D "_MBCS" /GF /Gy /Fp".\Release/flac.pch" /Fo".\Release/" /Fd".\Release/" /c /GX 
# ADD BASE MTL /nologo /D"NDEBUG" /mktyplib203 /tlb".\Release\flac.tlb" /win32 
# ADD MTL /nologo /D"NDEBUG" /mktyplib203 /tlb".\Release\flac.tlb" /win32 
# ADD BASE RSC /l 1038 /d "NDEBUG" 
# ADD RSC /l 1038 /d "NDEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo /o ".\Release\flac.bsc" 
# ADD BSC32 /nologo /o ".\Release\flac.bsc" 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /out:"..\release\flac.plg" /incremental:no /pdb:".\Release\flac.pdb" /pdbtype:sept /map:".\Release\flac.map" /subsystem:windows /implib:".\Release/flac.lib" /machine:ix86 
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /out:"..\release\flac.plg" /incremental:no /pdb:".\Release\flac.pdb" /pdbtype:sept /map:".\Release\flac.map" /subsystem:windows /implib:".\Release/flac.lib" /machine:ix86 

!ELSEIF  "$(CFG)" == "flac - Pocket PC 2003 (ARMV4) Release Unicode"

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
# ADD BASE CPP /nologo /MT /I "flac\include\FLAC" /I "flac\src\libFLAC\include" /I "flac\include" /Zi /O2 /D "NDEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "FLAC__NO_DLL" /D "_UNICODE" /GF /Gy /Fp".\Release/flac.pch" /Fo".\Release/" /Fd".\Release/" /c /GX 
# ADD CPP /nologo /MT /I "flac\include\FLAC" /I "flac\src\libFLAC\include" /I "flac\include" /Zi /O2 /D "NDEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "FLAC__NO_DLL" /D "_UNICODE" /GF /Gy /Fp".\Release/flac.pch" /Fo".\Release/" /Fd".\Release/" /c /GX 
# ADD BASE MTL /nologo /D"NDEBUG" /mktyplib203 /tlb".\Release\flac.tlb" /win32 
# ADD MTL /nologo /D"NDEBUG" /mktyplib203 /tlb".\Release\flac.tlb" /win32 
# ADD BASE RSC /l 1038 /d "NDEBUG" 
# ADD RSC /l 1038 /d "NDEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo /o ".\Release\flac.bsc" 
# ADD BSC32 /nologo /o ".\Release\flac.bsc" 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib commctrl.lib coredll.lib /nologo /dll /out:"..\$(PlatformName)\$(ConfigurationName)\flac.plg" /incremental:no /pdb:".\Release\flac.pdb" /pdbtype:sept /map:".\Release\flac.map" /subsystem:windows /implib:".\Release/flac.lib" /ALIGN:4096 /subsystem:windowsce,4.20 /machine:ARM /ARMPADCODE
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib commctrl.lib coredll.lib /nologo /dll /out:"..\$(PlatformName)\$(ConfigurationName)\flac.plg" /incremental:no /pdb:".\Release\flac.pdb" /pdbtype:sept /map:".\Release\flac.map" /subsystem:windows /implib:".\Release/flac.lib" /ALIGN:4096 /subsystem:windowsce,4.20 /machine:ARM /ARMPADCODE

!ELSEIF  "$(CFG)" == "flac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release Unicode"

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
# ADD BASE CPP /nologo /MT /I "flac\include\FLAC" /I "flac\src\libFLAC\include" /I "flac\include" /Zi /O2 /D "NDEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "FLAC__NO_DLL" /D "_UNICODE" /GF /Gy /Fp".\Release/flac.pch" /Fo".\Release/" /Fd".\Release/" /c /GX 
# ADD CPP /nologo /MT /I "flac\include\FLAC" /I "flac\src\libFLAC\include" /I "flac\include" /Zi /O2 /D "NDEBUG" /D "_USRDLL" /D "WIN32" /D "_WINDOWS" /D "FLAC__NO_DLL" /D "_UNICODE" /GF /Gy /Fp".\Release/flac.pch" /Fo".\Release/" /Fd".\Release/" /c /GX 
# ADD BASE MTL /nologo /D"NDEBUG" /mktyplib203 /tlb".\Release\flac.tlb" /win32 
# ADD MTL /nologo /D"NDEBUG" /mktyplib203 /tlb".\Release\flac.tlb" /win32 
# ADD BASE RSC /l 1038 /d "NDEBUG" 
# ADD RSC /l 1038 /d "NDEBUG" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo /o ".\Release\flac.bsc" 
# ADD BSC32 /nologo /o ".\Release\flac.bsc" 
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /out:"..\$(PlatformName)\$(ConfigurationName)\flac.plg" /incremental:no /pdb:".\Release\flac.pdb" /pdbtype:sept /map:".\Release\flac.map" /subsystem:windows /implib:".\Release/flac.lib" /ALIGN:4096 /subsystem:windowsce,5.01
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /out:"..\$(PlatformName)\$(ConfigurationName)\flac.plg" /incremental:no /pdb:".\Release\flac.pdb" /pdbtype:sept /map:".\Release\flac.map" /subsystem:windows /implib:".\Release/flac.lib" /ALIGN:4096 /subsystem:windowsce,5.01

!ENDIF

# Begin Target

# Name "flac - Win32 Release"
# Name "flac - Pocket PC 2003 (ARMV4) Release"
# Name "flac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"
# Name "flac - Win32 Debug"
# Name "flac - Pocket PC 2003 (ARMV4) Debug"
# Name "flac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"
# Name "flac - Win32 ReleaseNoPlugins"
# Name "flac - Pocket PC 2003 (ARMV4) ReleaseNoPlugins"
# Name "flac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) ReleaseNoPlugins"
# Name "flac - Win32 Debug Unicode"
# Name "flac - Pocket PC 2003 (ARMV4) Debug Unicode"
# Name "flac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug Unicode"
# Name "flac - Win32 Release Unicode"
# Name "flac - Pocket PC 2003 (ARMV4) Release Unicode"
# Name "flac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release Unicode"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=.\flac.c
# End Source File
# Begin Source File

SOURCE=stdafx.c

!IF  "$(CFG)" == "flac - Win32 Release"

# ADD CPP /nologo /GX 
!ELSEIF  "$(CFG)" == "flac - Pocket PC 2003 (ARMV4) Release"

# ADD CPP /nologo /GX 
!ELSEIF  "$(CFG)" == "flac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"

# ADD CPP /nologo /GX 
!ELSEIF  "$(CFG)" == "flac - Win32 Debug"

# ADD CPP /nologo /GZ /GX 
!ELSEIF  "$(CFG)" == "flac - Pocket PC 2003 (ARMV4) Debug"

# ADD CPP /nologo /GZ /GX 
!ELSEIF  "$(CFG)" == "flac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"

# ADD CPP /nologo /GZ /GX 
!ELSEIF  "$(CFG)" == "flac - Win32 ReleaseNoPlugins"

# PROP Exclude_From_Build 1

!ELSEIF  "$(CFG)" == "flac - Pocket PC 2003 (ARMV4) ReleaseNoPlugins"

# ADD CPP /nologo /GX 
!ELSEIF  "$(CFG)" == "flac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) ReleaseNoPlugins"

# ADD CPP /nologo /GX 
!ELSEIF  "$(CFG)" == "flac - Win32 Debug Unicode"

# ADD CPP /nologo /GZ /GX 
!ELSEIF  "$(CFG)" == "flac - Pocket PC 2003 (ARMV4) Debug Unicode"

# ADD CPP /nologo /GZ /GX 
!ELSEIF  "$(CFG)" == "flac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug Unicode"

# ADD CPP /nologo /GZ /GX 
!ELSEIF  "$(CFG)" == "flac - Win32 Release Unicode"

# ADD CPP /nologo /GX 
!ELSEIF  "$(CFG)" == "flac - Pocket PC 2003 (ARMV4) Release Unicode"

# ADD CPP /nologo /GX 
!ELSEIF  "$(CFG)" == "flac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release Unicode"

# ADD CPP /nologo /GX 
!ENDIF

# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=.\flac.h
# End Source File
# End Group
# Begin Group "libflac"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\flac\src\libFLAC\bitmath.c
# End Source File
# Begin Source File

SOURCE=.\flac\src\libFLAC\bitreader.c
# End Source File
# Begin Source File

SOURCE=.\flac\src\libFLAC\cpu.c
# End Source File
# Begin Source File

SOURCE=.\flac\src\libFLAC\crc.c
# End Source File
# Begin Source File

SOURCE=.\flac\src\libFLAC\fixed.c
# End Source File
# Begin Source File

SOURCE=.\flac\src\libFLAC\float.c
# End Source File
# Begin Source File

SOURCE=.\flac\src\libFLAC\format.c
# End Source File
# Begin Source File

SOURCE=.\flac\src\libFLAC\lpc.c
# End Source File
# Begin Source File

SOURCE=.\flac\src\libFLAC\md5.c
# End Source File
# Begin Source File

SOURCE=.\flac\src\libFLAC\memory.c
# End Source File
# Begin Source File

SOURCE=.\flac\src\libFLAC\stream_decoder.c
# End Source File
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;rgs;gif;jpg;jpeg;jpe"
# Begin Source File

SOURCE=.\flac.def
# End Source File
# End Group
# End Target
# End Project


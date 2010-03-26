# Makefile - aac.dsp

ifndef CFG
CFG=aac - Smartphone 2003 (ARMV4) Release
endif
CC=gcc
CFLAGS=
CXX=g++
CXXFLAGS=$(CFLAGS)
RC=windres -O COFF
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Release"
CFLAGS+=-DNDEBUG -DLC_ONLY_DECODER -DARM -D_ARM_ -DARMV4 -DAAC_EXPORTS -D_WIN32_WCE=$(CEVER) -D$(CePlatform) -DUNDER_CE=$(CEVER) -DUNICODE -D"_UNICODE" PRECOMP_VC7_TOBEREMOVED
LD=dllwrap
LDFLAGS=
TARGET=../$(PlatformName)/$(ConfigurationName)/aac.plg
LDFLAGS+=-Wl,--subsystem,windows --image-base "0x00100000" --implib $(PlatformName)/$(ConfigurationName)/libaac.a -Wl,--subsystem,windowsce,4.20
LIBS+=-lkernel32 -luser32 -lgdi32 -lwinspool -lcomdlg32 -ladvapi32 -lshell32 -lole32 -loleaut32 -luuid -lodbc32 -lodbccp32 -lcommctrl -lcoredll -lOle32 -lsecchk -lccrtrtti
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Release"
CFLAGS+=-DNDEBUG -DLC_ONLY_DECODER -DARM -D_ARM_ -DARMV4 -DAAC_EXPORTS -D_WIN32_WCE=$(CEVER) -D$(CePlatform) -DUNDER_CE=$(CEVER) -DUNICODE -D"_UNICODE" PRECOMP_VC7_TOBEREMOVED
LD=dllwrap
LDFLAGS=
TARGET=../$(PlatformName)/$(ConfigurationName)/aac.plg
LDFLAGS+=-Wl,--subsystem,windows --image-base "0x00100000" --implib $(PlatformName)/$(ConfigurationName)/libaac.a -Wl,--subsystem,windowsce,4.20  
LIBS+=-lkernel32 -luser32 -lgdi32 -lwinspool -lcomdlg32 -ladvapi32 -lshell32 -lole32 -loleaut32 -luuid -lodbc32 -lodbccp32 -lcommctrl -lcoredll -lOle32
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Release"
CFLAGS+=-O2 -DNDEBUG -DLC_ONLY_DECODER -DARM -D_ARM_ -DARMV4 -DAAC_EXPORTS -D_WIN32_WCE=$(CEVER) -D$(CePlatform) -DUNDER_CE=$(CEVER) -DUNICODE -D"_UNICODE" PRECOMP_VC7_TOBEREMOVED
LD=dllwrap
LDFLAGS=
TARGET=../$(PlatformName)/$(ConfigurationName)/aac.plg
LDFLAGS+=-Wl,--subsystem,windows --image-base "0x00100000" --implib $(PlatformName)/$(ConfigurationName)/libaac.a -Wl,--subsystem,windowsce,4.20
LIBS+=-lkernel32 -luser32 -lgdi32 -lwinspool -lcomdlg32 -ladvapi32 -lshell32 -lole32 -loleaut32 -luuid -lodbc32 -lodbccp32 -lcommctrl -lcoredll
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"
CFLAGS+=-O2 -DNDEBUG -DLC_ONLY_DECODER -DARM -D_ARM_ -DARMV4 -DAAC_EXPORTS -D_WIN32_WCE=$(CEVER) -D$(CePlatform) -DUNDER_CE=$(CEVER) -DUNICODE -D"_UNICODE" PRECOMP_VC7_TOBEREMOVED
LD=dllwrap
LDFLAGS=
TARGET=../$(PlatformName)/$(ConfigurationName)/aac.plg
LDFLAGS+=-Wl,--subsystem,windows --image-base "0x00100000" --implib $(PlatformName)/$(ConfigurationName)/libaac.a -Wl,--subsystem,windowsce,5.01
LIBS+=-lkernel32 -luser32 -lgdi32 -lwinspool -lcomdlg32 -ladvapi32 -lshell32 -lole32 -loleaut32 -luuid -lodbc32 -lodbccp32 -lcommctrl -lcoredll -lOle32
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Release"
CFLAGS+=-DNDEBUG -DLC_ONLY_DECODER -DARM -D_ARM_ -DARMV4 -DAAC_EXPORTS -D_WIN32_WCE=$(CEVER) -D$(CePlatform) -DUNDER_CE=$(CEVER) -DUNICODE -D"_UNICODE" PRECOMP_VC7_TOBEREMOVED
LD=dllwrap
LDFLAGS=
TARGET=../$(PlatformName)/$(ConfigurationName)/aac.plg
LDFLAGS+=-Wl,--subsystem,windows --image-base "0x00100000" --implib $(PlatformName)/$(ConfigurationName)/libaac.a -Wl,--subsystem,windowsce,2.00  
LIBS+=-lkernel32 -luser32 -lgdi32 -lwinspool -lcomdlg32 -ladvapi32 -lshell32 -lole32 -loleaut32 -luuid -lodbc32 -lodbccp32 -lcommctrl -lcoredll -lOle32
else
ifeq "$(CFG)"  "aac - Win32 Release"
CFLAGS+=
LD=dllwrap
LDFLAGS=
TARGET=../$(PlatformName)/$(ConfigurationName)/$(ProjectName).plg
LDFLAGS+=-Wl,--subsystem,windows 
LIBS+=-lkernel32 -luser32 -lgdi32 -lwinspool -lcomdlg32 -ladvapi32 -lshell32 -lole32 -loleaut32 -luuid -lodbc32 -lodbccp32
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Debug"
CFLAGS+=-g -O0 -DDEBUG -DLC_ONLY_DECODER -DARM -D_ARM_ -DARMV4 -DAAC_EXPORTS -D_WIN32_WCE=$(CEVER) -D$(CePlatform) -DUNDER_CE=$(CEVER) -DUNICODE -D"_UNICODE" PRECOMP_VC7_TOBEREMOVED
LD=dllwrap
LDFLAGS=
TARGET=../$(PlatformName)/$(ConfigurationName)/aac.plg
LDFLAGS+=-Wl,--subsystem,windows --image-base "0x00100000" --implib $(PlatformName)/$(ConfigurationName)/libaac.a -Wl,--subsystem,windowsce,4.20
LIBS+=-lkernel32 -luser32 -lgdi32 -lwinspool -lcomdlg32 -ladvapi32 -lshell32 -lole32 -loleaut32 -luuid -lodbc32 -lodbccp32 -lcommctrl -lcoredll -lOle32 -lsecchk -lccrtrtti
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Debug"
CFLAGS+=-g -O0 -DDEBUG -DLC_ONLY_DECODER -DARM -D_ARM_ -DARMV4 -DAAC_EXPORTS -D_WIN32_WCE=$(CEVER) -D$(CePlatform) -DUNDER_CE=$(CEVER) -DUNICODE -D"_UNICODE" PRECOMP_VC7_TOBEREMOVED
LD=dllwrap
LDFLAGS=
TARGET=../$(PlatformName)/$(ConfigurationName)/aac.plg
LDFLAGS+=-Wl,--subsystem,windows --image-base "0x00100000" --implib $(PlatformName)/$(ConfigurationName)/libaac.a -Wl,--subsystem,windowsce,2.00  
LIBS+=-lkernel32 -luser32 -lgdi32 -lwinspool -lcomdlg32 -ladvapi32 -lshell32 -lole32 -loleaut32 -luuid -lodbc32 -lodbccp32 -lcommctrl -lcoredll -lOle32
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Debug"
CFLAGS+=-g -O0 -DDEBUG -DLC_ONLY_DECODER -DARM -D_ARM_ -DARMV4 -DAAC_EXPORTS -D_WIN32_WCE=$(CEVER) -D$(CePlatform) -DUNDER_CE=$(CEVER) -DUNICODE -D"_UNICODE" PRECOMP_VC7_TOBEREMOVED
LD=dllwrap
LDFLAGS=
TARGET=../$(PlatformName)/$(ConfigurationName)/aac.plg
LDFLAGS+=-Wl,--subsystem,windows --image-base "0x00100000" --implib $(PlatformName)/$(ConfigurationName)/libaac.a -Wl,--subsystem,windowsce,4.20
LIBS+=-lkernel32 -luser32 -lgdi32 -lwinspool -lcomdlg32 -ladvapi32 -lshell32 -lole32 -loleaut32 -luuid -lodbc32 -lodbccp32 -lcommctrl -lcoredll
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"
CFLAGS+=-g -O0 -DDEBUG -DLC_ONLY_DECODER -DARM -D_ARM_ -DARMV4 -DAAC_EXPORTS -D_WIN32_WCE=$(CEVER) -D$(CePlatform) -DUNDER_CE=$(CEVER) -DUNICODE -D"_UNICODE" PRECOMP_VC7_TOBEREMOVED
LD=dllwrap
LDFLAGS=
TARGET=../$(PlatformName)/$(ConfigurationName)/aac.plg
LDFLAGS+=-Wl,--subsystem,windows --image-base "0x00100000" --implib $(PlatformName)/$(ConfigurationName)/libaac.a -Wl,--subsystem,windowsce,5.01
LIBS+=-lkernel32 -luser32 -lgdi32 -lwinspool -lcomdlg32 -ladvapi32 -lshell32 -lole32 -loleaut32 -luuid -lodbc32 -lodbccp32 -lcommctrl -lcoredll -lOle32
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Debug"
CFLAGS+=-g -O0 -DDEBUG -DLC_ONLY_DECODER -DARM -D_ARM_ -DARMV4 -DAAC_EXPORTS -D_WIN32_WCE=$(CEVER) -D$(CePlatform) -DUNDER_CE=$(CEVER) -DUNICODE -D"_UNICODE" PRECOMP_VC7_TOBEREMOVED
LD=dllwrap
LDFLAGS=
TARGET=../$(PlatformName)/$(ConfigurationName)/aac.plg
LDFLAGS+=-Wl,--subsystem,windows --image-base "0x00100000" --implib $(PlatformName)/$(ConfigurationName)/libaac.a
LIBS+=-lkernel32 -luser32 -lgdi32 -lwinspool -lcomdlg32 -ladvapi32 -lshell32 -lole32 -loleaut32 -luuid -lodbc32 -lodbccp32 -lcommctrl -lcoredll -lOle32
else
ifeq "$(CFG)"  "aac - Win32 Debug"
CFLAGS+=
LD=dllwrap
LDFLAGS=
LDFLAGS+=-Wl,--subsystem,windows 
LIBS+=-lkernel32 -luser32 -lgdi32 -lwinspool -lcomdlg32 -ladvapi32 -lshell32 -lole32 -loleaut32 -luuid -lodbc32 -lodbccp32
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=-DNDEBUG -DLC_ONLY_DECODER -DARM -D_ARM_ -DARMV4 -DAAC_EXPORTS -D_WIN32_WCE=$(CEVER) -D$(CePlatform) -DUNDER_CE=$(CEVER) -DUNICODE -D"_UNICODE" PRECOMP_VC7_TOBEREMOVED
LD=dllwrap
LDFLAGS=
TARGET="Smartphone 2003 (ARMV4)/$(ConfigurationName)/aac.plg"
LDFLAGS+=-Wl,--subsystem,windows --image-base "0x00100000" --implib $(PlatformName)/$(ConfigurationName)/libaac.a -Wl,--subsystem,windowsce,4.20
LIBS+=-lkernel32 -luser32 -lgdi32 -lwinspool -lcomdlg32 -ladvapi32 -lshell32 -lole32 -loleaut32 -luuid -lodbc32 -lodbccp32 -lcommctrl -lcoredll -lOle32 -lsecchk -lccrtrtti
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=-DNDEBUG -DLC_ONLY_DECODER -DARM -D_ARM_ -DARMV4 -DAAC_EXPORTS -D_WIN32_WCE=$(CEVER) -D$(CePlatform) -DUNDER_CE=$(CEVER) -DUNICODE -D"_UNICODE" PRECOMP_VC7_TOBEREMOVED
LD=dllwrap
LDFLAGS=
TARGET="Windows Mobile 6 Professional SDK (ARMV4I)/$(ConfigurationName)/aac.plg"
LDFLAGS+=-Wl,--subsystem,windows --image-base "0x00100000" --implib $(PlatformName)/$(ConfigurationName)/libaac.a -Wl,--subsystem,windowsce,4.20  
LIBS+=-lkernel32 -luser32 -lgdi32 -lwinspool -lcomdlg32 -ladvapi32 -lshell32 -lole32 -loleaut32 -luuid -lodbc32 -lodbccp32 -lcommctrl -lcoredll -lOle32
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=-O2 -DNDEBUG -DLC_ONLY_DECODER -DARM -D_ARM_ -DARMV4 -DAAC_EXPORTS -D_WIN32_WCE=$(CEVER) -D$(CePlatform) -DUNDER_CE=$(CEVER) -DUNICODE -D"_UNICODE" PRECOMP_VC7_TOBEREMOVED
LD=dllwrap
LDFLAGS=
TARGET="Pocket PC 2003 (ARMV4)/$(ConfigurationName)/aac.plg"
LDFLAGS+=-Wl,--subsystem,windows --image-base "0x00100000" --implib $(PlatformName)/$(ConfigurationName)/libaac.a -Wl,--subsystem,windowsce,4.20
LIBS+=-lkernel32 -luser32 -lgdi32 -lwinspool -lcomdlg32 -ladvapi32 -lshell32 -lole32 -loleaut32 -luuid -lodbc32 -lodbccp32 -lcommctrl -lcoredll
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=-O2 -DNDEBUG -DLC_ONLY_DECODER -DARM -D_ARM_ -DARMV4 -DAAC_EXPORTS -D_WIN32_WCE=$(CEVER) -D$(CePlatform) -DUNDER_CE=$(CEVER) -DUNICODE -D"_UNICODE" PRECOMP_VC7_TOBEREMOVED
LD=dllwrap
LDFLAGS=
TARGET="Windows Mobile 5.0 Pocket PC SDK (ARMV4I)/$(ConfigurationName)/aac.plg"
LDFLAGS+=-Wl,--subsystem,windows --image-base "0x00100000" --implib $(PlatformName)/$(ConfigurationName)/libaac.a -Wl,--subsystem,windowsce,5.01
LIBS+=-lkernel32 -luser32 -lgdi32 -lwinspool -lcomdlg32 -ladvapi32 -lshell32 -lole32 -loleaut32 -luuid -lodbc32 -lodbccp32 -lcommctrl -lcoredll -lOle32
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=-DNDEBUG -DLC_ONLY_DECODER -DARM -D_ARM_ -DARMV4 -DAAC_EXPORTS -D_WIN32_WCE=$(CEVER) -D$(CePlatform) -DUNDER_CE=$(CEVER) -DUNICODE -D"_UNICODE" PRECOMP_VC7_TOBEREMOVED
LD=dllwrap
LDFLAGS=
TARGET="Windows Mobile 5.0 Smartphone SDK (ARMV4I)/$(ConfigurationName)/aac.plg"
LDFLAGS+=-Wl,--subsystem,windows --image-base "0x00100000" --implib $(PlatformName)/$(ConfigurationName)/libaac.a -Wl,--subsystem,windowsce,2.00  
LIBS+=-lkernel32 -luser32 -lgdi32 -lwinspool -lcomdlg32 -ladvapi32 -lshell32 -lole32 -loleaut32 -luuid -lodbc32 -lodbccp32 -lcommctrl -lcoredll -lOle32
else
ifeq "$(CFG)"  "aac - Win32 cegcc-flac-ffmpeg-release"
CFLAGS+=
LD=dllwrap
LDFLAGS=
TARGET=$(ConfigurationName)/$(ProjectName).plg
LDFLAGS+=-Wl,--subsystem,windows 
LIBS+=-lkernel32 -luser32 -lgdi32 -lwinspool -lcomdlg32 -ladvapi32 -lshell32 -lole32 -loleaut32 -luuid -lodbc32 -lodbccp32
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif

ifndef TARGET
TARGET=aac.dll
endif

.PHONY: all
all: $(TARGET)

%.o: %.c
	$(CC) $(CFLAGS) $(CPPFLAGS) -o $@ -c $<

%.o: %.cc
	$(CXX) $(CXXFLAGS) $(CPPFLAGS) -o $@ -c $<

%.o: %.cpp
	$(CXX) $(CXXFLAGS) $(CPPFLAGS) -o $@ -c $<

%.o: %.cxx
	$(CXX) $(CXXFLAGS) $(CPPFLAGS) -o $@ -c $<

%.res: %.rc
	$(RC) $(CPPFLAGS) -o $@ -i $<

ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
SOURCE_FILES= \
	faad.c \
	stdafx.c

HEADER_FILES= \
	faad.h \
	faad2/include/neaacdec.h

ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
LIBFAAD= \
	faad2/libfaad/bits.c \
	faad2/libfaad/cfft.c \
	faad2/libfaad/common.c \
	faad2/libfaad/decoder.c \
	faad2/libfaad/drc.c \
	faad2/libfaad/drm_dec.c \
	faad2/libfaad/error.c \
	faad2/libfaad/filtbank.c \
	faad2/libfaad/hcr.c \
	faad2/libfaad/huffman.c \
	faad2/libfaad/ic_predict.c \
	faad2/libfaad/is.c \
	faad2/libfaad/lt_predict.c \
	faad2/libfaad/mdct.c \
	faad2/libfaad/mp4.c \
	faad2/libfaad/ms.c \
	faad2/libfaad/output.c \
	faad2/libfaad/pns.c \
	faad2/libfaad/ps_dec.c \
	faad2/libfaad/ps_syntax.c \
	faad2/libfaad/pulse.c \
	faad2/libfaad/rvlc.c \
	faad2/libfaad/sbr_dct.c \
	faad2/libfaad/sbr_dec.c \
	faad2/libfaad/sbr_e_nf.c \
	faad2/libfaad/sbr_fbt.c \
	faad2/libfaad/sbr_hfadj.c \
	faad2/libfaad/sbr_hfgen.c \
	faad2/libfaad/sbr_huff.c \
	faad2/libfaad/sbr_qmf.c \
	faad2/libfaad/sbr_syntax.c \
	faad2/libfaad/sbr_tf_grid.c \
	faad2/libfaad/specrec.c \
	faad2/libfaad/ssr.c \
	faad2/libfaad/ssr_fb.c \
	faad2/libfaad/ssr_ipqf.c \
	faad2/libfaad/syntax.c \
	faad2/libfaad/tns.c

ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Smartphone 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "aac - Windows Mobile 5.0 Smartphone SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
endif
LIBPAAC= \
	libpaac/aac_imdct.c \
	libpaac/aac_imdct.h

RESOURCE_FILES=

SRCS=$(SOURCE_FILES) $(HEADER_FILES) $(LIBFAAD) $(LIBPAAC) $(RESOURCE_FILES) 

OBJS=$(patsubst %.rc,%.res,$(patsubst %.cxx,%.o,$(patsubst %.cpp,%.o,$(patsubst %.cc,%.o,$(patsubst %.c,%.o,$(filter %.c %.cc %.cpp %.cxx %.rc,$(SRCS)))))))

$(TARGET): $(OBJS)
	$(LD) $(LDFLAGS) -o $@ $(OBJS) $(LIBS)

.PHONY: clean
clean:
	-rm -f $(OBJS) $(TARGET) aac.dep

.PHONY: depends
depends:
	-$(CXX) $(CXXFLAGS) $(CPPFLAGS) -MM $(filter %.c %.cc %.cpp %.cxx,$(SRCS)) > aac.dep

-include aac.dep


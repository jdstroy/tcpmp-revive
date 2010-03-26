# Makefile - ac3.dsp

ifndef CFG
CFG=ac3 - Smartphone 2003 (ARMV4) Debug
endif
CC=gcc
CFLAGS=
CXX=g++
CXXFLAGS=$(CFLAGS)
RC=windres -O COFF
ifeq "$(CFG)"  "ac3 - Smartphone 2003 (ARMV4) Debug"
CFLAGS+=-DUNICODE -g -D"_UNICODE" PRECOMP_VC7_TOBEREMOVED -O0 -DDEBUG -DARM -D_ARM_ -DARMV4 -Dinline=__inline -DBUILDFIXED -DLIBA52_FIXED -DAC3_EXPORTS -D_WIN32_WCE=$(CEVER) -D$(CePlatform) -DUNDER_CE=$(CEVER)
LD=dllwrap
LDFLAGS=
TARGET=../$(PlatformName)/$(ConfigurationName)/ac3.plg
LDFLAGS+=-Wl,--subsystem,windows --image-base "0x00100000" --implib $(PlatformName)/$(ConfigurationName)/libac3.a -Wl,--subsystem,windowsce,4.20
LIBS+=-lkernel32 -luser32 -lgdi32 -lwinspool -lcomdlg32 -ladvapi32 -lshell32 -lole32 -loleaut32 -luuid -lodbc32 -lodbccp32 -lcommctrl -lcoredll -lsecchk -lccrtrtti
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 6 Professional SDK (ARMV4I) Debug"
CFLAGS+=-DUNICODE -g -D"_UNICODE" PRECOMP_VC7_TOBEREMOVED -O0 -DDEBUG -DARM -D_ARM_ -DARMV4 -Dinline=__inline -DBUILDFIXED -DLIBA52_FIXED -DAC3_EXPORTS -D_WIN32_WCE=$(CEVER) -D$(CePlatform) -DUNDER_CE=$(CEVER)
LD=dllwrap
LDFLAGS=
TARGET=../$(PlatformName)/$(ConfigurationName)/ac3.plg
LDFLAGS+=-Wl,--subsystem,windows --image-base "0x00100000" --implib $(PlatformName)/$(ConfigurationName)/libac3.a -Wl,--subsystem,windowsce,2.00  
LIBS+=-lkernel32 -luser32 -lgdi32 -lwinspool -lcomdlg32 -ladvapi32 -lshell32 -lole32 -loleaut32 -luuid -lodbc32 -lodbccp32 -lcommctrl -lcoredll
else
ifeq "$(CFG)"  "ac3 - Pocket PC 2003 (ARMV4) Debug"
CFLAGS+=-DUNICODE -g -D"_UNICODE" PRECOMP_VC7_TOBEREMOVED -O0 -DDEBUG -DARM -D_ARM_ -DARMV4 -Dinline=__inline -DBUILDFIXED -DLIBA52_FIXED -DAC3_EXPORTS -D_WIN32_WCE=$(CEVER) -D$(CePlatform) -DUNDER_CE=$(CEVER)
LD=dllwrap
LDFLAGS=
TARGET=../$(PlatformName)/$(ConfigurationName)/ac3.plg
LDFLAGS+=-Wl,--subsystem,windows --image-base "0x00100000" --implib $(PlatformName)/$(ConfigurationName)/libac3.a -Wl,--subsystem,windowsce,4.20
LIBS+=-lkernel32 -luser32 -lgdi32 -lwinspool -lcomdlg32 -ladvapi32 -lshell32 -lole32 -loleaut32 -luuid -lodbc32 -lodbccp32 -lcommctrl -lcoredll
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"
CFLAGS+=-DUNICODE -g -D"_UNICODE" PRECOMP_VC7_TOBEREMOVED -O0 -DDEBUG -DARM -D_ARM_ -DARMV4 -Dinline=__inline -DBUILDFIXED -DLIBA52_FIXED -DAC3_EXPORTS -D_WIN32_WCE=$(CEVER) -D$(CePlatform) -DUNDER_CE=$(CEVER)
LD=dllwrap
LDFLAGS=
TARGET=../$(PlatformName)/$(ConfigurationName)/ac3.plg
LDFLAGS+=-Wl,--subsystem,windows --image-base "0x00100000" --implib $(PlatformName)/$(ConfigurationName)/libac3.a -Wl,--subsystem,windowsce,5.01
LIBS+=-lkernel32 -luser32 -lgdi32 -lwinspool -lcomdlg32 -ladvapi32 -lshell32 -lole32 -loleaut32 -luuid -lodbc32 -lodbccp32 -lcommctrl -lcoredll
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Debug"
CFLAGS+=-DUNICODE -g -D"_UNICODE" PRECOMP_VC7_TOBEREMOVED -O0 -DDEBUG -DARM -D_ARM_ -DARMV4 -Dinline=__inline -DBUILDFIXED -DLIBA52_FIXED -DAC3_EXPORTS -D_WIN32_WCE=$(CEVER) -D$(CePlatform) -DUNDER_CE=$(CEVER)
LD=dllwrap
LDFLAGS=
TARGET=../$(PlatformName)/$(ConfigurationName)/ac3.plg
LDFLAGS+=-Wl,--subsystem,windows --image-base "0x00100000" --implib $(PlatformName)/$(ConfigurationName)/libac3.a
LIBS+=-lkernel32 -luser32 -lgdi32 -lwinspool -lcomdlg32 -ladvapi32 -lshell32 -lole32 -loleaut32 -luuid -lodbc32 -lodbccp32 -lcommctrl -lcoredll
else
ifeq "$(CFG)"  "ac3 - Win32 Debug"
CFLAGS+=
LD=dllwrap
LDFLAGS=
LDFLAGS+=-Wl,--subsystem,windows 
LIBS+=-lkernel32 -luser32 -lgdi32 -lwinspool -lcomdlg32 -ladvapi32 -lshell32 -lole32 -loleaut32 -luuid -lodbc32 -lodbccp32
else
ifeq "$(CFG)"  "ac3 - Smartphone 2003 (ARMV4) Release"
CFLAGS+=-DUNICODE -O2 -D"_UNICODE" PRECOMP_VC7_TOBEREMOVED -DARM -D_ARM_ -DARMV4 -DNDEBUG -Dinline=__inline -DBUILDFIXED -DLIBA52_FIXED -DAC3_EXPORTS -D_WIN32_WCE=$(CEVER) -D$(CePlatform) -DUNDER_CE=$(CEVER)
LD=dllwrap
LDFLAGS=
TARGET=../$(PlatformName)/$(ConfigurationName)/ac3.plg
LDFLAGS+=-Map "$(PlatformName)/$(ConfigurationName)/ac3.map" -Wl,--subsystem,windows --image-base "0x00100000" --implib $(PlatformName)/$(ConfigurationName)/libac3.a -Wl,--subsystem,windowsce,4.20
LIBS+=-lkernel32 -luser32 -lgdi32 -lwinspool -lcomdlg32 -ladvapi32 -lshell32 -lole32 -loleaut32 -luuid -lodbc32 -lodbccp32 -lcommctrl -lcoredll -lsecchk -lccrtrtti
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 6 Professional SDK (ARMV4I) Release"
CFLAGS+=-DUNICODE -O2 -D"_UNICODE" PRECOMP_VC7_TOBEREMOVED -DARM -D_ARM_ -DARMV4 -DNDEBUG -Dinline=__inline -DBUILDFIXED -DLIBA52_FIXED -DAC3_EXPORTS -D_WIN32_WCE=$(CEVER) -D$(CePlatform) -DUNDER_CE=$(CEVER)
LD=dllwrap
LDFLAGS=
TARGET=../$(PlatformName)/$(ConfigurationName)/ac3.plg
LDFLAGS+=-Map "$(PlatformName)/$(ConfigurationName)/ac3.map" -Wl,--subsystem,windows --image-base "0x00100000" --implib $(PlatformName)/$(ConfigurationName)/libac3.a -Wl,--subsystem,windowsce,4.20  
LIBS+=-lkernel32 -luser32 -lgdi32 -lwinspool -lcomdlg32 -ladvapi32 -lshell32 -lole32 -loleaut32 -luuid -lodbc32 -lodbccp32 -lcommctrl -lcoredll
else
ifeq "$(CFG)"  "ac3 - Pocket PC 2003 (ARMV4) Release"
CFLAGS+=-DUNICODE -O2 -D"_UNICODE" PRECOMP_VC7_TOBEREMOVED -DARM -D_ARM_ -DARMV4 -DNDEBUG -Dinline=__inline -DBUILDFIXED -DLIBA52_FIXED -DAC3_EXPORTS -D_WIN32_WCE=$(CEVER) -D$(CePlatform) -DUNDER_CE=$(CEVER)
LD=dllwrap
LDFLAGS=
TARGET=../$(PlatformName)/$(ConfigurationName)/ac3.plg
LDFLAGS+=-Map "$(PlatformName)/$(ConfigurationName)/ac3.map" -Wl,--subsystem,windows --image-base "0x00100000" --implib $(PlatformName)/$(ConfigurationName)/libac3.a -Wl,--subsystem,windowsce,4.20
LIBS+=-lkernel32 -luser32 -lgdi32 -lwinspool -lcomdlg32 -ladvapi32 -lshell32 -lole32 -loleaut32 -luuid -lodbc32 -lodbccp32 -lcommctrl -lcoredll
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"
CFLAGS+=-DUNICODE -O2 -D"_UNICODE" PRECOMP_VC7_TOBEREMOVED -DARM -D_ARM_ -DARMV4 -DNDEBUG -Dinline=__inline -DBUILDFIXED -DLIBA52_FIXED -DAC3_EXPORTS -D_WIN32_WCE=$(CEVER) -D$(CePlatform) -DUNDER_CE=$(CEVER)
LD=dllwrap
LDFLAGS=
TARGET=../$(PlatformName)/$(ConfigurationName)/ac3.plg
LDFLAGS+=-Map "$(PlatformName)/$(ConfigurationName)/ac3.map" -Wl,--subsystem,windows --image-base "0x00100000" --implib $(PlatformName)/$(ConfigurationName)/libac3.a -Wl,--subsystem,windowsce,5.01
LIBS+=-lkernel32 -luser32 -lgdi32 -lwinspool -lcomdlg32 -ladvapi32 -lshell32 -lole32 -loleaut32 -luuid -lodbc32 -lodbccp32 -lcommctrl -lcoredll
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Release"
CFLAGS+=-DUNICODE -O2 -D"_UNICODE" PRECOMP_VC7_TOBEREMOVED -DARM -D_ARM_ -DARMV4 -DNDEBUG -Dinline=__inline -DBUILDFIXED -DLIBA52_FIXED -DAC3_EXPORTS -D_WIN32_WCE=$(CEVER) -D$(CePlatform) -DUNDER_CE=$(CEVER)
LD=dllwrap
LDFLAGS=
TARGET=../$(PlatformName)/$(ConfigurationName)/ac3.plg
LDFLAGS+=-Map "$(PlatformName)/$(ConfigurationName)/ac3.map" -Wl,--subsystem,windows --image-base "0x00100000" --implib $(PlatformName)/$(ConfigurationName)/libac3.a -Wl,--subsystem,windowsce,2.00  
LIBS+=-lkernel32 -luser32 -lgdi32 -lwinspool -lcomdlg32 -ladvapi32 -lshell32 -lole32 -loleaut32 -luuid -lodbc32 -lodbccp32 -lcommctrl -lcoredll
else
ifeq "$(CFG)"  "ac3 - Win32 Release"
CFLAGS+=
LD=dllwrap
LDFLAGS=
TARGET=../$(PlatformName)/$(ConfigurationName)/$(ProjectName).plg
LDFLAGS+=-Wl,--subsystem,windows 
LIBS+=-lkernel32 -luser32 -lgdi32 -lwinspool -lcomdlg32 -ladvapi32 -lshell32 -lole32 -loleaut32 -luuid -lodbc32 -lodbccp32
else
ifeq "$(CFG)"  "ac3 - Smartphone 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=-DUNICODE -O2 -D"_UNICODE" PRECOMP_VC7_TOBEREMOVED -DARM -D_ARM_ -DARMV4 -DNDEBUG -Dinline=__inline -DBUILDFIXED -DLIBA52_FIXED -DAC3_EXPORTS -D_WIN32_WCE=$(CEVER) -D$(CePlatform) -DUNDER_CE=$(CEVER)
LD=dllwrap
LDFLAGS=
TARGET="Smartphone 2003 (ARMV4)/$(ConfigurationName)/ac3.plg"
LDFLAGS+=-Map "$(PlatformName)/$(ConfigurationName)/ac3.map" -Wl,--subsystem,windows --image-base "0x00100000" --implib $(PlatformName)/$(ConfigurationName)/libac3.a -Wl,--subsystem,windowsce,4.20
LIBS+=-lkernel32 -luser32 -lgdi32 -lwinspool -lcomdlg32 -ladvapi32 -lshell32 -lole32 -loleaut32 -luuid -lodbc32 -lodbccp32 -lcommctrl -lcoredll -lsecchk -lccrtrtti
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=-DUNICODE -O2 -D"_UNICODE" PRECOMP_VC7_TOBEREMOVED -DARM -D_ARM_ -DARMV4 -DNDEBUG -Dinline=__inline -DBUILDFIXED -DLIBA52_FIXED -DAC3_EXPORTS -D_WIN32_WCE=$(CEVER) -D$(CePlatform) -DUNDER_CE=$(CEVER)
LD=dllwrap
LDFLAGS=
TARGET="Windows Mobile 6 Professional SDK (ARMV4I)/$(ConfigurationName)/ac3.plg"
LDFLAGS+=-Map "$(PlatformName)/$(ConfigurationName)/ac3.map" -Wl,--subsystem,windows --image-base "0x00100000" --implib $(PlatformName)/$(ConfigurationName)/libac3.a -Wl,--subsystem,windowsce,4.20  
LIBS+=-lkernel32 -luser32 -lgdi32 -lwinspool -lcomdlg32 -ladvapi32 -lshell32 -lole32 -loleaut32 -luuid -lodbc32 -lodbccp32 -lcommctrl -lcoredll
else
ifeq "$(CFG)"  "ac3 - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=-DUNICODE -O2 -D"_UNICODE" PRECOMP_VC7_TOBEREMOVED -DARM -D_ARM_ -DARMV4 -DNDEBUG -Dinline=__inline -DBUILDFIXED -DLIBA52_FIXED -DAC3_EXPORTS -D_WIN32_WCE=$(CEVER) -D$(CePlatform) -DUNDER_CE=$(CEVER)
LD=dllwrap
LDFLAGS=
TARGET="Pocket PC 2003 (ARMV4)/$(ConfigurationName)/ac3.plg"
LDFLAGS+=-Map "$(PlatformName)/$(ConfigurationName)/ac3.map" -Wl,--subsystem,windows --image-base "0x00100000" --implib $(PlatformName)/$(ConfigurationName)/libac3.a -Wl,--subsystem,windowsce,4.20
LIBS+=-lkernel32 -luser32 -lgdi32 -lwinspool -lcomdlg32 -ladvapi32 -lshell32 -lole32 -loleaut32 -luuid -lodbc32 -lodbccp32 -lcommctrl -lcoredll
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=-DUNICODE -O2 -D"_UNICODE" PRECOMP_VC7_TOBEREMOVED -DARM -D_ARM_ -DARMV4 -DNDEBUG -Dinline=__inline -DBUILDFIXED -DLIBA52_FIXED -DAC3_EXPORTS -D_WIN32_WCE=$(CEVER) -D$(CePlatform) -DUNDER_CE=$(CEVER)
LD=dllwrap
LDFLAGS=
TARGET="Windows Mobile 5.0 Pocket PC SDK (ARMV4I)/$(ConfigurationName)/ac3.plg"
LDFLAGS+=-Map "$(PlatformName)/$(ConfigurationName)/ac3.map" -Wl,--subsystem,windows --image-base "0x00100000" --implib $(PlatformName)/$(ConfigurationName)/libac3.a -Wl,--subsystem,windowsce,5.01
LIBS+=-lkernel32 -luser32 -lgdi32 -lwinspool -lcomdlg32 -ladvapi32 -lshell32 -lole32 -loleaut32 -luuid -lodbc32 -lodbccp32 -lcommctrl -lcoredll
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 5.0 Smartphone SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=-DUNICODE -O2 -D"_UNICODE" PRECOMP_VC7_TOBEREMOVED -DARM -D_ARM_ -DARMV4 -DNDEBUG -Dinline=__inline -DBUILDFIXED -DLIBA52_FIXED -DAC3_EXPORTS -D_WIN32_WCE=$(CEVER) -D$(CePlatform) -DUNDER_CE=$(CEVER)
LD=dllwrap
LDFLAGS=
TARGET="Windows Mobile 5.0 Smartphone SDK (ARMV4I)/$(ConfigurationName)/ac3.plg"
LDFLAGS+=-Map "$(PlatformName)/$(ConfigurationName)/ac3.map" -Wl,--subsystem,windows --image-base "0x00100000" --implib $(PlatformName)/$(ConfigurationName)/libac3.a -Wl,--subsystem,windowsce,2.00  
LIBS+=-lkernel32 -luser32 -lgdi32 -lwinspool -lcomdlg32 -ladvapi32 -lshell32 -lole32 -loleaut32 -luuid -lodbc32 -lodbccp32 -lcommctrl -lcoredll
else
ifeq "$(CFG)"  "ac3 - Win32 cegcc-flac-ffmpeg-release"
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
TARGET=ac3.dll
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

ifeq "$(CFG)"  "ac3 - Smartphone 2003 (ARMV4) Debug"
CFLAGS+=-W
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 6 Professional SDK (ARMV4I) Debug"
CFLAGS+=-W
else
ifeq "$(CFG)"  "ac3 - Pocket PC 2003 (ARMV4) Debug"
CFLAGS+=-W
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"
CFLAGS+=-W
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Debug"
CFLAGS+=-W
else
ifeq "$(CFG)"  "ac3 - Smartphone 2003 (ARMV4) Release"
CFLAGS+=-W
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 6 Professional SDK (ARMV4I) Release"
CFLAGS+=-W
else
ifeq "$(CFG)"  "ac3 - Pocket PC 2003 (ARMV4) Release"
CFLAGS+=-W
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"
CFLAGS+=-W
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Release"
CFLAGS+=-W
else
ifeq "$(CFG)"  "ac3 - Smartphone 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=-W
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=-W
else
ifeq "$(CFG)"  "ac3 - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=-W
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=-W
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 5.0 Smartphone SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=-W
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
ifeq "$(CFG)"  "ac3 - Smartphone 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 6 Professional SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Pocket PC 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Smartphone 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 6 Professional SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Pocket PC 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Smartphone 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 5.0 Smartphone SDK (ARMV4I) cegcc-flac-ffmpeg-release"
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
	ac3.c \
	stdafx.c

HEADER_FILES= \
	ac3.h

ifeq "$(CFG)"  "ac3 - Smartphone 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 6 Professional SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Pocket PC 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Smartphone 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 6 Professional SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Pocket PC 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Smartphone 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 5.0 Smartphone SDK (ARMV4I) cegcc-flac-ffmpeg-release"
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
ifeq "$(CFG)"  "ac3 - Smartphone 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 6 Professional SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Pocket PC 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Smartphone 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 6 Professional SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Pocket PC 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Smartphone 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 5.0 Smartphone SDK (ARMV4I) cegcc-flac-ffmpeg-release"
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
ifeq "$(CFG)"  "ac3 - Smartphone 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 6 Professional SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Pocket PC 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Smartphone 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 6 Professional SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Pocket PC 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Smartphone 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 5.0 Smartphone SDK (ARMV4I) cegcc-flac-ffmpeg-release"
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
ifeq "$(CFG)"  "ac3 - Smartphone 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 6 Professional SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Pocket PC 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Smartphone 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 6 Professional SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Pocket PC 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Smartphone 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 5.0 Smartphone SDK (ARMV4I) cegcc-flac-ffmpeg-release"
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
ifeq "$(CFG)"  "ac3 - Smartphone 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 6 Professional SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Pocket PC 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Smartphone 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 6 Professional SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Pocket PC 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Smartphone 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 5.0 Smartphone SDK (ARMV4I) cegcc-flac-ffmpeg-release"
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
ifeq "$(CFG)"  "ac3 - Smartphone 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 6 Professional SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Pocket PC 2003 (ARMV4) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Debug"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Smartphone 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 6 Professional SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Pocket PC 2003 (ARMV4) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 5.0 Smartphone SDK (ARMV4I) Release"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Smartphone 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 6 Professional SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Pocket PC 2003 (ARMV4) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 5.0 Pocket PC SDK (ARMV4I) cegcc-flac-ffmpeg-release"
CFLAGS+=
else
ifeq "$(CFG)"  "ac3 - Windows Mobile 5.0 Smartphone SDK (ARMV4I) cegcc-flac-ffmpeg-release"
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
LIBA52= \
	liba52/a52.h \
	liba52/a52_internal.h \
	liba52/a52_util.h \
	liba52/bit_allocate.c \
	liba52/bitstream.h \
	liba52/bitstream2.c \
	liba52/crc.c \
	liba52/downmix.c \
	liba52/imdct.c \
	liba52/mm_accel.h \
	liba52/parse.c \
	liba52/tables.h

RESOURCE_FILES=

SRCS=$(SOURCE_FILES) $(HEADER_FILES) $(LIBA52) $(RESOURCE_FILES) 

OBJS=$(patsubst %.rc,%.res,$(patsubst %.cxx,%.o,$(patsubst %.cpp,%.o,$(patsubst %.cc,%.o,$(patsubst %.c,%.o,$(filter %.c %.cc %.cpp %.cxx %.rc,$(SRCS)))))))

$(TARGET): $(OBJS)
	$(LD) $(LDFLAGS) -o $@ $(OBJS) $(LIBS)

.PHONY: clean
clean:
	-rm -f $(OBJS) $(TARGET) ac3.dep

.PHONY: depends
depends:
	-$(CXX) $(CXXFLAGS) $(CPPFLAGS) -MM $(filter %.c %.cc %.cpp %.cxx,$(SRCS)) > ac3.dep

-include ac3.dep


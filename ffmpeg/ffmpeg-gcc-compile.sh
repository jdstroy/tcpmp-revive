CROSS_PREFIX='/opt/mingw32ce/bin/arm-mingw32ce-'
ARCH='-march=armv6' #like Qualcom cpu's
#ARCH='-mtune=xscale' #ok
#ARCH='-mtune=iwmmxt' #ok
#ARCH='-mtune=strongarm'
#ARCH='-march=armv5te -mtune=xscale'
OPT='-O3'
mkdir ffmpegCompile
${CROSS_PREFIX}gcc $ARCH $OPT -o ffmpegCompile/ffmpeg.o -c ffmpeg.c -IffmpegCe/include
${CROSS_PREFIX}gcc $ARCH $OPT -o ffmpegCompile/stdafx.o -c stdafx.c -IffmpegCe/include
cd ffmpegCompile
${CROSS_PREFIX}gcc $ARCH $OPT -shared -o ffmpeg.plg ffmpeg.o stdafx.o -L../ffmpegCe/lib -lavcodec -lavformat -lavdevice -lavutil -L../../armplg/libcommon -lcommon
${CROSS_PREFIX}strip ffmpeg.plg
cp ffmpeg.plg ../../armplg
#rm -rf ../../armplg/ffmpeg.plg
#upx -o ../../armplg/ffmpeg.plg ffmpeg.plg
cd ..
rm -rf ffmpegCompile/*
rmdir ffmpegCompile

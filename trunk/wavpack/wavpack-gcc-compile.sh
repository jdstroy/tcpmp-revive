CROSS_PREFIX='/opt/mingw32ce/bin/arm-mingw32ce-'
OPT='-march=armv4 -mtune=xscale -DWAVPACK_EXPORTS -DUNICODE -DNDEBUG -DFIXED_POINT -O3 -Wall'
mkdir wavpackCompile
cd decoder
NAMES=(wputils words unpack metadata float bits)
for name in ${NAMES[@]}
   do
      ${CROSS_PREFIX}gcc $OPT -c -o ../wavpackCompile/${name}.o ${name}.c
   done 
cd ..
${CROSS_PREFIX}gcc $OPT -c -o wavpackCompile/wavpack.o -Idecoder wavpack.c
${CROSS_PREFIX}gcc $OPT -c -o wavpackCompile/stdafx.o -Idecoder stdafx.c
cd wavpackCompile
${CROSS_PREFIX}gcc $OPT -shared -o wavpack.plg wputils.o words.o unpack.o metadata.o float.o bits.o wavpack.o stdafx.o -L../../armplg/libcommon -lcommon
${CROSS_PREFIX}strip wavpack.plg
rm -rf ../../armplg/wavpack.plg
upx -o ../../armplg/wavpack.plg wavpack.plg
cd ..
rm -rf wavpackCompile/*
rmdir wavpackCompile

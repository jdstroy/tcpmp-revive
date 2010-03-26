CROSS_PREFFIX='/opt/mingw32ce/bin/arm-mingw32ce-'

INCLUDE='-Iflac/src/libFLAC/include -Iflac/include'
OPT='-DFLAC_EXPORTS -DUNICODE -DFLAC__NO_DLL -O3 -march=armv4 -mtune=xscale'
SRC_PATH='flac/src/libFLAC/'
COMP_PATH='flacCompile'
mkdir flacCompile

${CROSS_PREFFIX}gcc $OPT $INCLUDE -o ${COMP_PATH}/stream_decoder.o -c ${SRC_PATH}stream_decoder.c
${CROSS_PREFFIX}gcc $OPT $INCLUDE -o ${COMP_PATH}/memory.o -c ${SRC_PATH}memory.c
${CROSS_PREFFIX}gcc $OPT $INCLUDE -o ${COMP_PATH}/md5.o -c ${SRC_PATH}md5.c
${CROSS_PREFFIX}gcc $OPT $INCLUDE -o ${COMP_PATH}/lpc.o -c ${SRC_PATH}lpc.c
${CROSS_PREFFIX}gcc $OPT $INCLUDE -DVERSION=\"1.2.0\" -o ${COMP_PATH}/format.o -c ${SRC_PATH}format.c
${CROSS_PREFFIX}gcc $OPT $INCLUDE -o ${COMP_PATH}/float.o -c ${SRC_PATH}float.c
${CROSS_PREFFIX}gcc $OPT $INCLUDE -o ${COMP_PATH}/fixed.o -c ${SRC_PATH}fixed.c
${CROSS_PREFFIX}gcc $OPT $INCLUDE -o ${COMP_PATH}/crc.o -c ${SRC_PATH}crc.c
${CROSS_PREFFIX}gcc $OPT $INCLUDE -o ${COMP_PATH}/cpu.o -c ${SRC_PATH}cpu.c
${CROSS_PREFFIX}gcc $OPT $INCLUDE -o ${COMP_PATH}/bitreader.o -c ${SRC_PATH}bitreader.c
${CROSS_PREFFIX}gcc $OPT $INCLUDE -o ${COMP_PATH}/bitmath.o -c ${SRC_PATH}bitmath.c
${CROSS_PREFFIX}gcc $OPT -o ${COMP_PATH}/stdafx.o -c stdafx.c
${CROSS_PREFFIX}gcc $OPT $INCLUDE -o ${COMP_PATH}/flac.o -c flac.c
cd flacCompile
${CROSS_PREFFIX}gcc -shared $OPT -o flac.plg stream_decoder.o memory.o md5.o lpc.o format.o float.o fixed.o crc.o cpu.o bitreader.o bitmath.o stdafx.o flac.o -L../../armplg/libcommon -lcommon -lws2_32
${CROSS_PREFFIX}strip flac.plg
rm -rf ../../armplg/flac.plg
upx -o ../../armplg/flac.plg flac.plg
cd ..
rm -rf flacCompile/*
rmdir flacCompile


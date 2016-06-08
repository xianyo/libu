#!/bin/sh

GNUMAKE=make
LOCAL_DIR=`pwd`

LIBU_DIR=$LOCAL_DIR/libu

#we can disabled all unused modules of LibU
#and specifiy cross_compile to disabled test
makl-conf --prefix="${LIBU_DIR}" --cross_compile

makl --makl-tc-file=${LOCAL_DIR}/linux-arm-android.tc 
makl install
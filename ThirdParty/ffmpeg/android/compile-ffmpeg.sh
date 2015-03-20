#! /usr/bin/env bash
#
# Copyright (C) 2013-2014 William Shi <manshilingkai@gmail.com>
#
#

#----------
UNI_BUILD_ROOT=`pwd`
FF_TARGET=$1
set -e
set +x

FF_ALL_ARCHS="armv5 armv7a arm64-v8a x86 x86_64 mips mips64"
FF_ACT_ARCHS="armv7a arm64-v8a x86"

echo_archs() {
    echo "===================="
    echo "[*] check archs"
    echo "===================="
    echo "FF_ALL_ARCHS = $FF_ALL_ARCHS"
    echo "FF_ACT_ARCHS = $FF_ACT_ARCHS"
    echo ""
}

#----------
case "$FF_TARGET" in
    "")
        echo_archs
        sh tools/do-compile-ffmpeg.sh armv7a
    ;;
    armv5|armv7a|arm64-v8a|x86|x86_64|mips|mips64)
        echo_archs
        sh tools/do-compile-ffmpeg.sh $FF_TARGET
    ;;
    all)
        echo_archs
        for ARCH in $FF_ACT_ARCHS
        do
            sh tools/do-compile-ffmpeg.sh $ARCH
        done
    ;;
    clean)
        echo_archs
        for ARCH in $FF_ALL_ARCHS
        do
            cd ffmpeg-$ARCH && git clean -xdf && cd -
        done
        rm -rf ./build/ffmpeg-*
    ;;
    check)
        echo_archs
    ;;
    *)
        echo "Usage:"
        echo "  compile-ffmpeg.sh armv7a|arm64-v8a|x86"
        echo "  compile-ffmpeg.sh all"
        echo "  compile-ffmpeg.sh clean"
        echo "  compile-ffmpeg.sh check"
        exit 1
    ;;
esac

#----------
echo "--------------------"
echo "[*] Finished"
echo "--------------------"

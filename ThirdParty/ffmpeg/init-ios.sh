#! /usr/bin/env bash
#
# Copyright (C) 2014-2015 William Shi <manshilingkai@gmail.com>
#
#

set -e

echo "== pull gas-preprocessor base =="
git clone git://git.libav.org/gas-preprocessor.git extra/gas-preprocessor

function pull_fork()
{
    echo "== pull ffmpeg fork $1 =="
    cp -R extra/ffmpeg ios/ffmpeg-$1
}

pull_fork "armv7"
pull_fork "armv7s"
pull_fork "arm64"
pull_fork "i386"
pull_fork "x86_64"

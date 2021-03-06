#! /usr/bin/env bash
#
# Copyright (C) 2014-2015 William Shi <manshilingkai@gmail.com>
#
#

set -e

function pull_fork()
{
    echo "== pull ffmpeg fork $1 =="
    rm -rf ios/ffmpeg-$1
    cp -rf extra/ffmpeg ios/ffmpeg-$1
}

pull_fork "armv7"
pull_fork "armv7s"
pull_fork "arm64"
pull_fork "i386"
pull_fork "x86_64"

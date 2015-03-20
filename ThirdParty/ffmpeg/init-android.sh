#! /usr/bin/env bash
#
# Copyright (C) 2014-2015 William Shi <manshilingkai@gmail.com>
#
#

set -e

function pull_fork()
{
    echo "== pull ffmpeg fork $1 =="
    rm -rf android/ffmpeg-$1
    cp -rf extra/ffmpeg android/ffmpeg-$1
}

pull_fork "armv5"
pull_fork "armv7a"
pull_fork "arm64-v8a"
pull_fork "x86"
pull_fork "x86_64"
pull_fork "mips"
pull_fork "mips64"

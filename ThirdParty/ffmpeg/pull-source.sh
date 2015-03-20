#! /usr/bin/env bash
#
# Copyright (C) 2014-2015 William Shi <manshilingkai@gmail.com>
#
#

set -e

echo "== pull ffmpeg base =="
git clone git://source.ffmpeg.org/ffmpeg.git extra/ffmpeg

echo "== pull gas-preprocessor base =="
git clone git://git.libav.org/gas-preprocessor.git extra/gas-preprocessor

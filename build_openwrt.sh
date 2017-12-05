#!/bin/sh

NODE_GYP=/home/ysy/node/lib/node_modules/npm/bin/node-gyp-bin/node-gyp

OPENWRT_TOOLCHAIN=/opt/ysy/openwrt/staging_dir/toolchain-mipsel_24kec+dsp_gcc-4.8-linaro_glibc-2.21/
export STAGING_DIR=/opt/ysy/openwrt/staging_dir/target-mipsel_24kec+dsp_glibc-2.21
export CC=${OPENWRT_TOOLCHAIN}/bin/mipsel-openwrt-linux-gcc
export CXX=${OPENWRT_TOOLCHAIN}/bin/mipsel-openwrt-linux-g++

$NODE_GYP clean
$NODE_GYP --arch=mipsel --target=v8.9.1 configure
$NODE_GYP --arch=mipsel --target=v8.9.1 build

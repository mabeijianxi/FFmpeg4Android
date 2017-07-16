# Created by jianxi on 2017/6/4
# https://github.com/mabeijianxi
# mabeijianxi@gmail.com

#!/bin/bash
basepath=$(cd `dirname $0`; pwd)
export TMPDIR=$basepath/ffmpegtemp
# NDK的路径，根据自己的安装位置进行设置
NDK=/Users/jianxi/android/sdk/ndk-bundle
# 编译针对的平台，可以根据自己的需求进行设置
# 这里选择最低支持android-14, arm架构，生成的so库是放在
# libs/armeabi文件夹下的，若针对x86架构，要选择arch-x86
PLATFORM=$NDK/platforms/android-14/arch-x86
# 工具链的路径，根据编译的平台不同而不同
# arm-linux-androideabi-4.9与上面设置的PLATFORM对应，4.9为工具的版本号，
# 根据自己安装的NDK版本来确定，一般使用最新的版本
TOOLCHAIN=$NDK/toolchains/x86-4.9/prebuilt/darwin-x86_64

CPU=x86

echo $basepath

FDK_INCLUDE=$basepath/fdk-aac-0.1.5/android/$CPU/include

FDK_LIB=$basepath/fdk-aac-0.1.5/android/$CPU/lib

X264_INCLUDE=$basepath/libx264/android/$CPU/include

X264_LIB=$basepath/libx264/android/$CPU/lib

FF_EXTRA_CFLAGS="-O3 -DANDROID -Dipv6mr_interface=ipv6mr_ifindex -fasm -Wno-psabi -fno-short-enums -fno-strict-aliasing -fomit-frame-pointer -march=k8 "
FF_CFLAGS="-O3 -Wall -pipe \
-ffast-math \
-fstrict-aliasing -Werror=strict-aliasing \
-Wno-psabi -Wa,--noexecstack \
-DANDROID  "

PREFIX=./android_more/$CPU

rm "./compat/strtod.o"

build_one(){
./configure \
--prefix=$PREFIX \
--enable-cross-compile \
--disable-runtime-cpudetect \
--disable-asm \
--arch=$CPU \
--target-os=android \
--cc=$TOOLCHAIN/bin/i686-linux-android-gcc \
--cross-prefix=$TOOLCHAIN/bin/i686-linux-android- \
--disable-stripping \
--nm=$TOOLCHAIN/bin/i686-linux-android-nm \
--sysroot=$PLATFORM \
--extra-cflags="-I$X264_INCLUDE  -I$FDK_INCLUDE " \
--extra-ldflags="-L$FDK_LIB -L$X264_LIB" \
--enable-gpl \
--enable-shared \
--disable-static \
--enable-version3 \
--enable-pthreads \
--enable-small \
--disable-vda \
--disable-iconv \
--enable-encoders \
--enable-libx264 \
--enable-neon \
--enable-yasm \
--enable-libfdk_aac \
--enable-encoder=libx264 \
--enable-encoder=libfdk_aac \
--enable-encoder=mjpeg \
--enable-encoder=png \
--enable-nonfree \
--enable-muxers \
--enable-decoders \
--enable-demuxers \
--enable-parsers \
--enable-protocols \
--enable-zlib \
--enable-avfilter \
--disable-outdevs \
--disable-ffprobe \
--disable-ffplay \
--disable-ffmpeg \
--disable-ffserver \
--disable-debug \
--disable-ffprobe \
--disable-ffplay \
--disable-ffmpeg \
--disable-postproc \
--disable-avdevice \
--disable-symver \
--disable-stripping \
--extra-cflags="$FF_EXTRA_CFLAGS  $FF_CFLAGS" \
--extra-ldflags="  "
}
build_one



make clean
make -j16
make install

cp $FDK_LIB/libfdk-aac.so $PREFIX/lib


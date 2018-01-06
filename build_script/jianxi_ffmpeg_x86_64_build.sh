# Created by jianxi on 2017/6/4
# https://github.com/mabeijianxi
# mabeijianxi@gmail.com

echo params:build_configure_sh
echo start $0 .........

. settings.sh
. check_before_start.sh
CPU=x86_64
. ffmpeg_settings.sh
BUILD_CONFIGURE_SH=$1

basepath=$(cd `dirname $0`; pwd)
NDK=$ANDROID_NDK_ROOT_PATH
PLATFORM=$NDK/platforms/$PLATFORM_VERSION/arch-x86_64
TOOLCHAIN=$NDK/toolchains/x86_64-$NDK_TOOLCHAIN_ABI_VERSION/prebuilt/$TOOLCHAIN_PLATFORM
CONFIGURE_CC=$TOOLCHAIN/bin/x86_64-linux-android-gcc
CONFIGURE_CROSS_PREFIX=$TOOLCHAIN/bin/x86_64-linux-android-
CONFIGURE_NM=$TOOLCHAIN/bin/x86_64-linux-android-nm
CONFIGURE_ARCH=x86_64


echo $basepath

FF_EXTRA_CFLAGS="-O3 -DANDROID -Dipv6mr_interface=ipv6mr_ifindex -fasm -Wno-psabi -fno-short-enums -fno-strict-aliasing -fomit-frame-pointer -march=k8 "
FF_CFLAGS="-O3 -Wall -pipe \
-ffast-math \
-fstrict-aliasing -Werror=strict-aliasing \
-Wno-psabi -Wa,--noexecstack \
-DANDROID  "

PREFIX=$basepath/$BUILD_FOLDER_NAME/$CPU


pushd ../ffmpeg-3.2.5
export TMPDIR=./ffmpegtemp

rm "./compat/strtod.o"

if [[ -z "$BUILD_CONFIGURE_SH" ]]; then
  echo "No build_configure_sh specify, use default_build_configure.sh"
  . $basepath/default_build_configure.sh
else
  . $basepath/$BUILD_CONFIGURE_SH
fi

popd
cp $FDK_LIB/libfdk-aac.so $PREFIX/lib



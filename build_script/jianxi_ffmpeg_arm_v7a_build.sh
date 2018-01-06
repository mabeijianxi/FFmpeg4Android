# Created by jianxi on 2017/6/4
# https://github.com/mabeijianxi
# mabeijianxi@gmail.com

echo params:build_configure_sh
echo start $0 .........

. settings.sh
. check_before_start.sh
CPU=arm
. ffmpeg_settings.sh
BUILD_CONFIGURE_SH=$1

basepath=$(cd `dirname $0`; pwd)
NDK=$ANDROID_NDK_ROOT_PATH
PLATFORM=$NDK/platforms/$PLATFORM_VERSION/arch-arm
TOOLCHAIN=$NDK/toolchains/arm-linux-androideabi-$NDK_TOOLCHAIN_ABI_VERSION/prebuilt/$TOOLCHAIN_PLATFORM
CONFIGURE_CC=$TOOLCHAIN/bin/arm-linux-androideabi-gcc
CONFIGURE_CROSS_PREFIX=$TOOLCHAIN/bin/arm-linux-androideabi-
CONFIGURE_NM=$TOOLCHAIN/bin/arm-linux-androideabi-nm
CONFIGURE_ARCH=arm


echo $basepath

FF_EXTRA_CFLAGS="-DANDROID -fPIC -ffunction-sections -funwind-tables -fstack-protector -march=armv7-a -mfloat-abi=softfp -mfpu=vfpv3-d16 -fomit-frame-pointer -fstrict-aliasing -funswitch-loops -finline-limit=300 "
FF_CFLAGS="-O3 -Wall -pipe \
-ffast-math \
-fstrict-aliasing -Werror=strict-aliasing \
-Wno-psabi -Wa,--noexecstack \
-DANDROID  "
PREFIX=$basepath/$BUILD_FOLDER_NAME/$CPU-v7a

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


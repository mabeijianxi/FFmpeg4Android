# Created by jianxi on 2017/6/4
# https://github.com/mabeijianxi
# mabeijianxi@gmail.com

echo start $0 .........

. ../settings.sh

basepath=$(cd `dirname $0`; pwd)


NDK_HOME=$ANDROID_NDK_ROOT_PATH
SYSROOT=$NDK_HOME/platforms/$PLATFORM_VERSION/arch-x86_64
ANDROID_BIN=$NDK_HOME/toolchains/x86_64-$NDK_TOOLCHAIN_ABI_VERSION/prebuilt/$TOOLCHAIN_PLATFORM/bin
CROSS_COMPILE=${ANDROID_BIN}/x86_64-linux-android-

PREFIX=$basepath/$BUILD_FOLDER_NAME/x86_64


CFLAGS=" "

FLAGS="--enable-static  --host=x86_64-linux --target=android  --disable-asm"

export CXX="${CROSS_COMPILE}g++ --sysroot=${SYSROOT}"

export LDFLAGS=" -L$SYSROOT/usr/lib  $CFLAGS "

export CXXFLAGS=$CFLAGS

export CFLAGS=$CFLAGS

export CC="${CROSS_COMPILE}gcc --sysroot=${SYSROOT}"

export AR="${CROSS_COMPILE}ar"

export LD="${CROSS_COMPILE}ld"

export AS="${CROSS_COMPILE}gcc"

pushd ../../fdk-aac-0.1.5/

. $basepath/default_build_configure.sh

popd

# Created by jianxi on 2017/6/4
# https://github.com/mabeijianxi
# mabeijianxi@gmail.com

NDK_HOME=/Users/jianxi/android/sdk/ndk-bundle
ANDROID_API=android-14

SYSROOT=$NDK_HOME/platforms/$ANDROID_API/arch-x86

ANDROID_BIN=$NDK_HOME/toolchains/x86-4.9/prebuilt/darwin-x86_64/bin

CROSS_COMPILE=${ANDROID_BIN}/i686-linux-android-

basepath=$(cd `dirname $0`; pwd)

echo "$basepath"


CPU=x86


CFLAGS=" "

FLAGS="--enable-static  --host=i686-linux --target=android --disable-asm"

export CXX="${CROSS_COMPILE}g++ --sysroot=${SYSROOT}"

export LDFLAGS=" -L$SYSROOT/usr/lib  $CFLAGS "

export CXXFLAGS=$CFLAGS

export CFLAGS=$CFLAGS

export CC="${CROSS_COMPILE}gcc --sysroot=${SYSROOT}"

export AR="${CROSS_COMPILE}ar"

export LD="${CROSS_COMPILE}ld"

export AS="${CROSS_COMPILE}gcc"


./configure $FLAGS \
--enable-pic \
--enable-strip \
--prefix=${basepath}/android/$CPU

make clean
make -j16
make install

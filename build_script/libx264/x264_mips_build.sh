
echo start $0 .........

. ../settings.sh

basepath=$(cd `dirname $0`; pwd)


pushd ../../libx264

NDK=$ANDROID_NDK_ROOT_PATH

PLATFORM=$NDK/platforms/$PLATFORM_VERSION/arch-mips
TOOLCHAIN=$NDK/toolchains/mipsel-linux-android-$NDK_TOOLCHAIN_ABI_VERSION/prebuilt/$TOOLCHAIN_PLATFORM
PREFIX=$basepath/$BUILD_FOLDER_NAME/mips
CONFIGURE_HOST=mipsel-linux
CONFIGURE_CROSS_PREFIX=$TOOLCHAIN/bin/mipsel-linux-android-

. $basepath/default_build_configure.sh

popd

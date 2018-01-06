
echo start $0 .........

. ../settings.sh

basepath=$(cd `dirname $0`; pwd)


pushd ../../libx264

NDK=$ANDROID_NDK_ROOT_PATH

PLATFORM=$NDK/platforms/$PLATFORM_VERSION/arch-x86_64
TOOLCHAIN=$NDK/toolchains/x86_64-$NDK_TOOLCHAIN_ABI_VERSION/prebuilt/$TOOLCHAIN_PLATFORM
PREFIX=$basepath/$BUILD_FOLDER_NAME/x86_64
CONFIGURE_HOST=x86_64-linux
CONFIGURE_CROSS_PREFIX=$TOOLCHAIN/bin/x86_64-linux-android-

. $basepath/default_build_configure.sh

popd

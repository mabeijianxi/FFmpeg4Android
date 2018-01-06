
echo start $0 .........

. ../settings.sh

basepath=$(cd `dirname $0`; pwd)


pushd ../../libx264

NDK=$ANDROID_NDK_ROOT_PATH

PLATFORM=$NDK/platforms/$PLATFORM_VERSION/arch-arm64
TOOLCHAIN=$NDK/toolchains/aarch64-linux-android-$NDK_TOOLCHAIN_ABI_VERSION/prebuilt/$TOOLCHAIN_PLATFORM
PREFIX=$basepath/$BUILD_FOLDER_NAME/arm64-v8a
CONFIGURE_HOST=aarch64-linux
CONFIGURE_CROSS_PREFIX=$TOOLCHAIN/bin/aarch64-linux-android-

. $basepath/default_build_configure.sh

popd

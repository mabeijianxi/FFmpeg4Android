
echo start $0 .........

. ../settings.sh

basepath=$(cd `dirname $0`; pwd)


pushd ../../libx264

NDK=$ANDROID_NDK_ROOT_PATH

PLATFORM=$NDK/platforms/$PLATFORM_VERSION/arch-arm
TOOLCHAIN=$NDK/toolchains/arm-linux-androideabi-$NDK_TOOLCHAIN_ABI_VERSION/prebuilt/$TOOLCHAIN_PLATFORM
PREFIX=$basepath/$BUILD_FOLDER_NAME/arm
CONFIGURE_HOST=arm-linux-androideabi
CONFIGURE_CROSS_PREFIX=$TOOLCHAIN/bin/arm-linux-androideabi-

. $basepath/default_build_configure.sh

popd

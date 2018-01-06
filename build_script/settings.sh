ANDROID_NDK_ROOT_PATH=${ANDROID_NDK}
if [[ -z "$ANDROID_NDK_ROOT_PATH" ]]; then
  echo "You need to set ANDROID_NDK environment variable, please check instructions"
  exit
fi

# 根据自己安装的NDK版本来确定，一般使用最新的版本
NDK_TOOLCHAIN_ABI_VERSION=4.9

NUMBER_OF_CORES=$(nproc)

PLATFORM_VERSION=android-21

# For Mac
#TOOLCHAIN_PLATFORM=darwin-x86_64
# For Linux
TOOLCHAIN_PLATFORM=linux-x86_64


FDK_AAC_DIR=fdk-aac-0.1.5


BUILD_FOLDER_NAME=build

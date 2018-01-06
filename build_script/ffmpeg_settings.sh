
echo Start ffmpeg_settings...

basepath=$(cd `dirname $0`; pwd)

FDK_INCLUDE=$basepath/$FDK_AAC_DIR/$BUILD_FOLDER_NAME/$CPU/include

FDK_LIB=$basepath/$FDK_AAC_DIR/$BUILD_FOLDER_NAME/$CPU/lib

X264_INCLUDE=$basepath/libx264/$BUILD_FOLDER_NAME/$CPU/include

X264_LIB=$basepath/libx264/$BUILD_FOLDER_NAME/$CPU/lib

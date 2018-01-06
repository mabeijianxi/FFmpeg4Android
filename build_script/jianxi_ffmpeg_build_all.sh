# Created by jianxi on 2017/6/4
# https://github.com/mabeijianxi
# mabeijianxi@gmail.com

echo params:[build_configure_sh:.sh files for configure] [fast_build:true or false nullable, skip build x264 and fdk-aac]
echo start $0 .........

build_dependency(){
    echo Start build x264 and fdk_aac...
    cd libx264
    chmod a+x x264_build_all.sh
    ./x264_build_all.sh
    cd ..

    cd fdk-aac-0.1.5
    chmod a+x fdk_aac_build_all.sh
    ./fdk_aac_build_all.sh
    cd ..
}

if [ "false" == "$2" ]; then
    build_dependency
fi

if [ -z "$2" ]; then
    build_dependency
fi


chmod a+x jianxi_ffmpeg_*.sh

# Build arm v6
./jianxi_ffmpeg_arm_build.sh $1

# Build arm  v7a
./jianxi_ffmpeg_arm_v7a_build.sh $1

# Build arm64 v8a
./jianxi_ffmpeg_arm64_v8a_build.sh $1

# Build x86
./jianxi_ffmpeg_x86_build.sh $1

# Build x86_64
./jianxi_ffmpeg_x86_64_build.sh $1

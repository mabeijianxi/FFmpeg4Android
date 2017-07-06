# Created by jianxi on 2017/6/4
# https://github.com/mabeijianxi
# mabeijianxi@gmail.com

chmod a+x jianxi_ffmpeg_*.sh

cd libx264
chmod a+x x264_build_all.sh
./x264_build_all.sh

cd ..
cd fdk-aac-0.1.5
chmod a+x fdk_aac_build_all.sh
./fdk_aac_build_all.sh

cd ..

# Build arm v6
./jianxi_ffmpeg_arm_build.sh

# Build arm  v7a
./jianxi_ffmpeg_arm_v7a_build.sh

# Build arm64 v8a
./jianxi_ffmpeg_arm64_v8a_build.sh

# Build x86
./jianxi_ffmpeg_x86_build.sh

# Build x86_64
./jianxi_ffmpeg_x86_64_build.sh

# FFmpeg2AndroidDemo
This is a compilation of **Android** available under the **FFmpeg** project, containing code examples.
[中文说明](https://github.com/mabeijianxi/FFmpeg4Android/blob/master/README_CN.md)
## The project includes:
> * FFmpeg Full Platform Compilation Script
> * Libx264 Full Platform Compilation Script
> * Libx264 Full Platform Compilation Script
> * Compiled Good Version of the SO library (download in ffmpeg3.2.5 / android)
> * Compiled Rich Version of the SO library (download in ffmpeg3.2.5 / android_more)> * CMake Compile FFmpeg as the script which can be command
> * Android command executes the interface of FFmpeg
> * Android Use Case

## Script directory structure

- ffmpeg-3.2.5
	* jianxi_ffmpeg_build_all.sh
	* jianxi_ffmpeg_arm64_v8a_build.sh
	* jianxi_ffmpeg_arm_build.sh
	* jianxi_ffmpeg_arm_v7a_build.sh
	* jianxi_ffmpeg_x86_64_build.sh
	* jianxi_ffmpeg_x86_build.sh
	* jianxi_ffmpeg_build_all_more.sh
	* jianxi_ffmpeg_arm64_v8a_build_more.sh
	* jianxi_ffmpeg_arm_build_more.sh
	* jianxi_ffmpeg_arm_v7a_build_more.sh
	* jianxi_ffmpeg_x86_64_build_more.sh
	* jianxi_ffmpeg_x86_build_more.sh
	- fdk-aac-0.1.5
		* fdk_aac_arm64_v8a_build.sh
		* fdk_aac_arm_build.sh
		* fdk_aac_build_all.sh
		* fdk_aac_mips_build.sh
		* fdk_aac_x86_64_build.sh
		* fdk_aac_x86_build.sh
	- libx264
		* x264_arm64_v8a_build.sh
		* x264_arm_build.sh
		* x264_build_all.sh
		* x264_mips_build.sh
		* x264_x86_64_build.sh
		* x264_x86_build.sh

## Compile 
1. 、Download the project, find the above scripts under ffmpeg, and then change the address which **NDK** variable points to the address of local ndk catalogue. If you are not using mac system, you also need to modify the words `darwin-x86_64` to `linux-x86_64`.<br>

2. Compile Lite, cd into the ffmpeg catalogue, find the script you need to structure, and drag it into the command order if you need to implement the architecture. You can find it under “`/jianxi_ffmpeg_build_all.sh`” in the android catalogue, this process is relatively long, so I recommend you to close other useless processes before execution.<br>

3.  Compile the enhanced version, **cd** into the ffmpeg catalogue, find the script you need to structure, and drag it into the command order if you need to implement the architecture. You can find it under `./jianxi_ffmpeg_build_all_more.sh` in the android catalogue, this process is relatively long, and so I recommend you to close other useless processes before execution.

## Run this project：
Because I did not put FFmpeg into the project, so I can not specify the relative path. You need to find `CMakeLists.txt`, and fill your FFmpeg source catalogue inside `include_directories`.
## Announcements
* This project script is generic, but you may modify some of the paths defined in the script or keep my directory structure, otherwise it will be unsuccessful when executing <br>
* If you download from the official website, then you need to follow my blog or other online tutorials on **FFmpeg** and **libfdk-aac** to make the changes, or there may exit some problem

## More
You can visit some of my related articles to access my ideas. Related articles are:[编译Android下可用的FFmpeg\(包含libx264与libfdk-aac\)](http://blog.csdn.net/mabeijianxi/article/details/74544879)、[编译Android下可执行命令的FFmpeg](http://blog.csdn.net/mabeijianxi/article/details/72904694)

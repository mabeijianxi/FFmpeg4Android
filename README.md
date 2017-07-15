# FFmpeg2AndroidDemo
这是一个编译 **Android** 下可用的 **FFmpeg** 的项目，内含代码示例。
## 工程内包含:
> * FFmpeg 全平台编译脚本
> * libx264 全平台编译脚本
> * libfdk-aac 全平台编译脚本
> * 已编译好的精简版 SO 库（在 ffmpeg3.2.5/android 下）
> * 已编译好的丰富版 SO 库（在 ffmpeg3.2.5/android_more 下
> * cMake编译FFmpeg为可命令执行的脚本
> * Android端命令执行FFmpeg的接口
> * Android使用案例

## 脚本目录结构

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

## 编译
1. 下载本工程，在 ffmpeg 目录里找到上面这些脚本，并修改每个脚本里面的 **NDK** 变量指向的地址为你本机 ndk 目录地址，如果你不是 mac 系统，你还需要把里面包含 **darwin-x86_64** 的字样修改为 **linux-x86_64** 。<br>

2. 编译精简版，**cd** 进入 **ffmpeg** 目录，找到你所需要的架构的脚本，拖入命令行中执行即可，如果需要架构执行 **./jianxi_ffmpeg_build_all.sh** 即可在 **android** 目录下找到产物，此过程比较长，执行前建议关闭其他无用进程。<br>

3.  编译增强版，**cd** 进入 **ffmpeg** 目录，找到你所需要的架构的脚本，拖入命令行中执行即可，如果需要架构执行 **./jianxi_ffmpeg_build_all_more.sh** 即可在 **android_more** 目录下找到产物，此过程更长，执行前建议关闭其他无用进程。
## 运行本项目：
由于我没把 FFmpeg 放入工程中，所以没法指定相对路径，你需要找到 **CMakeLists.txt**，把里面 **include_directories** 填上你 FFmpeg 源码目录

## 注意事项
* 本项目脚本具有通用性，但是你要么修改下脚本里面定义的一些路径，要么保持我这个目录结构，不然将执行不成功。<br>
* 你如果从官网重新下载，那么你需要跟着我的博客或者网上其他教程对 **FFmpeg** 与 **libfdk-aac** 做些修改，不然也会出问题。

## 更多
你可以访问我的一些相关文章来查阅我的思路,相关文章有:[编译Android下可用的FFmpeg\(包含libx264与libfdk-aac\)](http://blog.csdn.net/mabeijianxi/article/details/74544879)、[编译Android下可执行命令的FFmpeg](http://blog.csdn.net/mabeijianxi/article/details/72904694)

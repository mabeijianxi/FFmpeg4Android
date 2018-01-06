package com.mabeijianxi.jianxiffmpegcmd;

import android.app.Application;

import com.mabeijianxi.jianxiffmpegcmd.util.FileUtil;

/**
 * Created by Chilling on 2018/1/6.
 */

public class MainApplication extends Application {

    public static final String TEST_VIDEO_MP4 = "test_video.mp4";

    @Override
    public void onCreate() {
        super.onCreate();
        FileUtil.CopyAssets(getApplicationContext(), TEST_VIDEO_MP4, getExternalFilesDir(null).getPath() + "/" + TEST_VIDEO_MP4);
    }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_format {int dummy; } ;
struct sun6i_video {struct v4l2_format fmt; } ;
struct file {int dummy; } ;


 struct sun6i_video* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_g_fmt_vid_cap(struct file *file, void *priv,
    struct v4l2_format *fmt)
{
 struct sun6i_video *video = video_drvdata(file);

 *fmt = video->fmt;

 return 0;
}

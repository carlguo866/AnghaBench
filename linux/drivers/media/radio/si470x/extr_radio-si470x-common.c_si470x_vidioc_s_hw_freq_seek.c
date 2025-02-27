
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_hw_freq_seek {scalar_t__ tuner; } ;
struct si470x_device {int dummy; } ;
struct file {int f_flags; } ;


 int EINVAL ;
 int EWOULDBLOCK ;
 int O_NONBLOCK ;
 int si470x_set_seek (struct si470x_device*,struct v4l2_hw_freq_seek const*) ;
 struct si470x_device* video_drvdata (struct file*) ;

__attribute__((used)) static int si470x_vidioc_s_hw_freq_seek(struct file *file, void *priv,
  const struct v4l2_hw_freq_seek *seek)
{
 struct si470x_device *radio = video_drvdata(file);

 if (seek->tuner != 0)
  return -EINVAL;

 if (file->f_flags & O_NONBLOCK)
  return -EWOULDBLOCK;

 return si470x_set_seek(radio, seek);
}

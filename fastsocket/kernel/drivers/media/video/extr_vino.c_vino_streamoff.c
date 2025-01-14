
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vino_channel_settings {scalar_t__ streaming; scalar_t__ reading; } ;
struct file {int dummy; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 int EBUSY ;
 struct vino_channel_settings* video_drvdata (struct file*) ;
 int vino_capture_stop (struct vino_channel_settings*) ;

__attribute__((used)) static int vino_streamoff(struct file *file, void *__fh,
  enum v4l2_buf_type i)
{
 struct vino_channel_settings *vcs = video_drvdata(file);
 if (vcs->reading)
  return -EBUSY;

 if (!vcs->streaming)
  return 0;

 vcs->streaming = 0;
 vino_capture_stop(vcs);

 return 0;
}

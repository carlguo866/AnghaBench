
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int field; scalar_t__ bytesperline; scalar_t__ colorspace; int sizeimage; int height; int width; int pixelformat; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; int type; } ;
struct hdpvr_video_info {int height; int width; } ;
struct hdpvr_fh {struct hdpvr_device* dev; } ;
struct hdpvr_device {int bulk_in_size; } ;
struct file {struct hdpvr_fh* private_data; } ;


 int EFAULT ;
 int ENODEV ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_FIELD_ANY ;
 int V4L2_PIX_FMT_MPEG ;
 struct hdpvr_video_info* get_video_info (struct hdpvr_device*) ;
 int kfree (struct hdpvr_video_info*) ;

__attribute__((used)) static int vidioc_g_fmt_vid_cap(struct file *file, void *private_data,
    struct v4l2_format *f)
{
 struct hdpvr_fh *fh = file->private_data;
 struct hdpvr_device *dev = fh->dev;
 struct hdpvr_video_info *vid_info;

 if (!dev)
  return -ENODEV;

 vid_info = get_video_info(dev);
 if (!vid_info)
  return -EFAULT;

 f->type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
 f->fmt.pix.pixelformat = V4L2_PIX_FMT_MPEG;
 f->fmt.pix.width = vid_info->width;
 f->fmt.pix.height = vid_info->height;
 f->fmt.pix.sizeimage = dev->bulk_in_size;
 f->fmt.pix.colorspace = 0;
 f->fmt.pix.bytesperline = 0;
 f->fmt.pix.field = V4L2_FIELD_ANY;

 kfree(vid_info);
 return 0;
}

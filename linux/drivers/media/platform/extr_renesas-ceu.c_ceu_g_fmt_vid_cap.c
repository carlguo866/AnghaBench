
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pix_mp; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct file {int dummy; } ;
struct ceu_device {int v4l2_pix; } ;


 struct ceu_device* video_drvdata (struct file*) ;

__attribute__((used)) static int ceu_g_fmt_vid_cap(struct file *file, void *priv,
        struct v4l2_format *f)
{
 struct ceu_device *ceudev = video_drvdata(file);

 f->fmt.pix_mp = ceudev->v4l2_pix;

 return 0;
}

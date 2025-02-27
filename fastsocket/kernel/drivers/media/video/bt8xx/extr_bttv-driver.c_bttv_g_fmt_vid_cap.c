
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int pixelformat; int field; } ;
struct TYPE_6__ {TYPE_3__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct file {int dummy; } ;
struct TYPE_5__ {int field; } ;
struct bttv_fh {TYPE_4__* fmt; TYPE_1__ cap; int height; int width; } ;
struct TYPE_8__ {int fourcc; } ;


 int pix_format_set_size (TYPE_3__*,TYPE_4__*,int ,int ) ;

__attribute__((used)) static int bttv_g_fmt_vid_cap(struct file *file, void *priv,
     struct v4l2_format *f)
{
 struct bttv_fh *fh = priv;

 pix_format_set_size(&f->fmt.pix, fh->fmt,
    fh->width, fh->height);
 f->fmt.pix.field = fh->cap.field;
 f->fmt.pix.pixelformat = fh->fmt->fourcc;

 return 0;
}

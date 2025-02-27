
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vb2_queue {int dummy; } ;
struct TYPE_7__ {int colorspace; int sizeimage; int bytesperline; int pixelformat; int field; int height; int width; } ;
struct TYPE_8__ {TYPE_3__ pix; } ;
struct v4l2_format {TYPE_4__ fmt; int type; } ;
struct rga_frame {int colorspace; int size; int stride; TYPE_2__* fmt; int height; int width; } ;
struct TYPE_5__ {int m2m_ctx; } ;
struct rga_ctx {TYPE_1__ fh; } ;
struct file {int dummy; } ;
struct TYPE_6__ {int fourcc; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct rga_frame*) ;
 int PTR_ERR (struct rga_frame*) ;
 int V4L2_FIELD_NONE ;
 struct rga_frame* rga_get_frame (struct rga_ctx*,int ) ;
 struct vb2_queue* v4l2_m2m_get_vq (int ,int ) ;

__attribute__((used)) static int vidioc_g_fmt(struct file *file, void *prv, struct v4l2_format *f)
{
 struct rga_ctx *ctx = prv;
 struct vb2_queue *vq;
 struct rga_frame *frm;

 vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx, f->type);
 if (!vq)
  return -EINVAL;
 frm = rga_get_frame(ctx, f->type);
 if (IS_ERR(frm))
  return PTR_ERR(frm);

 f->fmt.pix.width = frm->width;
 f->fmt.pix.height = frm->height;
 f->fmt.pix.field = V4L2_FIELD_NONE;
 f->fmt.pix.pixelformat = frm->fmt->fourcc;
 f->fmt.pix.bytesperline = frm->stride;
 f->fmt.pix.sizeimage = frm->size;
 f->fmt.pix.colorspace = frm->colorspace;

 return 0;
}

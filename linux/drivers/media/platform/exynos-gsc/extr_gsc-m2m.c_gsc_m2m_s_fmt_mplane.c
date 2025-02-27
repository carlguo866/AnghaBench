
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vb2_queue {int dummy; } ;
struct v4l2_pix_format_mplane {int height; int width; TYPE_2__* plane_fmt; int colorspace; int pixelformat; } ;
struct TYPE_4__ {struct v4l2_pix_format_mplane pix_mp; } ;
struct v4l2_format {int type; TYPE_1__ fmt; } ;
struct gsc_frame {int f_height; int f_width; int * payload; TYPE_3__* fmt; int colorspace; } ;
struct gsc_ctx {struct gsc_frame d_frame; struct gsc_frame s_frame; int m2m_ctx; } ;
struct file {int dummy; } ;
struct TYPE_6__ {int num_planes; } ;
struct TYPE_5__ {int sizeimage; } ;


 int EBUSY ;
 int EINVAL ;
 int GSC_DST_FMT ;
 int GSC_PARAMS ;
 int GSC_SRC_FMT ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ;
 scalar_t__ V4L2_TYPE_IS_OUTPUT (int ) ;
 struct gsc_ctx* fh_to_ctx (void*) ;
 TYPE_3__* find_fmt (int *,int *,int ) ;
 int gsc_ctx_state_lock_set (int,struct gsc_ctx*) ;
 int gsc_m2m_try_fmt_mplane (struct file*,void*,struct v4l2_format*) ;
 int gsc_set_frame_size (struct gsc_frame*,int ,int ) ;
 int pr_debug (char*,int ,int ) ;
 int pr_err (char*,int ) ;
 struct vb2_queue* v4l2_m2m_get_vq (int ,int ) ;
 scalar_t__ vb2_is_streaming (struct vb2_queue*) ;

__attribute__((used)) static int gsc_m2m_s_fmt_mplane(struct file *file, void *fh,
     struct v4l2_format *f)
{
 struct gsc_ctx *ctx = fh_to_ctx(fh);
 struct vb2_queue *vq;
 struct gsc_frame *frame;
 struct v4l2_pix_format_mplane *pix;
 int i, ret = 0;

 ret = gsc_m2m_try_fmt_mplane(file, fh, f);
 if (ret)
  return ret;

 vq = v4l2_m2m_get_vq(ctx->m2m_ctx, f->type);

 if (vb2_is_streaming(vq)) {
  pr_err("queue (%d) busy", f->type);
  return -EBUSY;
 }

 if (V4L2_TYPE_IS_OUTPUT(f->type))
  frame = &ctx->s_frame;
 else
  frame = &ctx->d_frame;

 pix = &f->fmt.pix_mp;
 frame->fmt = find_fmt(&pix->pixelformat, ((void*)0), 0);
 frame->colorspace = pix->colorspace;
 if (!frame->fmt)
  return -EINVAL;

 for (i = 0; i < frame->fmt->num_planes; i++)
  frame->payload[i] = pix->plane_fmt[i].sizeimage;

 gsc_set_frame_size(frame, pix->width, pix->height);

 if (f->type == V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE)
  gsc_ctx_state_lock_set(GSC_PARAMS | GSC_DST_FMT, ctx);
 else
  gsc_ctx_state_lock_set(GSC_PARAMS | GSC_SRC_FMT, ctx);

 pr_debug("f_w: %d, f_h: %d", frame->f_width, frame->f_height);

 return 0;
}

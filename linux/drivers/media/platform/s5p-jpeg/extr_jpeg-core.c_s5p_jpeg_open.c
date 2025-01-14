
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct video_device {int dummy; } ;
struct s5p_jpeg_fmt {int dummy; } ;
struct TYPE_9__ {int m2m_ctx; int * ctrl_handler; } ;
struct TYPE_8__ {struct s5p_jpeg_fmt* fmt; } ;
struct TYPE_7__ {struct s5p_jpeg_fmt* fmt; } ;
struct s5p_jpeg_ctx {TYPE_3__ fh; TYPE_2__ cap_q; TYPE_1__ out_q; int scale_factor; int mode; struct s5p_jpeg* jpeg; int ctrl_handler; } ;
struct s5p_jpeg {int lock; int m2m_dev; struct video_device* vfd_encoder; } ;
struct file {TYPE_3__* private_data; } ;


 int ENOMEM ;
 int ERESTARTSYS ;
 int EXYNOS3250_DEC_SCALE_FACTOR_8_8 ;
 int FMT_TYPE_CAPTURE ;
 int FMT_TYPE_OUTPUT ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int S5P_JPEG_DECODE ;
 int S5P_JPEG_ENCODE ;
 int V4L2_PIX_FMT_JPEG ;
 int V4L2_PIX_FMT_RGB565 ;
 int V4L2_PIX_FMT_YUYV ;
 int kfree (struct s5p_jpeg_ctx*) ;
 struct s5p_jpeg_ctx* kzalloc (int,int ) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int queue_init ;
 int s5p_jpeg_controls_create (struct s5p_jpeg_ctx*) ;
 struct s5p_jpeg_fmt* s5p_jpeg_find_format (struct s5p_jpeg_ctx*,int ,int ) ;
 int v4l2_fh_add (TYPE_3__*) ;
 int v4l2_fh_del (TYPE_3__*) ;
 int v4l2_fh_exit (TYPE_3__*) ;
 int v4l2_fh_init (TYPE_3__*,struct video_device*) ;
 int v4l2_m2m_ctx_init (int ,struct s5p_jpeg_ctx*,int ) ;
 struct video_device* video_devdata (struct file*) ;
 struct s5p_jpeg* video_drvdata (struct file*) ;

__attribute__((used)) static int s5p_jpeg_open(struct file *file)
{
 struct s5p_jpeg *jpeg = video_drvdata(file);
 struct video_device *vfd = video_devdata(file);
 struct s5p_jpeg_ctx *ctx;
 struct s5p_jpeg_fmt *out_fmt, *cap_fmt;
 int ret = 0;

 ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
 if (!ctx)
  return -ENOMEM;

 if (mutex_lock_interruptible(&jpeg->lock)) {
  ret = -ERESTARTSYS;
  goto free;
 }

 v4l2_fh_init(&ctx->fh, vfd);

 ctx->fh.ctrl_handler = &ctx->ctrl_handler;
 file->private_data = &ctx->fh;
 v4l2_fh_add(&ctx->fh);

 ctx->jpeg = jpeg;
 if (vfd == jpeg->vfd_encoder) {
  ctx->mode = S5P_JPEG_ENCODE;
  out_fmt = s5p_jpeg_find_format(ctx, V4L2_PIX_FMT_RGB565,
       FMT_TYPE_OUTPUT);
  cap_fmt = s5p_jpeg_find_format(ctx, V4L2_PIX_FMT_JPEG,
       FMT_TYPE_CAPTURE);
 } else {
  ctx->mode = S5P_JPEG_DECODE;
  out_fmt = s5p_jpeg_find_format(ctx, V4L2_PIX_FMT_JPEG,
       FMT_TYPE_OUTPUT);
  cap_fmt = s5p_jpeg_find_format(ctx, V4L2_PIX_FMT_YUYV,
       FMT_TYPE_CAPTURE);
  ctx->scale_factor = EXYNOS3250_DEC_SCALE_FACTOR_8_8;
 }

 ctx->fh.m2m_ctx = v4l2_m2m_ctx_init(jpeg->m2m_dev, ctx, queue_init);
 if (IS_ERR(ctx->fh.m2m_ctx)) {
  ret = PTR_ERR(ctx->fh.m2m_ctx);
  goto error;
 }

 ctx->out_q.fmt = out_fmt;
 ctx->cap_q.fmt = cap_fmt;

 ret = s5p_jpeg_controls_create(ctx);
 if (ret < 0)
  goto error;

 mutex_unlock(&jpeg->lock);
 return 0;

error:
 v4l2_fh_del(&ctx->fh);
 v4l2_fh_exit(&ctx->fh);
 mutex_unlock(&jpeg->lock);
free:
 kfree(ctx);
 return ret;
}

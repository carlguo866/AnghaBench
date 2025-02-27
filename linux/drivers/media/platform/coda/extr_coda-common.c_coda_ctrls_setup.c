
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ error; } ;
struct coda_ctx {scalar_t__ inst_type; TYPE_3__ ctrls; TYPE_2__* dev; TYPE_1__* cvd; } ;
struct TYPE_7__ {int v4l2_dev; } ;
struct TYPE_6__ {scalar_t__* dst_formats; scalar_t__* src_formats; } ;


 scalar_t__ CODA_INST_ENCODER ;
 int EINVAL ;
 int V4L2_CID_HFLIP ;
 int V4L2_CID_MIN_BUFFERS_FOR_CAPTURE ;
 int V4L2_CID_MIN_BUFFERS_FOR_OUTPUT ;
 int V4L2_CID_VFLIP ;
 scalar_t__ V4L2_PIX_FMT_H264 ;
 scalar_t__ V4L2_PIX_FMT_JPEG ;
 int coda_ctrl_ops ;
 int coda_decode_ctrls (struct coda_ctx*) ;
 int coda_encode_ctrls (struct coda_ctx*) ;
 int coda_jpeg_encode_ctrls (struct coda_ctx*) ;
 int v4l2_ctrl_handler_init (TYPE_3__*,int) ;
 int v4l2_ctrl_handler_setup (TYPE_3__*) ;
 int v4l2_ctrl_new_std (TYPE_3__*,int *,int ,int,int,int,int) ;
 int v4l2_err (int *,char*,scalar_t__) ;

__attribute__((used)) static int coda_ctrls_setup(struct coda_ctx *ctx)
{
 v4l2_ctrl_handler_init(&ctx->ctrls, 2);

 v4l2_ctrl_new_std(&ctx->ctrls, &coda_ctrl_ops,
  V4L2_CID_HFLIP, 0, 1, 1, 0);
 v4l2_ctrl_new_std(&ctx->ctrls, &coda_ctrl_ops,
  V4L2_CID_VFLIP, 0, 1, 1, 0);
 if (ctx->inst_type == CODA_INST_ENCODER) {
  v4l2_ctrl_new_std(&ctx->ctrls, &coda_ctrl_ops,
      V4L2_CID_MIN_BUFFERS_FOR_OUTPUT,
      1, 1, 1, 1);
  if (ctx->cvd->dst_formats[0] == V4L2_PIX_FMT_JPEG)
   coda_jpeg_encode_ctrls(ctx);
  else
   coda_encode_ctrls(ctx);
 } else {
  v4l2_ctrl_new_std(&ctx->ctrls, &coda_ctrl_ops,
      V4L2_CID_MIN_BUFFERS_FOR_CAPTURE,
      1, 1, 1, 1);
  if (ctx->cvd->src_formats[0] == V4L2_PIX_FMT_H264)
   coda_decode_ctrls(ctx);
 }

 if (ctx->ctrls.error) {
  v4l2_err(&ctx->dev->v4l2_dev,
   "control initialization error (%d)",
   ctx->ctrls.error);
  return -EINVAL;
 }

 return v4l2_ctrl_handler_setup(&ctx->ctrls);
}

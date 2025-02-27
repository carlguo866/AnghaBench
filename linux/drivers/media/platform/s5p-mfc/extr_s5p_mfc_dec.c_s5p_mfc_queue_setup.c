
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {int type; int drv_priv; } ;
struct s5p_mfc_dev {struct device** mem_dev; } ;
struct s5p_mfc_ctx {scalar_t__ state; unsigned int pb_count; unsigned int luma_size; unsigned int chroma_size; unsigned int dec_src_buf_size; struct s5p_mfc_dev* dev; } ;
struct device {int dummy; } ;


 size_t BANK_L_CTX ;
 size_t BANK_R_CTX ;
 int EINVAL ;
 scalar_t__ IS_MFCV6_PLUS (struct s5p_mfc_dev*) ;
 scalar_t__ MFCINST_HEAD_PARSED ;
 scalar_t__ MFCINST_INIT ;
 unsigned int MFC_MAX_BUFFERS ;
 unsigned int MFC_MAX_EXTRA_DPB ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ;
 int V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE ;
 struct s5p_mfc_ctx* fh_to_ctx (int ) ;
 int mfc_debug (int,char*,unsigned int,unsigned int) ;
 int mfc_err (char*,...) ;

__attribute__((used)) static int s5p_mfc_queue_setup(struct vb2_queue *vq,
   unsigned int *buf_count,
   unsigned int *plane_count, unsigned int psize[],
   struct device *alloc_devs[])
{
 struct s5p_mfc_ctx *ctx = fh_to_ctx(vq->drv_priv);
 struct s5p_mfc_dev *dev = ctx->dev;



 if (ctx->state == MFCINST_INIT &&
     vq->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE) {

  *plane_count = 1;
  if (*buf_count < 1)
   *buf_count = 1;
  if (*buf_count > MFC_MAX_BUFFERS)
   *buf_count = MFC_MAX_BUFFERS;


 } else if (ctx->state == MFCINST_HEAD_PARSED &&
     vq->type == V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE) {

  *plane_count = 2;

  if (*buf_count < ctx->pb_count)
   *buf_count = ctx->pb_count;
  if (*buf_count > ctx->pb_count + MFC_MAX_EXTRA_DPB)
   *buf_count = ctx->pb_count + MFC_MAX_EXTRA_DPB;
  if (*buf_count > MFC_MAX_BUFFERS)
   *buf_count = MFC_MAX_BUFFERS;
 } else {
  mfc_err("State seems invalid. State = %d, vq->type = %d\n",
       ctx->state, vq->type);
  return -EINVAL;
 }
 mfc_debug(2, "Buffer count=%d, plane count=%d\n",
      *buf_count, *plane_count);
 if (ctx->state == MFCINST_HEAD_PARSED &&
     vq->type == V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE) {
  psize[0] = ctx->luma_size;
  psize[1] = ctx->chroma_size;

  if (IS_MFCV6_PLUS(dev))
   alloc_devs[0] = ctx->dev->mem_dev[BANK_L_CTX];
  else
   alloc_devs[0] = ctx->dev->mem_dev[BANK_R_CTX];
  alloc_devs[1] = ctx->dev->mem_dev[BANK_L_CTX];
 } else if (vq->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE &&
     ctx->state == MFCINST_INIT) {
  psize[0] = ctx->dec_src_buf_size;
  alloc_devs[0] = ctx->dev->mem_dev[BANK_L_CTX];
 } else {
  mfc_err("This video node is dedicated to decoding. Decoding not initialized\n");
  return -EINVAL;
 }
 return 0;
}

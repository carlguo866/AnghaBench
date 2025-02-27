
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct hva_h264_task {int dummy; } ;
struct hva_h264_ctx {int seq_info; int ref_frame; int rec_frame; int task; } ;
struct hva_dev {scalar_t__ esram_size; } ;
struct TYPE_2__ {scalar_t__ aligned_width; scalar_t__ aligned_height; } ;
struct hva_ctx {int sys_errors; void* priv; int name; TYPE_1__ frameinfo; } ;
struct device {int dummy; } ;


 int BRC_DATA_SIZE ;
 scalar_t__ CABAC_CONTEXT_BUFFER_MAX_SIZE (scalar_t__) ;
 scalar_t__ CTX_MB_BUFFER_MAX_SIZE (int ) ;
 int DATA_SIZE (scalar_t__,scalar_t__) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ LOCAL_RECONSTRUCTED_BUFFER_MAX_SIZE (scalar_t__) ;
 scalar_t__ SEARCH_WINDOW_BUFFER_MAX_SIZE (scalar_t__) ;
 int SLICE_HEADER_SIZE ;
 struct device* ctx_to_dev (struct hva_ctx*) ;
 struct hva_dev* ctx_to_hdev (struct hva_ctx*) ;
 int dev_err (struct device*,char*,int ,...) ;
 int devm_kfree (struct device*,struct hva_h264_ctx*) ;
 struct hva_h264_ctx* devm_kzalloc (struct device*,int,int ) ;
 int hva_mem_alloc (struct hva_ctx*,int,char*,int *) ;
 int hva_mem_free (struct hva_ctx*,int ) ;
 int max (scalar_t__,scalar_t__) ;

__attribute__((used)) static int hva_h264_open(struct hva_ctx *pctx)
{
 struct device *dev = ctx_to_dev(pctx);
 struct hva_h264_ctx *ctx;
 struct hva_dev *hva = ctx_to_hdev(pctx);
 u32 frame_width = pctx->frameinfo.aligned_width;
 u32 frame_height = pctx->frameinfo.aligned_height;
 u32 size;
 int ret;


 size = SEARCH_WINDOW_BUFFER_MAX_SIZE(frame_width) +
        LOCAL_RECONSTRUCTED_BUFFER_MAX_SIZE(frame_width) +
        CTX_MB_BUFFER_MAX_SIZE(max(frame_width, frame_height)) +
        CABAC_CONTEXT_BUFFER_MAX_SIZE(frame_width);

 if (hva->esram_size < size) {
  dev_err(dev, "%s   not enough esram (max:%d request:%d)\n",
   pctx->name, hva->esram_size, size);
  ret = -EINVAL;
  goto err;
 }


 ctx = devm_kzalloc(dev, sizeof(*ctx), GFP_KERNEL);
 if (!ctx) {
  ret = -ENOMEM;
  goto err;
 }


 ret = hva_mem_alloc(pctx,
       2 * DATA_SIZE(frame_width, frame_height) +
       SLICE_HEADER_SIZE +
       BRC_DATA_SIZE,
       "hva sequence info",
       &ctx->seq_info);
 if (ret) {
  dev_err(dev,
   "%s   failed to allocate sequence info buffer\n",
   pctx->name);
  goto err_ctx;
 }


 ret = hva_mem_alloc(pctx,
       frame_width * frame_height * 3 / 2,
       "hva reference frame",
       &ctx->ref_frame);
 if (ret) {
  dev_err(dev, "%s   failed to allocate reference frame buffer\n",
   pctx->name);
  goto err_seq_info;
 }


 ret = hva_mem_alloc(pctx,
       frame_width * frame_height * 3 / 2,
       "hva reconstructed frame",
       &ctx->rec_frame);
 if (ret) {
  dev_err(dev,
   "%s   failed to allocate reconstructed frame buffer\n",
   pctx->name);
  goto err_ref_frame;
 }


 ret = hva_mem_alloc(pctx,
       sizeof(struct hva_h264_task),
       "hva task descriptor",
       &ctx->task);
 if (ret) {
  dev_err(dev,
   "%s   failed to allocate task descriptor\n",
   pctx->name);
  goto err_rec_frame;
 }

 pctx->priv = (void *)ctx;

 return 0;

err_rec_frame:
 hva_mem_free(pctx, ctx->rec_frame);
err_ref_frame:
 hva_mem_free(pctx, ctx->ref_frame);
err_seq_info:
 hva_mem_free(pctx, ctx->seq_info);
err_ctx:
 devm_kfree(dev, ctx);
err:
 pctx->sys_errors++;
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct scatterlist {int dummy; } ;
struct mlli_params {int * curr_pool; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ iv_dma_addr; } ;
struct cipher_req_ctx {scalar_t__ dma_buf_type; int out_mlli_nents; scalar_t__ out_nents; int in_mlli_nents; scalar_t__ in_nents; TYPE_1__ gen_ctx; struct mlli_params mlli_params; } ;
struct cc_drvdata {struct buff_mgr_handle* buff_mgr_handle; } ;
struct buffer_array {scalar_t__ num_of_buffers; } ;
struct buff_mgr_handle {int * mlli_buffs_pool; } ;
typedef int gfp_t ;


 scalar_t__ CC_DMA_BUF_DLLI ;
 scalar_t__ CC_DMA_BUF_MLLI ;
 int DMA_BIDIRECTIONAL ;
 int ENOMEM ;
 int LLI_MAX_NUM_OF_DATA_ENTRIES ;
 int cc_add_sg_entry (struct device*,struct buffer_array*,scalar_t__,struct scatterlist*,unsigned int,int ,int,int *) ;
 int cc_dma_buf_type (scalar_t__) ;
 int cc_generate_mlli (struct device*,struct buffer_array*,struct mlli_params*,int ) ;
 int cc_map_sg (struct device*,struct scatterlist*,unsigned int,int ,scalar_t__*,int ,int*,int*) ;
 int cc_unmap_cipher_request (struct device*,struct cipher_req_ctx*,unsigned int,struct scatterlist*,struct scatterlist*) ;
 int dev_dbg (struct device*,char*,unsigned int,...) ;
 int dev_err (struct device*,char*,unsigned int,void*) ;
 scalar_t__ dma_map_single (struct device*,void*,unsigned int,int ) ;
 scalar_t__ dma_mapping_error (struct device*,scalar_t__) ;
 struct device* drvdata_to_dev (struct cc_drvdata*) ;
 int dump_byte_array (char*,int *,unsigned int) ;

int cc_map_cipher_request(struct cc_drvdata *drvdata, void *ctx,
     unsigned int ivsize, unsigned int nbytes,
     void *info, struct scatterlist *src,
     struct scatterlist *dst, gfp_t flags)
{
 struct cipher_req_ctx *req_ctx = (struct cipher_req_ctx *)ctx;
 struct mlli_params *mlli_params = &req_ctx->mlli_params;
 struct buff_mgr_handle *buff_mgr = drvdata->buff_mgr_handle;
 struct device *dev = drvdata_to_dev(drvdata);
 struct buffer_array sg_data;
 u32 dummy = 0;
 int rc = 0;
 u32 mapped_nents = 0;

 req_ctx->dma_buf_type = CC_DMA_BUF_DLLI;
 mlli_params->curr_pool = ((void*)0);
 sg_data.num_of_buffers = 0;


 if (ivsize) {
  dump_byte_array("iv", (u8 *)info, ivsize);
  req_ctx->gen_ctx.iv_dma_addr =
   dma_map_single(dev, (void *)info,
           ivsize, DMA_BIDIRECTIONAL);
  if (dma_mapping_error(dev, req_ctx->gen_ctx.iv_dma_addr)) {
   dev_err(dev, "Mapping iv %u B at va=%pK for DMA failed\n",
    ivsize, info);
   return -ENOMEM;
  }
  dev_dbg(dev, "Mapped iv %u B at va=%pK to dma=%pad\n",
   ivsize, info, &req_ctx->gen_ctx.iv_dma_addr);
 } else {
  req_ctx->gen_ctx.iv_dma_addr = 0;
 }


 rc = cc_map_sg(dev, src, nbytes, DMA_BIDIRECTIONAL, &req_ctx->in_nents,
         LLI_MAX_NUM_OF_DATA_ENTRIES, &dummy, &mapped_nents);
 if (rc)
  goto cipher_exit;
 if (mapped_nents > 1)
  req_ctx->dma_buf_type = CC_DMA_BUF_MLLI;

 if (src == dst) {

  if (req_ctx->dma_buf_type == CC_DMA_BUF_MLLI) {
   req_ctx->out_nents = 0;
   cc_add_sg_entry(dev, &sg_data, req_ctx->in_nents, src,
     nbytes, 0, 1,
     &req_ctx->in_mlli_nents);
  }
 } else {

  rc = cc_map_sg(dev, dst, nbytes, DMA_BIDIRECTIONAL,
          &req_ctx->out_nents, LLI_MAX_NUM_OF_DATA_ENTRIES,
          &dummy, &mapped_nents);
  if (rc)
   goto cipher_exit;
  if (mapped_nents > 1)
   req_ctx->dma_buf_type = CC_DMA_BUF_MLLI;

  if (req_ctx->dma_buf_type == CC_DMA_BUF_MLLI) {
   cc_add_sg_entry(dev, &sg_data, req_ctx->in_nents, src,
     nbytes, 0, 1,
     &req_ctx->in_mlli_nents);
   cc_add_sg_entry(dev, &sg_data, req_ctx->out_nents, dst,
     nbytes, 0, 1,
     &req_ctx->out_mlli_nents);
  }
 }

 if (req_ctx->dma_buf_type == CC_DMA_BUF_MLLI) {
  mlli_params->curr_pool = buff_mgr->mlli_buffs_pool;
  rc = cc_generate_mlli(dev, &sg_data, mlli_params, flags);
  if (rc)
   goto cipher_exit;
 }

 dev_dbg(dev, "areq_ctx->dma_buf_type = %s\n",
  cc_dma_buf_type(req_ctx->dma_buf_type));

 return 0;

cipher_exit:
 cc_unmap_cipher_request(dev, req_ctx, ivsize, src, dst);
 return rc;
}

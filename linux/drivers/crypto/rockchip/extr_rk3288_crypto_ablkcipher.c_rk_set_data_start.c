
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct rk_crypto_info {int total; int (* load_data ) (struct rk_crypto_info*,TYPE_1__*,int ) ;int sg_dst; TYPE_1__* sg_src; int src_nents; int first; int async_req; } ;
struct rk_cipher_ctx {int mode; int iv; } ;
struct crypto_ablkcipher {int dummy; } ;
struct ablkcipher_request {int info; } ;
struct TYPE_3__ {int offset; int length; } ;


 int RK_CRYPTO_DEC ;
 struct ablkcipher_request* ablkcipher_request_cast (int ) ;
 struct rk_cipher_ctx* crypto_ablkcipher_ctx (struct crypto_ablkcipher*) ;
 int crypto_ablkcipher_ivsize (struct crypto_ablkcipher*) ;
 struct crypto_ablkcipher* crypto_ablkcipher_reqtfm (struct ablkcipher_request*) ;
 int crypto_dma_start (struct rk_crypto_info*) ;
 int memcpy (int ,int *,int ) ;
 int page_address (int ) ;
 int sg_page (TYPE_1__*) ;
 int sg_pcopy_to_buffer (int ,int ,int ,int ,int ) ;
 int stub1 (struct rk_crypto_info*,TYPE_1__*,int ) ;

__attribute__((used)) static int rk_set_data_start(struct rk_crypto_info *dev)
{
 int err;
 struct ablkcipher_request *req =
  ablkcipher_request_cast(dev->async_req);
 struct crypto_ablkcipher *tfm = crypto_ablkcipher_reqtfm(req);
 struct rk_cipher_ctx *ctx = crypto_ablkcipher_ctx(tfm);
 u32 ivsize = crypto_ablkcipher_ivsize(tfm);
 u8 *src_last_blk = page_address(sg_page(dev->sg_src)) +
  dev->sg_src->offset + dev->sg_src->length - ivsize;




 if (ctx->mode & RK_CRYPTO_DEC) {
  memcpy(ctx->iv, src_last_blk, ivsize);
  sg_pcopy_to_buffer(dev->first, dev->src_nents, req->info,
       ivsize, dev->total - ivsize);
 }

 err = dev->load_data(dev, dev->sg_src, dev->sg_dst);
 if (!err)
  crypto_dma_start(dev);
 return err;
}

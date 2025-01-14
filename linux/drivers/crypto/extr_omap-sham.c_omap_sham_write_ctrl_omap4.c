
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct omap_sham_reqctx {int flags; scalar_t__ digcnt; } ;
struct omap_sham_hmac_ctx {scalar_t__ ipad; } ;
struct omap_sham_dev {int dev; int req; } ;
struct omap_sham_ctx {struct omap_sham_hmac_ctx* base; } ;
struct crypto_ahash {int dummy; } ;


 int BIT (int ) ;
 int FLAGS_HMAC ;
 int FLAGS_MODE_MASK ;
 int FLAGS_MODE_SHIFT ;
 int SHA_REG_IDIGEST (struct omap_sham_dev*,int ) ;
 int SHA_REG_IRQENA ;
 int SHA_REG_IRQENA_OUTPUT_RDY ;
 int SHA_REG_MASK (struct omap_sham_dev*) ;
 int SHA_REG_MASK_DMA_EN ;
 int SHA_REG_MASK_IT_EN ;
 int SHA_REG_MODE (struct omap_sham_dev*) ;
 int SHA_REG_MODE_ALGO_CONSTANT ;
 int SHA_REG_MODE_ALGO_MASK ;
 int SHA_REG_MODE_CLOSE_HASH ;
 int SHA_REG_MODE_HMAC_KEY_PROC ;
 int SHA_REG_MODE_HMAC_OUTER_HASH ;
 int SHA_REG_ODIGEST (struct omap_sham_dev*,int ) ;
 struct omap_sham_reqctx* ahash_request_ctx (int ) ;
 struct omap_sham_ctx* crypto_ahash_ctx (struct crypto_ahash*) ;
 struct crypto_ahash* crypto_ahash_reqtfm (int ) ;
 int dev_dbg (int ,char*,int,int) ;
 int get_block_size (struct omap_sham_reqctx*) ;
 int omap_sham_write (struct omap_sham_dev*,int ,int ) ;
 int omap_sham_write_mask (struct omap_sham_dev*,int ,int,int) ;
 int omap_sham_write_n (struct omap_sham_dev*,int ,int*,int) ;

__attribute__((used)) static void omap_sham_write_ctrl_omap4(struct omap_sham_dev *dd, size_t length,
     int final, int dma)
{
 struct omap_sham_reqctx *ctx = ahash_request_ctx(dd->req);
 u32 val, mask;






 val = (ctx->flags & FLAGS_MODE_MASK) >> (FLAGS_MODE_SHIFT);
 if (!ctx->digcnt) {
  struct crypto_ahash *tfm = crypto_ahash_reqtfm(dd->req);
  struct omap_sham_ctx *tctx = crypto_ahash_ctx(tfm);
  struct omap_sham_hmac_ctx *bctx = tctx->base;
  int bs, nr_dr;

  val |= SHA_REG_MODE_ALGO_CONSTANT;

  if (ctx->flags & BIT(FLAGS_HMAC)) {
   bs = get_block_size(ctx);
   nr_dr = bs / (2 * sizeof(u32));
   val |= SHA_REG_MODE_HMAC_KEY_PROC;
   omap_sham_write_n(dd, SHA_REG_ODIGEST(dd, 0),
       (u32 *)bctx->ipad, nr_dr);
   omap_sham_write_n(dd, SHA_REG_IDIGEST(dd, 0),
       (u32 *)bctx->ipad + nr_dr, nr_dr);
   ctx->digcnt += bs;
  }
 }

 if (final) {
  val |= SHA_REG_MODE_CLOSE_HASH;

  if (ctx->flags & BIT(FLAGS_HMAC))
   val |= SHA_REG_MODE_HMAC_OUTER_HASH;
 }

 mask = SHA_REG_MODE_ALGO_CONSTANT | SHA_REG_MODE_CLOSE_HASH |
        SHA_REG_MODE_ALGO_MASK | SHA_REG_MODE_HMAC_OUTER_HASH |
        SHA_REG_MODE_HMAC_KEY_PROC;

 dev_dbg(dd->dev, "ctrl: %08x, flags: %08lx\n", val, ctx->flags);
 omap_sham_write_mask(dd, SHA_REG_MODE(dd), val, mask);
 omap_sham_write(dd, SHA_REG_IRQENA, SHA_REG_IRQENA_OUTPUT_RDY);
 omap_sham_write_mask(dd, SHA_REG_MASK(dd),
        SHA_REG_MASK_IT_EN |
         (dma ? SHA_REG_MASK_DMA_EN : 0),
        SHA_REG_MASK_IT_EN | SHA_REG_MASK_DMA_EN);
}

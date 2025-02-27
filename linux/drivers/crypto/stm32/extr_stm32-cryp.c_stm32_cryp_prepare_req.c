
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stm32_cryp_reqctx {int mode; } ;
struct stm32_cryp_ctx {struct stm32_cryp* cryp; } ;
struct stm32_cryp {int flags; int in_sg_len; int out_sg_len; struct aead_request* areq; scalar_t__ total_out; int out_walk; int out_sg; int in_sg; int in_walk; int dev; scalar_t__ total_in; int out_sg_save; scalar_t__ total_out_save; scalar_t__ total_in_save; scalar_t__ authsize; struct ablkcipher_request* req; struct stm32_cryp_ctx* ctx; int hw_blocksize; } ;
struct aead_request {scalar_t__ assoclen; int dst; int src; scalar_t__ cryptlen; } ;
struct ablkcipher_request {int dst; int src; scalar_t__ nbytes; } ;


 int AES_BLOCK_SIZE ;
 int DES_BLOCK_SIZE ;
 int EINVAL ;
 int ENODEV ;
 int FLG_MODE_MASK ;
 struct stm32_cryp_reqctx* ablkcipher_request_ctx (struct ablkcipher_request*) ;
 struct stm32_cryp_reqctx* aead_request_ctx (struct aead_request*) ;
 struct stm32_cryp_ctx* crypto_ablkcipher_ctx (int ) ;
 int crypto_ablkcipher_reqtfm (struct ablkcipher_request*) ;
 scalar_t__ crypto_aead_authsize (int ) ;
 struct stm32_cryp_ctx* crypto_aead_ctx (int ) ;
 int crypto_aead_reqtfm (struct aead_request*) ;
 int dev_err (int ,char*) ;
 scalar_t__ is_aes (struct stm32_cryp*) ;
 scalar_t__ is_ccm (struct stm32_cryp*) ;
 scalar_t__ is_encrypt (struct stm32_cryp*) ;
 scalar_t__ is_gcm (struct stm32_cryp*) ;
 int scatterwalk_advance (int *,scalar_t__) ;
 int scatterwalk_start (int *,int ) ;
 void* sg_nents_for_len (int ,scalar_t__) ;
 int stm32_cryp_copy_sgs (struct stm32_cryp*) ;
 int stm32_cryp_hw_init (struct stm32_cryp*) ;

__attribute__((used)) static int stm32_cryp_prepare_req(struct ablkcipher_request *req,
      struct aead_request *areq)
{
 struct stm32_cryp_ctx *ctx;
 struct stm32_cryp *cryp;
 struct stm32_cryp_reqctx *rctx;
 int ret;

 if (!req && !areq)
  return -EINVAL;

 ctx = req ? crypto_ablkcipher_ctx(crypto_ablkcipher_reqtfm(req)) :
      crypto_aead_ctx(crypto_aead_reqtfm(areq));

 cryp = ctx->cryp;

 if (!cryp)
  return -ENODEV;

 rctx = req ? ablkcipher_request_ctx(req) : aead_request_ctx(areq);
 rctx->mode &= FLG_MODE_MASK;

 ctx->cryp = cryp;

 cryp->flags = (cryp->flags & ~FLG_MODE_MASK) | rctx->mode;
 cryp->hw_blocksize = is_aes(cryp) ? AES_BLOCK_SIZE : DES_BLOCK_SIZE;
 cryp->ctx = ctx;

 if (req) {
  cryp->req = req;
  cryp->areq = ((void*)0);
  cryp->total_in = req->nbytes;
  cryp->total_out = cryp->total_in;
 } else {
  cryp->areq = areq;
  cryp->req = ((void*)0);
  cryp->authsize = crypto_aead_authsize(crypto_aead_reqtfm(areq));
  cryp->total_in = areq->assoclen + areq->cryptlen;
  if (is_encrypt(cryp))

   cryp->total_out = cryp->total_in + cryp->authsize;
  else

   cryp->total_out = cryp->total_in - cryp->authsize;
 }

 cryp->total_in_save = cryp->total_in;
 cryp->total_out_save = cryp->total_out;

 cryp->in_sg = req ? req->src : areq->src;
 cryp->out_sg = req ? req->dst : areq->dst;
 cryp->out_sg_save = cryp->out_sg;

 cryp->in_sg_len = sg_nents_for_len(cryp->in_sg, cryp->total_in);
 if (cryp->in_sg_len < 0) {
  dev_err(cryp->dev, "Cannot get in_sg_len\n");
  ret = cryp->in_sg_len;
  return ret;
 }

 cryp->out_sg_len = sg_nents_for_len(cryp->out_sg, cryp->total_out);
 if (cryp->out_sg_len < 0) {
  dev_err(cryp->dev, "Cannot get out_sg_len\n");
  ret = cryp->out_sg_len;
  return ret;
 }

 ret = stm32_cryp_copy_sgs(cryp);
 if (ret)
  return ret;

 scatterwalk_start(&cryp->in_walk, cryp->in_sg);
 scatterwalk_start(&cryp->out_walk, cryp->out_sg);

 if (is_gcm(cryp) || is_ccm(cryp)) {

  scatterwalk_advance(&cryp->out_walk, cryp->areq->assoclen);
  cryp->total_out -= cryp->areq->assoclen;
 }

 ret = stm32_cryp_hw_init(cryp);
 return ret;
}

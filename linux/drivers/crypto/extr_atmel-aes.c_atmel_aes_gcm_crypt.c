
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_aes_reqctx {unsigned long mode; } ;
struct atmel_aes_dev {int dummy; } ;
struct atmel_aes_base_ctx {int is_aead; int block_size; } ;
struct aead_request {int base; } ;


 int AES_BLOCK_SIZE ;
 unsigned long AES_FLAGS_GCM ;
 int ENODEV ;
 struct atmel_aes_reqctx* aead_request_ctx (struct aead_request*) ;
 struct atmel_aes_dev* atmel_aes_find_dev (struct atmel_aes_base_ctx*) ;
 int atmel_aes_handle_queue (struct atmel_aes_dev*,int *) ;
 struct atmel_aes_base_ctx* crypto_aead_ctx (int ) ;
 int crypto_aead_reqtfm (struct aead_request*) ;

__attribute__((used)) static int atmel_aes_gcm_crypt(struct aead_request *req,
          unsigned long mode)
{
 struct atmel_aes_base_ctx *ctx;
 struct atmel_aes_reqctx *rctx;
 struct atmel_aes_dev *dd;

 ctx = crypto_aead_ctx(crypto_aead_reqtfm(req));
 ctx->block_size = AES_BLOCK_SIZE;
 ctx->is_aead = 1;

 dd = atmel_aes_find_dev(ctx);
 if (!dd)
  return -ENODEV;

 rctx = aead_request_ctx(req);
 rctx->mode = AES_FLAGS_GCM | mode;

 return atmel_aes_handle_queue(dd, &req->base);
}

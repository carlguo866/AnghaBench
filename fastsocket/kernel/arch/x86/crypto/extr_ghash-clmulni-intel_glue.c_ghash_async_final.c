
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shash_desc {int dummy; } ;
struct ghash_async_ctx {struct cryptd_ahash* cryptd_tfm; } ;
struct crypto_ahash {int dummy; } ;
struct cryptd_ahash {int base; } ;
struct ahash_request {int result; } ;


 struct ahash_request* ahash_request_ctx (struct ahash_request*) ;
 int ahash_request_set_tfm (struct ahash_request*,int *) ;
 struct shash_desc* cryptd_shash_desc (struct ahash_request*) ;
 struct ghash_async_ctx* crypto_ahash_ctx (struct crypto_ahash*) ;
 int crypto_ahash_final (struct ahash_request*) ;
 struct crypto_ahash* crypto_ahash_reqtfm (struct ahash_request*) ;
 int crypto_shash_final (struct shash_desc*,int ) ;
 int irq_fpu_usable () ;
 int memcpy (struct ahash_request*,struct ahash_request*,int) ;

__attribute__((used)) static int ghash_async_final(struct ahash_request *req)
{
 struct ahash_request *cryptd_req = ahash_request_ctx(req);

 if (!irq_fpu_usable()) {
  struct crypto_ahash *tfm = crypto_ahash_reqtfm(req);
  struct ghash_async_ctx *ctx = crypto_ahash_ctx(tfm);
  struct cryptd_ahash *cryptd_tfm = ctx->cryptd_tfm;

  memcpy(cryptd_req, req, sizeof(*req));
  ahash_request_set_tfm(cryptd_req, &cryptd_tfm->base);
  return crypto_ahash_final(cryptd_req);
 } else {
  struct shash_desc *desc = cryptd_shash_desc(cryptd_req);
  return crypto_shash_final(desc, req->result);
 }
}

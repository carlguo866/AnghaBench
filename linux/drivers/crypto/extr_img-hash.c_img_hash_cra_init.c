
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct img_hash_request_ctx {int dummy; } ;
struct img_hash_ctx {int fallback; } ;
struct crypto_tfm {int dummy; } ;


 int CRYPTO_ALG_NEED_FALLBACK ;
 int ENOMEM ;
 scalar_t__ IMG_HASH_DMA_THRESHOLD ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int __crypto_ahash_cast (struct crypto_tfm*) ;
 scalar_t__ crypto_ahash_reqsize (int ) ;
 int crypto_ahash_set_reqsize (int ,scalar_t__) ;
 int crypto_alloc_ahash (char const*,int ,int ) ;
 struct img_hash_ctx* crypto_tfm_ctx (struct crypto_tfm*) ;
 int pr_err (char*) ;

__attribute__((used)) static int img_hash_cra_init(struct crypto_tfm *tfm, const char *alg_name)
{
 struct img_hash_ctx *ctx = crypto_tfm_ctx(tfm);
 int err = -ENOMEM;

 ctx->fallback = crypto_alloc_ahash(alg_name, 0,
        CRYPTO_ALG_NEED_FALLBACK);
 if (IS_ERR(ctx->fallback)) {
  pr_err("img_hash: Could not load fallback driver.\n");
  err = PTR_ERR(ctx->fallback);
  goto err;
 }
 crypto_ahash_set_reqsize(__crypto_ahash_cast(tfm),
     sizeof(struct img_hash_request_ctx) +
     crypto_ahash_reqsize(ctx->fallback) +
     IMG_HASH_DMA_THRESHOLD);

 return 0;

err:
 return err;
}

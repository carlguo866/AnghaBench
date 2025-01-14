
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct omap_aes_ctx {unsigned int keylen; int fallback; int key; } ;
struct TYPE_2__ {int crt_flags; } ;
struct crypto_ablkcipher {TYPE_1__ base; } ;


 unsigned int AES_KEYSIZE_128 ;
 unsigned int AES_KEYSIZE_192 ;
 unsigned int AES_KEYSIZE_256 ;
 int CRYPTO_TFM_REQ_MASK ;
 int EINVAL ;
 struct omap_aes_ctx* crypto_ablkcipher_ctx (struct crypto_ablkcipher*) ;
 int crypto_sync_skcipher_clear_flags (int ,int) ;
 int crypto_sync_skcipher_set_flags (int ,int) ;
 int crypto_sync_skcipher_setkey (int ,int const*,unsigned int) ;
 int memcpy (int ,int const*,unsigned int) ;
 int pr_debug (char*,unsigned int) ;

__attribute__((used)) static int omap_aes_setkey(struct crypto_ablkcipher *tfm, const u8 *key,
      unsigned int keylen)
{
 struct omap_aes_ctx *ctx = crypto_ablkcipher_ctx(tfm);
 int ret;

 if (keylen != AES_KEYSIZE_128 && keylen != AES_KEYSIZE_192 &&
     keylen != AES_KEYSIZE_256)
  return -EINVAL;

 pr_debug("enter, keylen: %d\n", keylen);

 memcpy(ctx->key, key, keylen);
 ctx->keylen = keylen;

 crypto_sync_skcipher_clear_flags(ctx->fallback, CRYPTO_TFM_REQ_MASK);
 crypto_sync_skcipher_set_flags(ctx->fallback, tfm->base.crt_flags &
       CRYPTO_TFM_REQ_MASK);

 ret = crypto_sync_skcipher_setkey(ctx->fallback, key, keylen);
 if (!ret)
  return 0;

 return 0;
}

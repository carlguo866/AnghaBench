
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct talitos_ctx {size_t keylen; size_t enckeylen; size_t authkeylen; int * key; int dma_key; struct device* dev; } ;
struct device {int dummy; } ;
struct crypto_authenc_keys {size_t authkeylen; scalar_t__ enckeylen; int enckey; int authkey; } ;
struct crypto_aead {int dummy; } ;
typedef int keys ;


 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int DMA_TO_DEVICE ;
 int EINVAL ;
 scalar_t__ TALITOS_MAX_KEY_SIZE ;
 struct talitos_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 int crypto_aead_set_flags (struct crypto_aead*,int ) ;
 scalar_t__ crypto_authenc_extractkeys (struct crypto_authenc_keys*,int const*,unsigned int) ;
 int dma_map_single (struct device*,int *,size_t,int ) ;
 int dma_unmap_single (struct device*,int ,size_t,int ) ;
 int memcpy (int *,int ,size_t) ;
 int memzero_explicit (struct crypto_authenc_keys*,int) ;

__attribute__((used)) static int aead_setkey(struct crypto_aead *authenc,
         const u8 *key, unsigned int keylen)
{
 struct talitos_ctx *ctx = crypto_aead_ctx(authenc);
 struct device *dev = ctx->dev;
 struct crypto_authenc_keys keys;

 if (crypto_authenc_extractkeys(&keys, key, keylen) != 0)
  goto badkey;

 if (keys.authkeylen + keys.enckeylen > TALITOS_MAX_KEY_SIZE)
  goto badkey;

 if (ctx->keylen)
  dma_unmap_single(dev, ctx->dma_key, ctx->keylen, DMA_TO_DEVICE);

 memcpy(ctx->key, keys.authkey, keys.authkeylen);
 memcpy(&ctx->key[keys.authkeylen], keys.enckey, keys.enckeylen);

 ctx->keylen = keys.authkeylen + keys.enckeylen;
 ctx->enckeylen = keys.enckeylen;
 ctx->authkeylen = keys.authkeylen;
 ctx->dma_key = dma_map_single(dev, ctx->key, ctx->keylen,
          DMA_TO_DEVICE);

 memzero_explicit(&keys, sizeof(keys));
 return 0;

badkey:
 crypto_aead_set_flags(authenc, CRYPTO_TFM_RES_BAD_KEY_LEN);
 memzero_explicit(&keys, sizeof(keys));
 return -EINVAL;
}

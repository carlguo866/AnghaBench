
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_aead {int dummy; } ;
struct atmel_aes_base_ctx {unsigned int keylen; int key; } ;


 unsigned int AES_KEYSIZE_128 ;
 unsigned int AES_KEYSIZE_192 ;
 unsigned int AES_KEYSIZE_256 ;
 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int EINVAL ;
 struct atmel_aes_base_ctx* crypto_aead_ctx (struct crypto_aead*) ;
 int crypto_aead_set_flags (struct crypto_aead*,int ) ;
 int memcpy (int ,int const*,unsigned int) ;

__attribute__((used)) static int atmel_aes_gcm_setkey(struct crypto_aead *tfm, const u8 *key,
    unsigned int keylen)
{
 struct atmel_aes_base_ctx *ctx = crypto_aead_ctx(tfm);

 if (keylen != AES_KEYSIZE_256 &&
     keylen != AES_KEYSIZE_192 &&
     keylen != AES_KEYSIZE_128) {
  crypto_aead_set_flags(tfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
  return -EINVAL;
 }

 memcpy(ctx->key, key, keylen);
 ctx->keylen = keylen;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct priv {struct crypto_cipher* child; struct crypto_cipher* tweak; } ;
struct crypto_tfm {int crt_flags; } ;
struct crypto_cipher {int dummy; } ;


 int CRYPTO_TFM_REQ_MASK ;
 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int CRYPTO_TFM_RES_MASK ;
 int EINVAL ;
 int crypto_cipher_clear_flags (struct crypto_cipher*,int) ;
 int crypto_cipher_get_flags (struct crypto_cipher*) ;
 int crypto_cipher_set_flags (struct crypto_cipher*,int) ;
 int crypto_cipher_setkey (struct crypto_cipher*,int const*,unsigned int) ;
 struct priv* crypto_tfm_ctx (struct crypto_tfm*) ;
 int crypto_tfm_get_flags (struct crypto_tfm*) ;
 int crypto_tfm_set_flags (struct crypto_tfm*,int) ;

__attribute__((used)) static int setkey(struct crypto_tfm *parent, const u8 *key,
    unsigned int keylen)
{
 struct priv *ctx = crypto_tfm_ctx(parent);
 struct crypto_cipher *child = ctx->tweak;
 u32 *flags = &parent->crt_flags;
 int err;



 if (keylen % 2) {

  *flags |= CRYPTO_TFM_RES_BAD_KEY_LEN;
  return -EINVAL;
 }






 crypto_cipher_clear_flags(child, CRYPTO_TFM_REQ_MASK);
 crypto_cipher_set_flags(child, crypto_tfm_get_flags(parent) &
           CRYPTO_TFM_REQ_MASK);
 err = crypto_cipher_setkey(child, key + keylen/2, keylen/2);
 if (err)
  return err;

 crypto_tfm_set_flags(parent, crypto_cipher_get_flags(child) &
         CRYPTO_TFM_RES_MASK);

 child = ctx->child;


 crypto_cipher_clear_flags(child, CRYPTO_TFM_REQ_MASK);
 crypto_cipher_set_flags(child, crypto_tfm_get_flags(parent) &
           CRYPTO_TFM_REQ_MASK);
 err = crypto_cipher_setkey(child, key, keylen/2);
 if (err)
  return err;

 crypto_tfm_set_flags(parent, crypto_cipher_get_flags(child) &
         CRYPTO_TFM_RES_MASK);

 return 0;
}

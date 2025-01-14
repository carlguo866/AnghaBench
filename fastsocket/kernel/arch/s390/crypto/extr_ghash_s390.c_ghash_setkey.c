
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ghash_ctx {int icv; int key; } ;
struct crypto_shash {int dummy; } ;


 int CRYPTO_TFM_RES_BAD_KEY_LEN ;
 int EINVAL ;
 unsigned int GHASH_BLOCK_SIZE ;
 struct ghash_ctx* crypto_shash_ctx (struct crypto_shash*) ;
 int crypto_shash_set_flags (struct crypto_shash*,int ) ;
 int memcpy (int ,int const*,unsigned int) ;
 int memset (int ,int ,unsigned int) ;

__attribute__((used)) static int ghash_setkey(struct crypto_shash *tfm,
   const u8 *key, unsigned int keylen)
{
 struct ghash_ctx *ctx = crypto_shash_ctx(tfm);

 if (keylen != GHASH_BLOCK_SIZE) {
  crypto_shash_set_flags(tfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
  return -EINVAL;
 }

 memcpy(ctx->key, key, GHASH_BLOCK_SIZE);
 memset(ctx->icv, 0, GHASH_BLOCK_SIZE);

 return 0;
}

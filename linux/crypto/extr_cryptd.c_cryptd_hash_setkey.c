
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_shash {int dummy; } ;
struct crypto_ahash {int dummy; } ;
struct cryptd_hash_ctx {struct crypto_shash* child; } ;


 int CRYPTO_TFM_REQ_MASK ;
 int CRYPTO_TFM_RES_MASK ;
 struct cryptd_hash_ctx* crypto_ahash_ctx (struct crypto_ahash*) ;
 int crypto_ahash_get_flags (struct crypto_ahash*) ;
 int crypto_ahash_set_flags (struct crypto_ahash*,int) ;
 int crypto_shash_clear_flags (struct crypto_shash*,int) ;
 int crypto_shash_get_flags (struct crypto_shash*) ;
 int crypto_shash_set_flags (struct crypto_shash*,int) ;
 int crypto_shash_setkey (struct crypto_shash*,int const*,unsigned int) ;

__attribute__((used)) static int cryptd_hash_setkey(struct crypto_ahash *parent,
       const u8 *key, unsigned int keylen)
{
 struct cryptd_hash_ctx *ctx = crypto_ahash_ctx(parent);
 struct crypto_shash *child = ctx->child;
 int err;

 crypto_shash_clear_flags(child, CRYPTO_TFM_REQ_MASK);
 crypto_shash_set_flags(child, crypto_ahash_get_flags(parent) &
          CRYPTO_TFM_REQ_MASK);
 err = crypto_shash_setkey(child, key, keylen);
 crypto_ahash_set_flags(parent, crypto_shash_get_flags(child) &
           CRYPTO_TFM_RES_MASK);
 return err;
}

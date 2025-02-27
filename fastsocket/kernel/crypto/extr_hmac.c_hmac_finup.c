
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u8 ;
struct shash_desc {int flags; struct crypto_shash* tfm; } ;
struct crypto_shash {int dummy; } ;


 int CRYPTO_TFM_REQ_MAY_SLEEP ;
 char* crypto_shash_ctx_aligned (struct crypto_shash*) ;
 int crypto_shash_digestsize (struct crypto_shash*) ;
 int crypto_shash_finup (struct shash_desc*,int const*,int,int const*) ;
 scalar_t__ crypto_shash_import (struct shash_desc*,char*) ;
 int crypto_shash_statesize (struct crypto_shash*) ;
 struct shash_desc* shash_desc_ctx (struct shash_desc*) ;

__attribute__((used)) static int hmac_finup(struct shash_desc *pdesc, const u8 *data,
        unsigned int nbytes, u8 *out)
{

 struct crypto_shash *parent = pdesc->tfm;
 int ds = crypto_shash_digestsize(parent);
 int ss = crypto_shash_statesize(parent);
 char *opad = crypto_shash_ctx_aligned(parent) + ss;
 struct shash_desc *desc = shash_desc_ctx(pdesc);

 desc->flags = pdesc->flags & CRYPTO_TFM_REQ_MAY_SLEEP;

 return crypto_shash_finup(desc, data, nbytes, out) ?:
        crypto_shash_import(desc, opad) ?:
        crypto_shash_finup(desc, out, ds, out);
}

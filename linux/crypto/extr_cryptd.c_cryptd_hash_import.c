
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shash_desc {int tfm; } ;
struct crypto_ahash {int dummy; } ;
struct cryptd_hash_ctx {int child; } ;
struct ahash_request {int dummy; } ;


 struct shash_desc* cryptd_shash_desc (struct ahash_request*) ;
 struct cryptd_hash_ctx* crypto_ahash_ctx (struct crypto_ahash*) ;
 struct crypto_ahash* crypto_ahash_reqtfm (struct ahash_request*) ;
 int crypto_shash_import (struct shash_desc*,void const*) ;

__attribute__((used)) static int cryptd_hash_import(struct ahash_request *req, const void *in)
{
 struct crypto_ahash *tfm = crypto_ahash_reqtfm(req);
 struct cryptd_hash_ctx *ctx = crypto_ahash_ctx(tfm);
 struct shash_desc *desc = cryptd_shash_desc(req);

 desc->tfm = ctx->child;

 return crypto_shash_import(desc, in);
}

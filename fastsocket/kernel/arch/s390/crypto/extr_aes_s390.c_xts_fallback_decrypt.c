
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct s390_xts_ctx {struct crypto_blkcipher* fallback; } ;
struct crypto_blkcipher {int dummy; } ;
struct blkcipher_desc {struct crypto_blkcipher* tfm; } ;


 struct s390_xts_ctx* crypto_blkcipher_ctx (struct crypto_blkcipher*) ;
 unsigned int crypto_blkcipher_decrypt_iv (struct blkcipher_desc*,struct scatterlist*,struct scatterlist*,unsigned int) ;

__attribute__((used)) static int xts_fallback_decrypt(struct blkcipher_desc *desc,
  struct scatterlist *dst, struct scatterlist *src,
  unsigned int nbytes)
{
 struct s390_xts_ctx *xts_ctx = crypto_blkcipher_ctx(desc->tfm);
 struct crypto_blkcipher *tfm;
 unsigned int ret;

 tfm = desc->tfm;
 desc->tfm = xts_ctx->fallback;

 ret = crypto_blkcipher_decrypt_iv(desc, dst, src, nbytes);

 desc->tfm = tfm;
 return ret;
}

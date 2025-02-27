
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scatterlist {int dummy; } ;
struct TYPE_2__ {struct crypto_blkcipher* blk; } ;
struct s390_aes_ctx {TYPE_1__ fallback; } ;
struct crypto_blkcipher {int dummy; } ;
struct blkcipher_desc {struct crypto_blkcipher* tfm; } ;


 struct s390_aes_ctx* crypto_blkcipher_ctx (struct crypto_blkcipher*) ;
 unsigned int crypto_blkcipher_decrypt_iv (struct blkcipher_desc*,struct scatterlist*,struct scatterlist*,unsigned int) ;

__attribute__((used)) static int fallback_blk_dec(struct blkcipher_desc *desc,
  struct scatterlist *dst, struct scatterlist *src,
  unsigned int nbytes)
{
 unsigned int ret;
 struct crypto_blkcipher *tfm;
 struct s390_aes_ctx *sctx = crypto_blkcipher_ctx(desc->tfm);

 tfm = desc->tfm;
 desc->tfm = sctx->fallback.blk;

 ret = crypto_blkcipher_decrypt_iv(desc, dst, src, nbytes);

 desc->tfm = tfm;
 return ret;
}

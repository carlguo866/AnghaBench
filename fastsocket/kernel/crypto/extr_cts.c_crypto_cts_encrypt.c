
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct crypto_cts_ctx {int child; } ;
struct blkcipher_desc {int flags; int info; int tfm; } ;


 int crypto_blkcipher_blocksize (int ) ;
 struct crypto_cts_ctx* crypto_blkcipher_ctx (int ) ;
 int crypto_blkcipher_encrypt_iv (struct blkcipher_desc*,struct scatterlist*,struct scatterlist*,int) ;
 int cts_cbc_encrypt (struct crypto_cts_ctx*,struct blkcipher_desc*,struct scatterlist*,struct scatterlist*,int,unsigned int) ;

__attribute__((used)) static int crypto_cts_encrypt(struct blkcipher_desc *desc,
         struct scatterlist *dst, struct scatterlist *src,
         unsigned int nbytes)
{
 struct crypto_cts_ctx *ctx = crypto_blkcipher_ctx(desc->tfm);
 int bsize = crypto_blkcipher_blocksize(desc->tfm);
 int tot_blocks = (nbytes + bsize - 1) / bsize;
 int cbc_blocks = tot_blocks > 2 ? tot_blocks - 2 : 0;
 struct blkcipher_desc lcldesc;
 int err;

 lcldesc.tfm = ctx->child;
 lcldesc.info = desc->info;
 lcldesc.flags = desc->flags;

 if (tot_blocks == 1) {
  err = crypto_blkcipher_encrypt_iv(&lcldesc, dst, src, bsize);
 } else if (nbytes <= bsize * 2) {
  err = cts_cbc_encrypt(ctx, desc, dst, src, 0, nbytes);
 } else {

  err = crypto_blkcipher_encrypt_iv(&lcldesc, dst, src,
       cbc_blocks * bsize);
  if (err == 0) {

   err = cts_cbc_encrypt(ctx, desc, dst, src,
      cbc_blocks * bsize,
      nbytes - (cbc_blocks * bsize));
  }
 }

 return err;
}

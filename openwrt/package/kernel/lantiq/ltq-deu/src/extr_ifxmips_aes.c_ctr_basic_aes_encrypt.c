
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct scatterlist {int dummy; } ;
struct TYPE_7__ {int addr; } ;
struct TYPE_8__ {TYPE_3__ virt; } ;
struct TYPE_5__ {int addr; } ;
struct TYPE_6__ {TYPE_1__ virt; } ;
struct blkcipher_walk {unsigned int nbytes; TYPE_4__ src; TYPE_2__ dst; int * iv; } ;
struct blkcipher_desc {int tfm; } ;
struct aes_ctx {int dummy; } ;


 unsigned int AES_BLOCK_SIZE ;
 int CRYPTO_DIR_ENCRYPT ;
 int blkcipher_walk_done (struct blkcipher_desc*,struct blkcipher_walk*,unsigned int) ;
 int blkcipher_walk_init (struct blkcipher_walk*,struct scatterlist*,struct scatterlist*,unsigned int) ;
 int blkcipher_walk_virt (struct blkcipher_desc*,struct blkcipher_walk*) ;
 struct aes_ctx* crypto_blkcipher_ctx (int ) ;
 int ifx_deu_aes_ctr (struct aes_ctx*,int ,int ,int *,unsigned int,int ,int ) ;

int ctr_basic_aes_encrypt(struct blkcipher_desc *desc,
               struct scatterlist *dst, struct scatterlist *src,
               unsigned int nbytes)
{
    struct aes_ctx *ctx = crypto_blkcipher_ctx(desc->tfm);
    struct blkcipher_walk walk;
    int err;
    unsigned int enc_bytes;

    blkcipher_walk_init(&walk, dst, src, nbytes);
    err = blkcipher_walk_virt(desc, &walk);

    while ((nbytes = enc_bytes = walk.nbytes)) {
            u8 *iv = walk.iv;
            enc_bytes -= (nbytes % AES_BLOCK_SIZE);
            ifx_deu_aes_ctr(ctx, walk.dst.virt.addr, walk.src.virt.addr,
                       iv, enc_bytes, CRYPTO_DIR_ENCRYPT, 0);
        nbytes &= AES_BLOCK_SIZE - 1;
        err = blkcipher_walk_done(desc, &walk, nbytes);
    }

    return err;
}

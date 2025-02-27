
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u128 ;
struct common_glue_ctx {unsigned int num_funcs; TYPE_6__* funcs; } ;
struct TYPE_9__ {scalar_t__ addr; } ;
struct TYPE_10__ {TYPE_3__ virt; } ;
struct TYPE_7__ {scalar_t__ addr; } ;
struct TYPE_8__ {TYPE_1__ virt; } ;
struct blkcipher_walk {unsigned int nbytes; scalar_t__ iv; TYPE_4__ dst; TYPE_2__ src; } ;
struct blkcipher_desc {int tfm; } ;
typedef int le128 ;
typedef int be128 ;
struct TYPE_11__ {int (* ctr ) (void*,int *,int *,int *) ;} ;
struct TYPE_12__ {unsigned int num_blocks; TYPE_5__ fn_u; } ;


 int be128_to_le128 (int *,int *) ;
 void* crypto_blkcipher_ctx (int ) ;
 int le128_to_be128 (int *,int *) ;
 int stub1 (void*,int *,int *,int *) ;

__attribute__((used)) static unsigned int __glue_ctr_crypt_128bit(const struct common_glue_ctx *gctx,
         struct blkcipher_desc *desc,
         struct blkcipher_walk *walk)
{
 const unsigned int bsize = 128 / 8;
 void *ctx = crypto_blkcipher_ctx(desc->tfm);
 unsigned int nbytes = walk->nbytes;
 u128 *src = (u128 *)walk->src.virt.addr;
 u128 *dst = (u128 *)walk->dst.virt.addr;
 le128 ctrblk;
 unsigned int num_blocks, func_bytes;
 unsigned int i;

 be128_to_le128(&ctrblk, (be128 *)walk->iv);


 for (i = 0; i < gctx->num_funcs; i++) {
  num_blocks = gctx->funcs[i].num_blocks;
  func_bytes = bsize * num_blocks;

  if (nbytes >= func_bytes) {
   do {
    gctx->funcs[i].fn_u.ctr(ctx, dst, src, &ctrblk);

    src += num_blocks;
    dst += num_blocks;
    nbytes -= func_bytes;
   } while (nbytes >= func_bytes);

   if (nbytes < bsize)
    goto done;
  }
 }

done:
 le128_to_be128((be128 *)walk->iv, &ctrblk);
 return nbytes;
}

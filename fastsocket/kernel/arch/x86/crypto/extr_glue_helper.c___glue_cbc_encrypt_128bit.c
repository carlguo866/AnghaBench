
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u128 ;
struct TYPE_7__ {scalar_t__ addr; } ;
struct TYPE_8__ {TYPE_3__ virt; } ;
struct TYPE_5__ {scalar_t__ addr; } ;
struct TYPE_6__ {TYPE_1__ virt; } ;
struct blkcipher_walk {unsigned int nbytes; scalar_t__ iv; TYPE_4__ dst; TYPE_2__ src; } ;
struct blkcipher_desc {int tfm; } ;
typedef int (* common_glue_func_t ) (void*,int *,int *) ;


 void* crypto_blkcipher_ctx (int ) ;
 int u128_xor (int *,int *,int *) ;

__attribute__((used)) static unsigned int __glue_cbc_encrypt_128bit(const common_glue_func_t fn,
           struct blkcipher_desc *desc,
           struct blkcipher_walk *walk)
{
 void *ctx = crypto_blkcipher_ctx(desc->tfm);
 const unsigned int bsize = 128 / 8;
 unsigned int nbytes = walk->nbytes;
 u128 *src = (u128 *)walk->src.virt.addr;
 u128 *dst = (u128 *)walk->dst.virt.addr;
 u128 *iv = (u128 *)walk->iv;

 do {
  u128_xor(dst, src, iv);
  fn(ctx, (u8 *)dst, (u8 *)dst);
  iv = dst;

  src += 1;
  dst += 1;
  nbytes -= bsize;
 } while (nbytes >= bsize);

 u128_xor((u128 *)walk->iv, (u128 *)walk->iv, iv);
 return nbytes;
}

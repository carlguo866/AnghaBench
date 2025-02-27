
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_7__ {int * addr; } ;
struct TYPE_8__ {TYPE_3__ virt; } ;
struct TYPE_5__ {int * addr; } ;
struct TYPE_6__ {TYPE_1__ virt; } ;
struct blkcipher_walk {unsigned int nbytes; TYPE_4__ src; TYPE_2__ dst; } ;
struct blkcipher_desc {int dummy; } ;


 int AES_BLOCK_SIZE ;
 int BUG_ON (int) ;
 int blkcipher_walk_done (struct blkcipher_desc*,struct blkcipher_walk*,unsigned int) ;
 int blkcipher_walk_virt (struct blkcipher_desc*,struct blkcipher_walk*) ;
 int crypt_s390_km (long,void*,int *,int *,unsigned int) ;

__attribute__((used)) static int ecb_aes_crypt(struct blkcipher_desc *desc, long func, void *param,
    struct blkcipher_walk *walk)
{
 int ret = blkcipher_walk_virt(desc, walk);
 unsigned int nbytes;

 while ((nbytes = walk->nbytes)) {

  unsigned int n = nbytes & ~(AES_BLOCK_SIZE - 1);
  u8 *out = walk->dst.virt.addr;
  u8 *in = walk->src.virt.addr;

  ret = crypt_s390_km(func, param, out, in, n);
  BUG_ON((ret < 0) || (ret != n));

  nbytes &= AES_BLOCK_SIZE - 1;
  ret = blkcipher_walk_done(desc, walk, nbytes);
 }

 return ret;
}

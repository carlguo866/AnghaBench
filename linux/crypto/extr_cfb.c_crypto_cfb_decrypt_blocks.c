
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ addr; } ;
struct TYPE_8__ {TYPE_3__ virt; } ;
struct TYPE_5__ {scalar_t__ addr; } ;
struct TYPE_6__ {TYPE_1__ virt; } ;
struct skcipher_walk {TYPE_4__ dst; TYPE_2__ src; } ;
struct crypto_skcipher {int dummy; } ;


 int crypto_cfb_decrypt_inplace (struct skcipher_walk*,struct crypto_skcipher*) ;
 int crypto_cfb_decrypt_segment (struct skcipher_walk*,struct crypto_skcipher*) ;

__attribute__((used)) static int crypto_cfb_decrypt_blocks(struct skcipher_walk *walk,
         struct crypto_skcipher *tfm)
{
 if (walk->src.virt.addr == walk->dst.virt.addr)
  return crypto_cfb_decrypt_inplace(walk, tfm);
 else
  return crypto_cfb_decrypt_segment(walk, tfm);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct crypto_ahash {int dummy; } ;


 int ENOSYS ;

__attribute__((used)) static int ahash_nosetkey(struct crypto_ahash *tfm, const u8 *key,
     unsigned int keylen)
{
 return -ENOSYS;
}

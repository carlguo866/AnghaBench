
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u64 ;


 int BUG_ON (int) ;
 int get_random_bytes (char*,int) ;
 scalar_t__ parm_block ;
 int prng_add_entropy () ;

__attribute__((used)) static void prng_seed(int nbytes)
{
 char buf[16];
 int i = 0;

 BUG_ON(nbytes > 16);
 get_random_bytes(buf, nbytes);


 while (nbytes >= 8) {
  *((__u64 *)parm_block) ^= *((__u64 *)(buf+i));
  prng_add_entropy();
  i += 8;
  nbytes -= 8;
 }
 prng_add_entropy();
}

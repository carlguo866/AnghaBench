
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int __be32 ;


 unsigned int AES_BLOCK_SIZE ;
 scalar_t__ be32_to_cpu (int ) ;
 int cpu_to_be32 (scalar_t__) ;
 int memcpy (int *,int *,unsigned int) ;

__attribute__((used)) static void ctr_add_iv(u8 *dstiv, u8 *srciv, u32 add)
{
 unsigned int size = AES_BLOCK_SIZE;
 __be32 *b = (__be32 *)(dstiv + size);
 u32 c, prev;

 memcpy(dstiv, srciv, AES_BLOCK_SIZE);
 for (; size >= 4; size -= 4) {
  prev = be32_to_cpu(*--b);
  c = prev + add;
  *b = cpu_to_be32(c);
  if (prev < c)
   break;
  add = 1;
 }

}

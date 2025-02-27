
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int* ecc_table ;

__attribute__((used)) static u8 calculate_ecc(u32 high, u32 low)
{
 u32 mask_low;
 u32 mask_high;
 int bit_cnt;
 u8 ecc = 0;
 int i;
 int j;

 for (i = 0; i < 8; i++) {
  mask_high = ecc_table[i * 2];
  mask_low = ecc_table[i * 2 + 1];
  bit_cnt = 0;

  for (j = 0; j < 32; j++) {
   if ((mask_high >> j) & 1)
    bit_cnt ^= (high >> j) & 1;
   if ((mask_low >> j) & 1)
    bit_cnt ^= (low >> j) & 1;
  }

  ecc |= bit_cnt << i;
 }

 return ecc;
}

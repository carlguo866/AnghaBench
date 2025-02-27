
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int cpu_to_be16 (int) ;
 int le32_to_cpu (int const) ;

__attribute__((used)) static u16 csr1212_msft_crc16(const u32 *buffer, size_t length)
{
 int shift;
 u32 data;
 u16 sum, crc = 0;

 for (; length; length--) {
  data = le32_to_cpu(*buffer);
  buffer++;
  for (shift = 28; shift >= 0; shift -= 4 ) {
   sum = ((crc >> 12) ^ (data >> shift)) & 0xf;
   crc = (crc << 4) ^ (sum << 12) ^ (sum << 5) ^ (sum);
  }
  crc &= 0xffff;
 }

 return cpu_to_be16(crc);
}

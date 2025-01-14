
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int u16 ;



__attribute__((used)) static bool ms5611_prom_is_valid(u16 *prom, size_t len)
{
 int i, j;
 uint16_t crc = 0, crc_orig = prom[7] & 0x000F;

 prom[7] &= 0xFF00;

 for (i = 0; i < len * 2; i++) {
  if (i % 2 == 1)
   crc ^= prom[i >> 1] & 0x00FF;
  else
   crc ^= prom[i >> 1] >> 8;

  for (j = 0; j < 8; j++) {
   if (crc & 0x8000)
    crc = (crc << 1) ^ 0x3000;
   else
    crc <<= 1;
  }
 }

 crc = (crc >> 12) & 0x000F;

 return crc_orig != 0x0000 && crc == crc_orig;
}

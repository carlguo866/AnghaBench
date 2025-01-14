
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;


 scalar_t__ CRC32_POLY ;
 scalar_t__* OSAL_NULL ;

__attribute__((used)) static u32 ecore_calc_crc32c(u8 *crc32_packet, u32 crc32_length, u32 crc32_seed)
{
 u32 byte = 0, bit = 0, crc32_result = crc32_seed;
 u8 msb = 0, current_byte = 0;

 if ((crc32_packet == OSAL_NULL) ||
     (crc32_length == 0) ||
     ((crc32_length % 8) != 0)) {
  return crc32_result;
 }

 for (byte = 0; byte < crc32_length; byte++) {
  current_byte = crc32_packet[byte];
  for (bit = 0; bit < 8; bit++) {
   msb = (u8)(crc32_result >> 31);
   crc32_result = crc32_result << 1;
   if (msb != (0x1 & (current_byte >> bit))) {
    crc32_result = crc32_result ^ CRC32_POLY;
    crc32_result |= 1;
   }
  }
 }

 return crc32_result;
}

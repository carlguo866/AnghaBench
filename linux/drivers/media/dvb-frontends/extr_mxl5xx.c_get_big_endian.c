
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



__attribute__((used)) static u32 get_big_endian(u8 num_of_bits, const u8 buf[])
{
 u32 ret_value = 0;

 switch (num_of_bits) {
 case 24:
  ret_value = (((u32) buf[0]) << 16) |
   (((u32) buf[1]) << 8) | buf[2];
  break;
 case 32:
  ret_value = (((u32) buf[0]) << 24) |
   (((u32) buf[1]) << 16) |
   (((u32) buf[2]) << 8) | buf[3];
  break;
 default:
  break;
 }

 return ret_value;
}

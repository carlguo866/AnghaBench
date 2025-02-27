
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;



void unpack_info(u8 *info, u8 *sample_num, u16 *sample_period, u8 *effect_num,
                 u8 *effect_param)
{
    *sample_num = (info[0] & 0xF0) | ((info[2] & 0xF0) >> 4);
    *sample_period = info[1] | ((info[0] & 0x0F) << 8);
    *effect_num = info[2] & 0x0F;
    *effect_param = info[3];
}

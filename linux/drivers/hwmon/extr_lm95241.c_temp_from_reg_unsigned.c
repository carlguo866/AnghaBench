
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;



__attribute__((used)) static int temp_from_reg_unsigned(u8 val_h, u8 val_l)
{
 u16 val_hl = (val_h << 8) | val_l;
 return val_hl * 1000 / 256;
}

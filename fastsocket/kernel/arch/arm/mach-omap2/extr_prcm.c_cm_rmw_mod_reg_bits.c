
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s16 ;


 int cm_read_mod_reg (int ,int ) ;
 int cm_write_mod_reg (int ,int ,int ) ;

u32 cm_rmw_mod_reg_bits(u32 mask, u32 bits, s16 module, s16 idx)
{
 u32 v;

 v = cm_read_mod_reg(module, idx);
 v &= ~mask;
 v |= bits;
 cm_write_mod_reg(v, module, idx);

 return v;
}

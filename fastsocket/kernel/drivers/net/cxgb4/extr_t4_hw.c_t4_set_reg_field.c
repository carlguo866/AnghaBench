
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dummy; } ;


 int t4_read_reg (struct adapter*,unsigned int) ;
 int t4_write_reg (struct adapter*,unsigned int,int) ;

void t4_set_reg_field(struct adapter *adapter, unsigned int addr, u32 mask,
        u32 val)
{
 u32 v = t4_read_reg(adapter, addr) & ~mask;

 t4_write_reg(adapter, addr, v | val);
 (void) t4_read_reg(adapter, addr);
}

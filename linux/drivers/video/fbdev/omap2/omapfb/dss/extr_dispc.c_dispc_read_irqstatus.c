
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DISPC_IRQSTATUS ;
 int dispc_read_reg (int ) ;

u32 dispc_read_irqstatus(void)
{
 return dispc_read_reg(DISPC_IRQSTATUS);
}

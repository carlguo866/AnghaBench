
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s32 ;


 scalar_t__ EXI_GetID (int ,int,int*) ;
 scalar_t__ __probebarnacle (int ,int,int*) ;
 int exi_uart_barnacle_enabled ;
 int exi_uart_chan ;
 int exi_uart_dev ;
 int exi_uart_enabled ;

void __SYS_EnableBarnacle(s32 chn,u32 dev)
{
 u32 id,rev;

 if(EXI_GetID(chn,dev,&id)==0) return;

 if(id==0x01020000 || id==0x0004 || id==0x80000010 || id==0x80000008
  || id==0x80000004 || id==0xffff || id==0x80000020 || id==0x0020
  || id==0x0010 || id==0x0008 || id==0x01010000 || id==0x04040404
  || id==0x04021000 || id==0x03010000 || id==0x02020000
  || id==0x04020300 || id==0x04020200 || id==0x04130000
  || id==0x04120000 || id==0x04060000 || id==0x04220000) return;

 if(__probebarnacle(chn,dev,&rev)==0) return;

 exi_uart_chan = chn;
 exi_uart_dev = dev;
 exi_uart_barnacle_enabled = 0xa5ff005a;
 exi_uart_enabled = 0xa5ff005a;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int ,int ) ;
 int output_w32 (int) ;
 int rd_rn_rm (int,int ,int) ;
 int * regname ;

void emit_rrxs(int rs, int rt)
{
  assem_debug("rrxs %s,%s\n",regname[rt],regname[rs]);
  output_w32(0xe1b00060|rd_rn_rm(rt,0,rs));
}

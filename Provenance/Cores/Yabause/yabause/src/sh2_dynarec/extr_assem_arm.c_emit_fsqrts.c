
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,int,int) ;
 int output_w32 (int) ;

void emit_fsqrts(int s,int d)
{
  assem_debug("fsqrts d%d,s%d\n",d,s);
  output_w32(0xeeb10ac0|((d&14)<<11)|((d&1)<<22)|((s&14)>>1)|((s&1)<<5));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assem_debug (char*,unsigned int,unsigned int) ;
 int assert (int) ;
 int output_byte (int) ;
 int output_modrm (int,unsigned int,unsigned int) ;

void emit_cvttps2dq(unsigned int ssereg1,unsigned int ssereg2)
{
  assem_debug("cvttps2dq xmm%d,xmm%d\n",ssereg1,ssereg2);
  assert(ssereg1<8);
  assert(ssereg2<8);
  output_byte(0xf3);
  output_byte(0x0f);
  output_byte(0x5b);
  output_modrm(3,ssereg1,ssereg2);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;


 int rv_i_insn (int ,int ,int,int ,int) ;

__attribute__((used)) static u32 rv_lbu(u8 rd, u16 imm11_0, u8 rs1)
{
 return rv_i_insn(imm11_0, rs1, 4, rd, 0x03);
}

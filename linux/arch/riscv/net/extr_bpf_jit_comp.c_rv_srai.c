
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;


 int rv_i_insn (int,int ,int,int ,int) ;

__attribute__((used)) static u32 rv_srai(u8 rd, u8 rs1, u16 imm11_0)
{
 return rv_i_insn(0x400 | imm11_0, rs1, 5, rd, 0x13);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



__attribute__((used)) static u32 rv_uj_insn(u32 imm20_1, u8 rd, u8 opcode)
{
 u32 imm;

 imm = (imm20_1 & 0x80000) | ((imm20_1 & 0x3ff) << 9) |
       ((imm20_1 & 0x400) >> 2) | ((imm20_1 & 0x7f800) >> 11);

 return (imm << 12) | (rd << 7) | opcode;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
struct h8300_cmd {int operands; } ;


 int H8300_INSTR_MAXLEN ;
 scalar_t__ decode_opcode (int const*,struct h8300_cmd*) ;
 int snprintf (int ,int ,char*,int const,int const) ;

__attribute__((used)) static int decode_imm2ind16(const ut8 *bytes, struct h8300_cmd *cmd)
{
 int ret = 4;

 if (decode_opcode(bytes, cmd)) {
  return -1;
 }

 snprintf(cmd->operands, H8300_INSTR_MAXLEN, "#0x%x:3,@r%u",
   (bytes[3] >> 4) & 0x7, bytes[1] >> 4);

 return ret;
}

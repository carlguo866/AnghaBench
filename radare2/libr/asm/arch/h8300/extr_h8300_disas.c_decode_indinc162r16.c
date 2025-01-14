
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
struct h8300_cmd {int operands; } ;


 int H8300_INSTR_MAXLEN ;
 scalar_t__ decode_opcode (int const*,struct h8300_cmd*) ;
 int decode_pop (int const*,struct h8300_cmd*) ;
 int snprintf (int ,int ,char*,int const,int const) ;

__attribute__((used)) static int decode_indinc162r16(const ut8 *bytes, struct h8300_cmd *cmd)
{
 int ret = 2;
 ut8 tmp = bytes[1] >> 4;

 if (bytes[0] == 0x6D && (tmp == 7 || tmp == 0xF)) {
  return decode_pop(bytes, cmd);
 }

 if (decode_opcode(bytes, cmd)) {
  return -1;
 }

 if (bytes[1] & 0x80) {
  snprintf(cmd->operands, H8300_INSTR_MAXLEN, "r%u,@-r%u",
   bytes[1] & 0x7, (bytes[1] >> 4) & 0x7);
 } else {
  snprintf(cmd->operands, H8300_INSTR_MAXLEN, "@r%u+,r%u",
   (bytes[1] >> 4) & 0x7, bytes[1] & 0x7);
 }

 return ret;
}

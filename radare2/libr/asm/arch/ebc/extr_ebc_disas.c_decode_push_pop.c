
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut16 ;
typedef int op1c ;
struct TYPE_5__ {char sign; int c; int n; } ;
typedef TYPE_1__ ebc_index_t ;
struct TYPE_6__ {char* instr; int operands; } ;
typedef TYPE_2__ ebc_command_t ;


 int CHK_SNPRINTF (int ,int ,char*,char*,...) ;
 int EBC_INSTR_MAXLEN ;
 int const EBC_OPCODE_MASK ;
 int EBC_OPERANDS_MAXLEN ;
 scalar_t__ TEST_BIT (int const,int) ;
 int decode_index16 (int const*,TYPE_1__*) ;
 char** instr_names ;
 int snprintf (char*,int,char*,char*,unsigned int) ;

__attribute__((used)) static int decode_push_pop(const ut8 *bytes, ebc_command_t *cmd) {
 int ret = 2;
 unsigned op1 = bytes[1] & 0x07;
 char op1c[32];

 snprintf (cmd->instr, EBC_INSTR_MAXLEN, "%s%u",
   instr_names[bytes[0] & EBC_OPCODE_MASK],
   TEST_BIT(bytes[0], 6) ? 64 : 32);

 snprintf (op1c, sizeof (op1c), "%sr%d",
  TEST_BIT(bytes[1], 3) ? "@" : "", op1);

 if (TEST_BIT (bytes[0], 7)) {
  ret += 2;
  if (TEST_BIT (bytes[1], 3)) {
   ebc_index_t idx;
   char sign;
   decode_index16(bytes + 2, &idx);

   sign = idx.sign ? '+' : '-';

   CHK_SNPRINTF (cmd->operands, EBC_OPERANDS_MAXLEN, "%s (%c%d, %c%d)",
    op1c, sign, idx.n, sign, idx.c);
  } else {
   ut16 immed = *(ut16 *)(bytes + 2);

   CHK_SNPRINTF (cmd->operands, EBC_OPERANDS_MAXLEN, "%s %u",
    op1c, immed);
  }
    } else {
        CHK_SNPRINTF (cmd->operands, EBC_OPERANDS_MAXLEN, "%s", op1c);
    }

 return ret;
}

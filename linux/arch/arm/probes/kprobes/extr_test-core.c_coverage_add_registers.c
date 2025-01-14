
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct coverage_entry {int regs; TYPE_1__* header; } ;
typedef int kprobe_opcode_t ;
typedef enum decode_reg_type { ____Placeholder_decode_reg_type } decode_reg_type ;
struct TYPE_4__ {int bits; } ;
struct TYPE_3__ {TYPE_2__ type_regs; } ;


 int COVERAGE_ANY_REG ;
 int COVERAGE_PC ;
 int COVERAGE_PCWB ;
 int COVERAGE_SP ;
 int DECODE_TYPE_BITS ;
 int is_writeback (int) ;

__attribute__((used)) static void
coverage_add_registers(struct coverage_entry *entry, kprobe_opcode_t insn)
{
 int regs = entry->header->type_regs.bits >> DECODE_TYPE_BITS;
 int i;
 for (i = 0; i < 20; i += 4) {
  enum decode_reg_type reg_type = (regs >> i) & 0xf;
  int reg = (insn >> i) & 0xf;
  int flag;

  if (!reg_type)
   continue;

  if (reg == 13)
   flag = COVERAGE_SP;
  else if (reg == 15)
   flag = COVERAGE_PC;
  else
   flag = COVERAGE_ANY_REG;
  entry->regs &= ~(flag << i);

  switch (reg_type) {

  case 137:
  case 138:
  case 129:
   break;

  case 128:
   if (reg != 13)
    return;
   break;

  case 130:
   if (reg != 15)
    return;
   break;

  case 133:
   if (reg == 13)
    return;
   break;

  case 132:
  case 131:
   if (reg == 13 || reg == 15)
    return;
   break;

  case 135:
   if (!is_writeback(insn))
    break;
   if (reg == 15) {
    entry->regs &= ~(COVERAGE_PCWB << i);
    return;
   }
   break;

  case 136:
  case 134:
   if (reg == 15)
    return;
   break;
  }

 }
}

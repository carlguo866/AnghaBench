
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int csh ;
struct TYPE_12__ {int flags; int offset_bits; int offset; int offset_addr; int inc_dec; int base_reg; int offset_reg; } ;
struct TYPE_11__ {int address; } ;
struct TYPE_10__ {int address; int indirect; } ;
struct TYPE_13__ {int const_val; int imm; int direct_addr; scalar_t__ size; size_t access; TYPE_3__ idx; TYPE_2__ rel; TYPE_1__ ext; int reg; scalar_t__ type; } ;
typedef TYPE_4__ cs_m680x_op ;
struct TYPE_14__ {int op_count; int flags; TYPE_4__* operands; } ;
typedef TYPE_5__ cs_m680x ;
struct TYPE_15__ {TYPE_7__* detail; } ;
typedef TYPE_6__ cs_insn ;
struct TYPE_16__ {int groups_count; TYPE_5__ m680x; } ;
typedef TYPE_7__ cs_detail ;


 size_t CS_AC_INVALID ;
 int M680X_FIRST_OP_IN_MNEM ;
 int M680X_IDX_INDIRECT ;
 int M680X_IDX_POST_INC_DEC ;







 int M680X_REG_INVALID ;
 int M680X_REG_PC ;
 int M680X_SECOND_OP_IN_MNEM ;
 int abs (int ) ;
 char* cs_reg_name (int ,int ) ;
 int print_read_write_regs (int ,TYPE_7__*) ;
 int printf (char*,...) ;
 char** s_access ;

__attribute__((used)) static void print_insn_detail(csh handle, cs_insn *insn)
{
 cs_detail *detail = insn->detail;
 cs_m680x *m680x = ((void*)0);
 int i;


 if (detail == ((void*)0))
  return;

 m680x = &detail->m680x;

 if (m680x->op_count)
  printf("\top_count: %u\n", m680x->op_count);

 for (i = 0; i < m680x->op_count; i++) {
  cs_m680x_op *op = &(m680x->operands[i]);
  const char *comment;

  switch ((int)op->type) {
  default:
   break;

  case 129:
   comment = "";

   if ((i == 0 && (m680x->flags &
      M680X_FIRST_OP_IN_MNEM)) ||
    ((i == 1 && (m680x->flags &
       M680X_SECOND_OP_IN_MNEM))))
    comment = " (in mnemonic)";

   printf("\t\toperands[%u].type: REGISTER = %s%s\n", i,
    cs_reg_name(handle, op->reg), comment);
   break;

  case 134:
   printf("\t\toperands[%u].type: CONSTANT = %u\n", i,
    op->const_val);
   break;

  case 131:
   printf("\t\toperands[%u].type: IMMEDIATE = #%d\n", i,
    op->imm);
   break;

  case 133:
   printf("\t\toperands[%u].type: DIRECT = 0x%02X\n", i,
    op->direct_addr);
   break;

  case 132:
   printf("\t\toperands[%u].type: EXTENDED %s = 0x%04X\n",
    i, op->ext.indirect ? "INDIRECT" : "",
    op->ext.address);
   break;

  case 128:
   printf("\t\toperands[%u].type: RELATIVE = 0x%04X\n", i,
    op->rel.address);
   break;

  case 130:
   printf("\t\toperands[%u].type: INDEXED%s\n", i,
    (op->idx.flags & M680X_IDX_INDIRECT) ?
    " INDIRECT" : "");

   if (op->idx.base_reg != M680X_REG_INVALID)
    printf("\t\t\tbase register: %s\n",
     cs_reg_name(handle, op->idx.base_reg));

   if (op->idx.offset_reg != M680X_REG_INVALID)
    printf("\t\t\toffset register: %s\n",
     cs_reg_name(handle, op->idx.offset_reg));

   if ((op->idx.offset_bits != 0) &&
    (op->idx.offset_reg == M680X_REG_INVALID) &&
    !op->idx.inc_dec) {
    printf("\t\t\toffset: %d\n", op->idx.offset);

    if (op->idx.base_reg == M680X_REG_PC)
     printf("\t\t\toffset address: 0x%X\n",
      op->idx.offset_addr);

    printf("\t\t\toffset bits: %u\n",
     op->idx.offset_bits);
   }

   if (op->idx.inc_dec) {
    const char *post_pre = op->idx.flags &
     M680X_IDX_POST_INC_DEC ? "post" : "pre";
    const char *inc_dec = (op->idx.inc_dec > 0) ?
     "increment" : "decrement";

    printf("\t\t\t%s %s: %d\n", post_pre, inc_dec,
     abs(op->idx.inc_dec));
   }

   break;
  }

  if (op->size != 0)
   printf("\t\t\tsize: %u\n", op->size);

  if (op->access != CS_AC_INVALID)
   printf("\t\t\taccess: %s\n", s_access[op->access]);

 }

 print_read_write_regs(handle, detail);

 if (detail->groups_count) {
  printf("\tgroups_count: %u\n", detail->groups_count);
 }

 printf("\n");
}

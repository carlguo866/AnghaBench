
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct alpha_insn {size_t nfixups; long sequence; TYPE_2__* fixups; } ;
struct TYPE_11__ {scalar_t__ X_op; int X_add_number; } ;
typedef TYPE_3__ expressionS ;
struct TYPE_9__ {int X_op; } ;
struct TYPE_10__ {TYPE_1__ exp; int reloc; } ;


 int AXP_REG_ZERO ;
 int DUMMY_RELOC_LITUSE_BASE ;
 size_t MAX_INSN_FIXUPS ;
 int O_absent ;
 scalar_t__ O_constant ;
 int alpha_gp_register ;
 int assemble_tokens_to_insn (char const*,TYPE_3__*,int,struct alpha_insn*) ;
 int assert (int) ;
 int emit_insn (struct alpha_insn*) ;
 long load_expression (int,TYPE_3__ const*,int*,TYPE_3__*) ;
 int set_tok_preg (TYPE_3__,int) ;

__attribute__((used)) static void
emit_ir_load (const expressionS *tok,
       int ntok,
       const void * opname)
{
  int basereg;
  long lituse;
  expressionS newtok[3];
  struct alpha_insn insn;

  if (ntok == 2)
    basereg = (tok[1].X_op == O_constant ? AXP_REG_ZERO : alpha_gp_register);
  else
    basereg = tok[2].X_add_number;

  lituse = load_expression (tok[0].X_add_number, &tok[1], &basereg,
       &newtok[1]);

  newtok[0] = tok[0];
  set_tok_preg (newtok[2], basereg);

  assemble_tokens_to_insn ((const char *) opname, newtok, 3, &insn);

  if (lituse)
    {
      assert (insn.nfixups < MAX_INSN_FIXUPS);
      insn.fixups[insn.nfixups].reloc = DUMMY_RELOC_LITUSE_BASE;
      insn.fixups[insn.nfixups].exp.X_op = O_absent;
      insn.nfixups++;
      insn.sequence = lituse;
    }

  emit_insn (&insn);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct spu_insn {int* reloc_arg; int opcode; int* flag; TYPE_1__* exp; } ;
struct TYPE_4__ {int rshift; int hi; int lo; int whi; int wlo; int size; int pos; } ;
struct TYPE_3__ {scalar_t__ X_op; int X_add_number; } ;


 int A_S11 ;
 int A_S11I ;
 int A_U7A ;
 int A_U7B ;
 int ISALNUM (char const) ;
 scalar_t__ O_constant ;
 int _ (char*) ;
 TYPE_2__* arg_encode ;
 int as_fatal (int ,int,int,int) ;
 int as_warn (int ,...) ;
 scalar_t__ emulate_apuasm ;
 int expression (TYPE_1__*) ;
 char* get_reg (char const*,struct spu_insn*,int,int ) ;
 char* input_line_pointer ;
 scalar_t__ strncasecmp (char const*,char*,int) ;
 char const* syntax_error_param ;

__attribute__((used)) static const char *
get_imm (const char *param, struct spu_insn *insn, int arg)
{
  int val;
  char *save_ptr;
  int low = 0, high = 0;
  int reloc_i = insn->reloc_arg[0] >= 0 ? 1 : 0;

  if (strncasecmp (param, "%lo(", 4) == 0)
    {
      param += 3;
      low = 1;
      as_warn (_("Using old style, %%lo(expr), please change to PPC style, expr@l."));
    }
  else if (strncasecmp (param, "%hi(", 4) == 0)
    {
      param += 3;
      high = 1;
      as_warn (_("Using old style, %%hi(expr), please change to PPC style, expr@h."));
    }
  else if (strncasecmp (param, "%pic(", 5) == 0)
    {


      param += 4;
    }

  if (*param == '$')
    {



      struct spu_insn tmp_insn;
      const char *np = get_reg (param, &tmp_insn, arg, 0);

      if (np)
 syntax_error_param = np;
    }

  save_ptr = input_line_pointer;
  input_line_pointer = (char *) param;
  expression (&insn->exp[reloc_i]);
  param = input_line_pointer;
  input_line_pointer = save_ptr;



  if (param[0] == '@' && !ISALNUM (param[2]) && param[2] != '@')
    {
      if (param[1] == 'h' || param[1] == 'H')
 {
   high = 1;
   param += 2;
 }
      else if (param[1] == 'l' || param[1] == 'L')
 {
   low = 1;
   param += 2;
 }
    }

  if (insn->exp[reloc_i].X_op == O_constant)
    {
      val = insn->exp[reloc_i].X_add_number;

      if (emulate_apuasm)
 {

          val <<= arg_encode[arg].rshift;
   if (arg == A_U7A)
     val = 173 - val;
   else if (arg == A_U7B)
     val = 155 - val;
 }

      if (high)
 val = val >> 16;
      else if (low)
 val = val & 0xffff;


      {
 int hi = arg_encode[arg].hi;
 int lo = arg_encode[arg].lo;
 int whi = arg_encode[arg].whi;
 int wlo = arg_encode[arg].wlo;

 if (hi > lo && (val < lo || val > hi))
   as_fatal (_("Constant expression %d out of range, [%d, %d]."),
      val, lo, hi);
 else if (whi > wlo && (val < wlo || val > whi))
   as_warn (_("Constant expression %d out of range, [%d, %d]."),
     val, wlo, whi);
      }

      if (arg == A_U7A)
        val = 173 - val;
      else if (arg == A_U7B)
        val = 155 - val;


      if (arg == A_S11 || arg == A_S11I)
 insn->opcode |= ((val >> 2) & 0x7f);

      insn->opcode |= (((val >> arg_encode[arg].rshift)
   & ((1 << arg_encode[arg].size) - 1))
         << arg_encode[arg].pos);
      insn->reloc_arg[reloc_i] = -1;
      insn->flag[reloc_i] = 0;
    }
  else
    {
      insn->reloc_arg[reloc_i] = arg;
      if (high)
 insn->flag[reloc_i] = 1;
      else if (low)
 insn->flag[reloc_i] = 2;
    }

  return param;
}

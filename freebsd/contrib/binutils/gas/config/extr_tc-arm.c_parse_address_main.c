
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct group_reloc_table_entry {scalar_t__ ldr_code; scalar_t__ ldrs_code; scalar_t__ ldc_code; } ;
typedef int parse_operand_result ;
typedef int group_reloc_type ;
struct TYPE_8__ {scalar_t__ X_op; int X_add_number; } ;
typedef TYPE_3__ expressionS ;
struct TYPE_6__ {int pc_rel; scalar_t__ type; TYPE_3__ exp; } ;
struct TYPE_9__ {TYPE_1__ reloc; TYPE_2__* operands; void* error; } ;
struct TYPE_7__ {int reg; int isreg; int preind; int negative; int imm; int immisreg; int immisalign; int writeback; int postind; } ;


 int FAIL ;
 int GE_IMM_PREFIX ;
 int GE_NO_PREFIX ;



 scalar_t__ O_constant ;
 int PARSE_OPERAND_FAIL ;
 int PARSE_OPERAND_FAIL_NO_BACKTRACK ;
 int PARSE_OPERAND_SUCCESS ;
 int REG_PC ;
 size_t REG_TYPE_RN ;
 int SHIFT_IMMEDIATE ;
 int SUCCESS ;
 int TRUE ;
 void* _ (char*) ;
 int arm_reg_parse (char**,size_t) ;
 int assert (int ) ;
 int find_group_reloc_table_entry (char**,struct group_reloc_table_entry**) ;
 TYPE_5__ inst ;
 scalar_t__ my_get_expression (TYPE_3__*,char**,int ) ;
 int parse_immediate (char**,int*,int ,int,int ) ;
 int parse_shift (char**,int,int ) ;
 char** reg_expected_msgs ;
 int skip_past_char (char**,char) ;
 int skip_past_comma (char**) ;

__attribute__((used)) static parse_operand_result
parse_address_main (char **str, int i, int group_relocations,
                    group_reloc_type group_type)
{
  char *p = *str;
  int reg;

  if (skip_past_char (&p, '[') == FAIL)
    {
      if (skip_past_char (&p, '=') == FAIL)
 {

   inst.reloc.pc_rel = 1;
   inst.operands[i].reg = REG_PC;
   inst.operands[i].isreg = 1;
   inst.operands[i].preind = 1;
 }


      if (my_get_expression (&inst.reloc.exp, &p, GE_NO_PREFIX))
 return PARSE_OPERAND_FAIL;

      *str = p;
      return PARSE_OPERAND_SUCCESS;
    }

  if ((reg = arm_reg_parse (&p, REG_TYPE_RN)) == FAIL)
    {
      inst.error = _(reg_expected_msgs[REG_TYPE_RN]);
      return PARSE_OPERAND_FAIL;
    }
  inst.operands[i].reg = reg;
  inst.operands[i].isreg = 1;

  if (skip_past_comma (&p) == SUCCESS)
    {
      inst.operands[i].preind = 1;

      if (*p == '+') p++;
      else if (*p == '-') p++, inst.operands[i].negative = 1;

      if ((reg = arm_reg_parse (&p, REG_TYPE_RN)) != FAIL)
 {
   inst.operands[i].imm = reg;
   inst.operands[i].immisreg = 1;

   if (skip_past_comma (&p) == SUCCESS)
     if (parse_shift (&p, i, SHIFT_IMMEDIATE) == FAIL)
       return PARSE_OPERAND_FAIL;
 }
      else if (skip_past_char (&p, ':') == SUCCESS)
        {



          expressionS exp;
          my_get_expression (&exp, &p, GE_NO_PREFIX);
          if (exp.X_op != O_constant)
            {
              inst.error = _("alignment must be constant");
              return PARSE_OPERAND_FAIL;
            }
          inst.operands[i].imm = exp.X_add_number << 8;
          inst.operands[i].immisalign = 1;

          inst.operands[i].preind = 0;
        }
      else
 {
   if (inst.operands[i].negative)
     {
       inst.operands[i].negative = 0;
       p--;
     }

   if (group_relocations &&
              ((*p == '#' && *(p + 1) == ':') || *p == ':'))

     {
       struct group_reloc_table_entry *entry;


              if (*p == '#')
                p += 2;
              else
                p++;



       if (find_group_reloc_table_entry (&p, &entry) == FAIL)
  {
    inst.error = _("unknown group relocation");
    return PARSE_OPERAND_FAIL_NO_BACKTRACK;
  }




       if (my_get_expression (&inst.reloc.exp, &p, GE_NO_PREFIX))
  return PARSE_OPERAND_FAIL_NO_BACKTRACK;


              switch (group_type)
                {
                  case 129:
             inst.reloc.type = entry->ldr_code;
                    break;

                  case 128:
             inst.reloc.type = entry->ldrs_code;
                    break;

                  case 130:
             inst.reloc.type = entry->ldc_code;
                    break;

                  default:
                    assert (0);
                }

              if (inst.reloc.type == 0)
  {
    inst.error = _("this group relocation is not allowed on this instruction");
    return PARSE_OPERAND_FAIL_NO_BACKTRACK;
  }
            }
          else
     if (my_get_expression (&inst.reloc.exp, &p, GE_IMM_PREFIX))
       return PARSE_OPERAND_FAIL;
 }
    }
  else if (skip_past_char (&p, ':') == SUCCESS)
    {



      expressionS exp;
      my_get_expression (&exp, &p, GE_NO_PREFIX);
      if (exp.X_op != O_constant)
        {
          inst.error = _("alignment must be constant");
          return PARSE_OPERAND_FAIL;
        }
      inst.operands[i].imm = exp.X_add_number << 8;
      inst.operands[i].immisalign = 1;

      inst.operands[i].preind = 0;
    }

  if (skip_past_char (&p, ']') == FAIL)
    {
      inst.error = _("']' expected");
      return PARSE_OPERAND_FAIL;
    }

  if (skip_past_char (&p, '!') == SUCCESS)
    inst.operands[i].writeback = 1;

  else if (skip_past_comma (&p) == SUCCESS)
    {
      if (skip_past_char (&p, '{') == SUCCESS)
 {

   if (parse_immediate (&p, &inst.operands[i].imm,
          0, 255, TRUE) == FAIL)
     return PARSE_OPERAND_FAIL;

   if (skip_past_char (&p, '}') == FAIL)
     {
       inst.error = _("'}' expected at end of 'option' field");
       return PARSE_OPERAND_FAIL;
     }
   if (inst.operands[i].preind)
     {
       inst.error = _("cannot combine index with option");
       return PARSE_OPERAND_FAIL;
     }
   *str = p;
   return PARSE_OPERAND_SUCCESS;
 }
      else
 {
   inst.operands[i].postind = 1;
   inst.operands[i].writeback = 1;

   if (inst.operands[i].preind)
     {
       inst.error = _("cannot combine pre- and post-indexing");
       return PARSE_OPERAND_FAIL;
     }

   if (*p == '+') p++;
   else if (*p == '-') p++, inst.operands[i].negative = 1;

   if ((reg = arm_reg_parse (&p, REG_TYPE_RN)) != FAIL)
     {


              if (inst.operands[i].immisalign)
         inst.operands[i].imm |= reg;
              else
                inst.operands[i].imm = reg;
       inst.operands[i].immisreg = 1;

       if (skip_past_comma (&p) == SUCCESS)
  if (parse_shift (&p, i, SHIFT_IMMEDIATE) == FAIL)
    return PARSE_OPERAND_FAIL;
     }
   else
     {
       if (inst.operands[i].negative)
  {
    inst.operands[i].negative = 0;
    p--;
  }
       if (my_get_expression (&inst.reloc.exp, &p, GE_IMM_PREFIX))
  return PARSE_OPERAND_FAIL;
     }
 }
    }



  if (inst.operands[i].preind == 0 && inst.operands[i].postind == 0)
    {
      inst.operands[i].preind = 1;
      inst.reloc.exp.X_op = O_constant;
      inst.reloc.exp.X_add_number = 0;
    }
  *str = p;
  return PARSE_OPERAND_SUCCESS;
}

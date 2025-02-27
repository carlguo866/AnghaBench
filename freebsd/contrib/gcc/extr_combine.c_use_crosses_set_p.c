
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
struct TYPE_2__ {scalar_t__ last_set; } ;


 unsigned int FIRST_PSEUDO_REGISTER ;
 int GET_CODE (int ) ;
 size_t GET_MODE (int ) ;
 char* GET_RTX_FORMAT (int) ;
 int GET_RTX_LENGTH (int) ;
 int INSN_CUID (scalar_t__) ;
 int MEM ;
 scalar_t__ PUSH_ARGS ;
 int REG ;
 unsigned int REGNO (int ) ;
 unsigned int STACK_POINTER_REGNUM ;
 int XEXP (int ,int) ;
 int XVECEXP (int ,int,int) ;
 int XVECLEN (int ,int) ;
 int** hard_regno_nregs ;
 int mem_last_set ;
 TYPE_1__* reg_stat ;

__attribute__((used)) static int
use_crosses_set_p (rtx x, int from_cuid)
{
  const char *fmt;
  int i;
  enum rtx_code code = GET_CODE (x);

  if (code == REG)
    {
      unsigned int regno = REGNO (x);
      unsigned endreg = regno + (regno < FIRST_PSEUDO_REGISTER
     ? hard_regno_nregs[regno][GET_MODE (x)] : 1);







      for (; regno < endreg; regno++)
 if (reg_stat[regno].last_set
     && INSN_CUID (reg_stat[regno].last_set) > from_cuid)
   return 1;
      return 0;
    }

  if (code == MEM && mem_last_set > from_cuid)
    return 1;

  fmt = GET_RTX_FORMAT (code);

  for (i = GET_RTX_LENGTH (code) - 1; i >= 0; i--)
    {
      if (fmt[i] == 'E')
 {
   int j;
   for (j = XVECLEN (x, i) - 1; j >= 0; j--)
     if (use_crosses_set_p (XVECEXP (x, i, j), from_cuid))
       return 1;
 }
      else if (fmt[i] == 'e'
        && use_crosses_set_p (XEXP (x, i), from_cuid))
 return 1;
    }
  return 0;
}

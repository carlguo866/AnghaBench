
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;


 scalar_t__ COND_EXEC ;
 scalar_t__ COND_EXEC_TEST (scalar_t__) ;
 scalar_t__ GET_CODE (scalar_t__) ;
 int GET_MODE (scalar_t__) ;
 scalar_t__ PATTERN (scalar_t__) ;
 scalar_t__ SET_SRC (int ) ;
 int UNKNOWN ;
 scalar_t__ XEXP (scalar_t__,int) ;
 int any_condjump_p (scalar_t__) ;
 scalar_t__ gen_rtx_fmt_ee (int,int ,scalar_t__,scalar_t__) ;
 int onlyjump_p (scalar_t__) ;
 scalar_t__ pc_rtx ;
 int pc_set (scalar_t__) ;
 int reversed_comparison_code (scalar_t__,scalar_t__) ;

__attribute__((used)) static rtx
sched_get_condition (rtx insn)
{
  rtx pat = PATTERN (insn);
  rtx src;

  if (pat == 0)
    return 0;

  if (GET_CODE (pat) == COND_EXEC)
    return COND_EXEC_TEST (pat);

  if (!any_condjump_p (insn) || !onlyjump_p (insn))
    return 0;

  src = SET_SRC (pc_set (insn));

  if (XEXP (src, 2) == pc_rtx)
    return XEXP (src, 0);
  else if (XEXP (src, 1) == pc_rtx)
    {
      rtx cond = XEXP (src, 0);
      enum rtx_code revcode = reversed_comparison_code (cond, insn);

      if (revcode == UNKNOWN)
 return 0;
      return gen_rtx_fmt_ee (revcode, GET_MODE (cond), XEXP (cond, 0),
        XEXP (cond, 1));
    }

  return 0;
}

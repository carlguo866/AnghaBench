
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ COND_EXEC ;
 int COND_EXEC_CODE (int ) ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ PARALLEL ;
 int PATTERN (int ) ;
 scalar_t__ REG ;
 int XEXP (int ,int) ;
 int XVECEXP (int ,int ,int ) ;
 int reg_overlap_mentioned_p (int ,int ) ;

int
arm_no_early_alu_shift_value_dep (rtx producer, rtx consumer)
{
  rtx value = PATTERN (producer);
  rtx op = PATTERN (consumer);
  rtx early_op;

  if (GET_CODE (value) == COND_EXEC)
    value = COND_EXEC_CODE (value);
  if (GET_CODE (value) == PARALLEL)
    value = XVECEXP (value, 0, 0);
  value = XEXP (value, 0);
  if (GET_CODE (op) == COND_EXEC)
    op = COND_EXEC_CODE (op);
  if (GET_CODE (op) == PARALLEL)
    op = XVECEXP (op, 0, 0);
  op = XEXP (op, 1);

  early_op = XEXP (op, 0);




  if (GET_CODE (early_op) != REG)
    early_op = XEXP (early_op, 0);

  return !reg_overlap_mentioned_p (value, early_op);
}

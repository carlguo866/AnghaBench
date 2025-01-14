
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ GET_CODE (scalar_t__) ;
 int GET_MODE (scalar_t__) ;
 int MEM_P (scalar_t__) ;
 scalar_t__ STACK_POP_CODE ;
 int VOIDmode ;
 scalar_t__ XEXP (scalar_t__,int ) ;
 scalar_t__ stack_pointer_rtx ;

int
pop_operand (rtx op, enum machine_mode mode)
{
  if (!MEM_P (op))
    return 0;

  if (mode != VOIDmode && GET_MODE (op) != mode)
    return 0;

  op = XEXP (op, 0);

  if (GET_CODE (op) != STACK_POP_CODE)
    return 0;

  return XEXP (op, 0) == stack_pointer_rtx;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ CONST0_RTX (int ) ;
 int GET_MODE (scalar_t__) ;
 scalar_t__ GET_MODE_CLASS (int ) ;
 scalar_t__ MODE_FLOAT ;

int
s390_float_const_zero_p (rtx value)
{
  return (GET_MODE_CLASS (GET_MODE (value)) == MODE_FLOAT
   && value == CONST0_RTX (GET_MODE (value)));
}

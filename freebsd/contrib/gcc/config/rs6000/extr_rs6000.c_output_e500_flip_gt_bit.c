
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int CR0_REGNO ;
 scalar_t__ CR_REGNO_P (int) ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ REG ;
 int REGNO (int ) ;
 int gcc_assert (int) ;
 int sprintf (char*,char*,int,int) ;

char *
output_e500_flip_gt_bit (rtx dst, rtx src)
{
  static char string[64];
  int a, b;

  gcc_assert (GET_CODE (dst) == REG && CR_REGNO_P (REGNO (dst))
       && GET_CODE (src) == REG && CR_REGNO_P (REGNO (src)));


  a = 4 * (REGNO (dst) - CR0_REGNO) + 1;
  b = 4 * (REGNO (src) - CR0_REGNO) + 1;

  sprintf (string, "crnot %d,%d", a, b);
  return string;
}

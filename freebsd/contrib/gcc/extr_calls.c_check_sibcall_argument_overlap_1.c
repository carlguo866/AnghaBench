
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef scalar_t__ RTX_CODE ;


 scalar_t__ GET_CODE (scalar_t__) ;
 int GET_MODE (scalar_t__) ;
 int GET_MODE_SIZE (int ) ;
 char* GET_RTX_FORMAT (scalar_t__) ;
 int GET_RTX_LENGTH (scalar_t__) ;
 scalar_t__ MEM ;
 scalar_t__ NULL_RTX ;
 scalar_t__ XEXP (scalar_t__,int) ;
 scalar_t__ XVECEXP (scalar_t__,int,int) ;
 int XVECLEN (scalar_t__,int) ;
 int mem_overlaps_already_clobbered_arg_p (scalar_t__,int ) ;

__attribute__((used)) static int
check_sibcall_argument_overlap_1 (rtx x)
{
  RTX_CODE code;
  int i, j;
  const char *fmt;

  if (x == NULL_RTX)
    return 0;

  code = GET_CODE (x);

  if (code == MEM)
    return mem_overlaps_already_clobbered_arg_p (XEXP (x, 0),
       GET_MODE_SIZE (GET_MODE (x)));


  fmt = GET_RTX_FORMAT (code);
  for (i = 0; i < GET_RTX_LENGTH (code); i++, fmt++)
    {
      if (*fmt == 'e')
 {
   if (check_sibcall_argument_overlap_1 (XEXP (x, i)))
     return 1;
 }
      else if (*fmt == 'E')
 {
   for (j = 0; j < XVECLEN (x, i); j++)
     if (check_sibcall_argument_overlap_1 (XVECEXP (x, i, j)))
       return 1;
 }
    }
  return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ GET_CODE (int) ;
 scalar_t__ IF_THEN_ELSE ;
 scalar_t__ LO_SUM ;
 scalar_t__ MEM ;
 scalar_t__ REG ;
 int SET_DEST (int) ;
 int SET_SRC (int) ;
 scalar_t__ SUBREG ;
 int SUBREG_REG (int) ;
 scalar_t__ UNSPEC ;
 int UNSPEC_LDA ;
 int UNSPEC_LDCCLR ;
 int UNSPEC_LDS ;
 int UNSPEC_LDSA ;
 int XEXP (int,int) ;
 int XINT (int,int) ;
 int XVECEXP (int,int ,int ) ;
 scalar_t__ XVECLEN (int,int ) ;
 scalar_t__ ZERO_EXTEND ;
 int gcc_assert (int) ;
 int ia64_single_set (int) ;
 int reg_mentioned_p (int,int) ;

int
ia64_ld_address_bypass_p (rtx producer, rtx consumer)
{
  rtx dest, src, reg, mem;

  gcc_assert (producer && consumer);
  dest = ia64_single_set (producer);
  gcc_assert (dest);
  reg = SET_DEST (dest);
  gcc_assert (reg);
  if (GET_CODE (reg) == SUBREG)
    reg = SUBREG_REG (reg);
  gcc_assert (GET_CODE (reg) == REG);

  src = ia64_single_set (consumer);
  gcc_assert (src);
  mem = SET_SRC (src);
  gcc_assert (mem);

  if (GET_CODE (mem) == UNSPEC && XVECLEN (mem, 0) > 0)
    mem = XVECEXP (mem, 0, 0);
  else if (GET_CODE (mem) == IF_THEN_ELSE)

    {
      gcc_assert (XINT (XEXP (XEXP (mem, 0), 0), 1) == UNSPEC_LDCCLR);
      mem = XEXP (mem, 1);
    }

  while (GET_CODE (mem) == SUBREG || GET_CODE (mem) == ZERO_EXTEND)
    mem = XEXP (mem, 0);

  if (GET_CODE (mem) == UNSPEC)
    {
      int c = XINT (mem, 1);

      gcc_assert (c == UNSPEC_LDA || c == UNSPEC_LDS || c == UNSPEC_LDSA);
      mem = XVECEXP (mem, 0, 0);
    }


  gcc_assert (GET_CODE (mem) == LO_SUM || GET_CODE (mem) == MEM);

  return reg_mentioned_p (reg, mem);
}

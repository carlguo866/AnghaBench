
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 unsigned int ARG_POINTER_REGNUM ;
 int ARM_NUM_REGS (int) ;
 unsigned int CC_REGNUM ;
 int DFmode ;
 int DImode ;
 int FALSE ;
 unsigned int FIRST_FPA_REGNUM ;
 unsigned int FIRST_VFP_REGNUM ;
 unsigned int FRAME_POINTER_REGNUM ;
 scalar_t__ GET_MODE_CLASS (int) ;
 int GET_MODE_SIZE (int) ;
 scalar_t__ IS_CIRRUS_REGNUM (unsigned int) ;
 scalar_t__ IS_IWMMXT_GR_REGNUM (unsigned int) ;
 scalar_t__ IS_IWMMXT_REGNUM (unsigned int) ;
 scalar_t__ IS_VFP_REGNUM (unsigned int) ;
 unsigned int LAST_ARM_REGNUM ;
 unsigned int LAST_FPA_REGNUM ;
 unsigned int LAST_LO_REGNUM ;
 scalar_t__ MODE_CC ;
 scalar_t__ MODE_FLOAT ;
 scalar_t__ MODE_INT ;
 int SFmode ;
 int SImode ;
 scalar_t__ TARGET_FPA ;
 scalar_t__ TARGET_HARD_FLOAT ;
 scalar_t__ TARGET_LDRD ;
 scalar_t__ TARGET_MAVERICK ;
 scalar_t__ TARGET_REALLY_IWMMXT ;
 scalar_t__ TARGET_THUMB ;
 scalar_t__ TARGET_VFP ;
 int TRUE ;
 int VALID_IWMMXT_REG_MODE (int) ;
 unsigned int VFPCC_REGNUM ;

int
arm_hard_regno_mode_ok (unsigned int regno, enum machine_mode mode)
{
  if (GET_MODE_CLASS (mode) == MODE_CC)
    return (regno == CC_REGNUM
     || (TARGET_HARD_FLOAT && TARGET_VFP
  && regno == VFPCC_REGNUM));

  if (TARGET_THUMB)





    return (ARM_NUM_REGS (mode) < 2) || (regno < LAST_LO_REGNUM);

  if (TARGET_HARD_FLOAT && TARGET_MAVERICK
      && IS_CIRRUS_REGNUM (regno))





    return (GET_MODE_CLASS (mode) == MODE_FLOAT) || (mode == DImode);

  if (TARGET_HARD_FLOAT && TARGET_VFP
      && IS_VFP_REGNUM (regno))
    {
      if (mode == SFmode || mode == SImode)
 return TRUE;


      if (mode == DFmode)
 return ((regno - FIRST_VFP_REGNUM) & 1) == 0;
      return FALSE;
    }

  if (TARGET_REALLY_IWMMXT)
    {
      if (IS_IWMMXT_GR_REGNUM (regno))
 return mode == SImode;

      if (IS_IWMMXT_REGNUM (regno))
 return VALID_IWMMXT_REG_MODE (mode);
    }




  if (regno <= LAST_ARM_REGNUM)
    return !(TARGET_LDRD && GET_MODE_SIZE (mode) > 4 && (regno & 1) != 0);

  if (regno == FRAME_POINTER_REGNUM
      || regno == ARG_POINTER_REGNUM)

    return GET_MODE_CLASS (mode) == MODE_INT;



  return (TARGET_HARD_FLOAT && TARGET_FPA
   && GET_MODE_CLASS (mode) == MODE_FLOAT
   && regno >= FIRST_FPA_REGNUM
   && regno <= LAST_FPA_REGNUM);
}

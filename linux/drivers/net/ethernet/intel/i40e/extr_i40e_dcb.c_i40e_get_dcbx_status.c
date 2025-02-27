
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct i40e_hw {int dummy; } ;
typedef int i40e_status ;


 int I40E_ERR_PARAM ;
 int I40E_PRTDCB_GENS ;
 int I40E_PRTDCB_GENS_DCBX_STATUS_MASK ;
 int I40E_PRTDCB_GENS_DCBX_STATUS_SHIFT ;
 int rd32 (struct i40e_hw*,int ) ;

i40e_status i40e_get_dcbx_status(struct i40e_hw *hw, u16 *status)
{
 u32 reg;

 if (!status)
  return I40E_ERR_PARAM;

 reg = rd32(hw, I40E_PRTDCB_GENS);
 *status = (u16)((reg & I40E_PRTDCB_GENS_DCBX_STATUS_MASK) >>
   I40E_PRTDCB_GENS_DCBX_STATUS_SHIFT);

 return 0;
}

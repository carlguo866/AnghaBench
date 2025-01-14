
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i40e_hw {scalar_t__ revision_id; } ;


 int I40E_GLLAN_RCTL_0 ;
 int I40E_GLLAN_RCTL_0_PXE_MODE_MASK ;
 int i40e_aq_clear_pxe_mode (struct i40e_hw*,int *) ;
 scalar_t__ i40e_check_asq_alive (struct i40e_hw*) ;
 int rd32 (struct i40e_hw*,int ) ;
 int wr32 (struct i40e_hw*,int ,int) ;

void i40e_clear_pxe_mode(struct i40e_hw *hw)
{
 u32 reg;

 if (i40e_check_asq_alive(hw))
  i40e_aq_clear_pxe_mode(hw, ((void*)0));


 reg = rd32(hw, I40E_GLLAN_RCTL_0);

 if (hw->revision_id == 0) {

  wr32(hw, I40E_GLLAN_RCTL_0, (reg & (~I40E_GLLAN_RCTL_0_PXE_MODE_MASK)));
 } else {
  wr32(hw, I40E_GLLAN_RCTL_0, (reg | I40E_GLLAN_RCTL_0_PXE_MODE_MASK));
 }
}

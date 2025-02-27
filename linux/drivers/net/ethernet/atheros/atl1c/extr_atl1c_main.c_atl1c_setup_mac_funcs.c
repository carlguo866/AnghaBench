
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct atl1c_hw {int ctrl_flags; scalar_t__ nic_type; int link_cap_flags; } ;


 int ATL1C_ASPM_CTRL_MON ;
 int ATL1C_ASPM_L0S_SUPPORT ;
 int ATL1C_ASPM_L1_SUPPORT ;
 int ATL1C_INTR_MODRT_ENABLE ;
 int ATL1C_LINK_CAP_1000M ;
 int ATL1C_TXQ_MODE_ENHANCE ;
 int AT_READ_REG (struct atl1c_hw*,int ,int *) ;
 int REG_LINK_CTRL ;
 scalar_t__ athr_l1c ;
 scalar_t__ athr_l1d ;
 scalar_t__ athr_l1d_2 ;
 int atl1c_set_mac_type (struct atl1c_hw*) ;

__attribute__((used)) static int atl1c_setup_mac_funcs(struct atl1c_hw *hw)
{
 u32 link_ctrl_data;

 atl1c_set_mac_type(hw);
 AT_READ_REG(hw, REG_LINK_CTRL, &link_ctrl_data);

 hw->ctrl_flags = ATL1C_INTR_MODRT_ENABLE |
    ATL1C_TXQ_MODE_ENHANCE;
 hw->ctrl_flags |= ATL1C_ASPM_L0S_SUPPORT |
     ATL1C_ASPM_L1_SUPPORT;
 hw->ctrl_flags |= ATL1C_ASPM_CTRL_MON;

 if (hw->nic_type == athr_l1c ||
     hw->nic_type == athr_l1d ||
     hw->nic_type == athr_l1d_2)
  hw->link_cap_flags |= ATL1C_LINK_CAP_1000M;
 return 0;
}

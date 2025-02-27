
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_hw {int dummy; } ;
struct e1000_adapter {struct e1000_hw hw; } ;
typedef scalar_t__ s32 ;


 scalar_t__ e1000_init_mac_params_80003es2lan (struct e1000_hw*) ;
 scalar_t__ e1000_init_nvm_params_80003es2lan (struct e1000_hw*) ;
 scalar_t__ e1000_init_phy_params_80003es2lan (struct e1000_hw*) ;

__attribute__((used)) static s32 e1000_get_variants_80003es2lan(struct e1000_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 s32 rc;

 rc = e1000_init_mac_params_80003es2lan(hw);
 if (rc)
  return rc;

 rc = e1000_init_nvm_params_80003es2lan(hw);
 if (rc)
  return rc;

 rc = e1000_init_phy_params_80003es2lan(hw);
 if (rc)
  return rc;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {scalar_t__ (* write_reg ) (struct e1000_hw*,int,int) ;scalar_t__ (* read_reg ) (struct e1000_hw*,int,int*) ;scalar_t__ (* commit ) (struct e1000_hw*) ;} ;
struct e1000_phy_info {scalar_t__ type; int mdix; scalar_t__ id; scalar_t__ revision; TYPE_1__ ops; scalar_t__ disable_polarity_correction; } ;
struct e1000_hw {struct e1000_phy_info phy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ BME1000_E_PHY_ID_R2 ;
 int BME1000_PSCR_ENABLE_DOWNSHIFT ;
 int DEBUGFUNC (char*) ;
 int DEBUGOUT (char*) ;
 scalar_t__ E1000_REVISION_2 ;
 scalar_t__ E1000_REVISION_4 ;
 scalar_t__ E1000_SUCCESS ;
 int I82578_EPSCR_DOWNSHIFT_COUNTER_MASK ;
 int I82578_EPSCR_DOWNSHIFT_ENABLE ;
 int M88E1000_EPSCR_MASTER_DOWNSHIFT_1X ;
 int M88E1000_EPSCR_MASTER_DOWNSHIFT_MASK ;
 int M88E1000_EPSCR_SLAVE_DOWNSHIFT_1X ;
 int M88E1000_EPSCR_SLAVE_DOWNSHIFT_MASK ;
 int M88E1000_EPSCR_TX_CLK_25 ;
 int M88E1000_EXT_PHY_SPEC_CTRL ;
 int M88E1000_PHY_SPEC_CTRL ;
 int M88E1000_PSCR_ASSERT_CRS_ON_TX ;
 int M88E1000_PSCR_AUTO_X_1000T ;
 int M88E1000_PSCR_AUTO_X_MODE ;
 int M88E1000_PSCR_MDIX_MANUAL_MODE ;
 int M88E1000_PSCR_MDI_MANUAL_MODE ;
 int M88E1000_PSCR_POLARITY_REVERSAL ;
 scalar_t__ M88E1111_I_PHY_ID ;
 int M88EC018_EPSCR_DOWNSHIFT_COUNTER_5X ;
 int M88EC018_EPSCR_DOWNSHIFT_COUNTER_MASK ;
 scalar_t__ e1000_phy_82578 ;
 scalar_t__ e1000_phy_bm ;
 scalar_t__ e1000_phy_m88 ;
 scalar_t__ stub1 (struct e1000_hw*,int,int*) ;
 scalar_t__ stub10 (struct e1000_hw*,int,int*) ;
 scalar_t__ stub11 (struct e1000_hw*,int,int) ;
 scalar_t__ stub2 (struct e1000_hw*,int,int) ;
 scalar_t__ stub3 (struct e1000_hw*) ;
 scalar_t__ stub4 (struct e1000_hw*,int,int) ;
 scalar_t__ stub5 (struct e1000_hw*,int,int*) ;
 scalar_t__ stub6 (struct e1000_hw*,int,int) ;
 scalar_t__ stub7 (struct e1000_hw*,int,int) ;
 scalar_t__ stub8 (struct e1000_hw*,int,int) ;
 scalar_t__ stub9 (struct e1000_hw*) ;

s32 e1000_copper_link_setup_m88(struct e1000_hw *hw)
{
 struct e1000_phy_info *phy = &hw->phy;
 s32 ret_val;
 u16 phy_data;

 DEBUGFUNC("e1000_copper_link_setup_m88");



 ret_val = phy->ops.read_reg(hw, M88E1000_PHY_SPEC_CTRL, &phy_data);
 if (ret_val)
  return ret_val;


 if (phy->type != e1000_phy_bm)
  phy_data |= M88E1000_PSCR_ASSERT_CRS_ON_TX;
 phy_data &= ~M88E1000_PSCR_AUTO_X_MODE;

 switch (phy->mdix) {
 case 1:
  phy_data |= M88E1000_PSCR_MDI_MANUAL_MODE;
  break;
 case 2:
  phy_data |= M88E1000_PSCR_MDIX_MANUAL_MODE;
  break;
 case 3:
  phy_data |= M88E1000_PSCR_AUTO_X_1000T;
  break;
 case 0:
 default:
  phy_data |= M88E1000_PSCR_AUTO_X_MODE;
  break;
 }







 phy_data &= ~M88E1000_PSCR_POLARITY_REVERSAL;
 if (phy->disable_polarity_correction)
  phy_data |= M88E1000_PSCR_POLARITY_REVERSAL;


 if (phy->type == e1000_phy_bm) {

  if (phy->id == BME1000_E_PHY_ID_R2) {
   phy_data &= ~BME1000_PSCR_ENABLE_DOWNSHIFT;
   ret_val = phy->ops.write_reg(hw, M88E1000_PHY_SPEC_CTRL,
           phy_data);
   if (ret_val)
    return ret_val;

   ret_val = phy->ops.commit(hw);
   if (ret_val) {
    DEBUGOUT("Error committing the PHY changes\n");
    return ret_val;
   }
  }

  phy_data |= BME1000_PSCR_ENABLE_DOWNSHIFT;
 }

 ret_val = phy->ops.write_reg(hw, M88E1000_PHY_SPEC_CTRL, phy_data);
 if (ret_val)
  return ret_val;

 if ((phy->type == e1000_phy_m88) &&
     (phy->revision < E1000_REVISION_4) &&
     (phy->id != BME1000_E_PHY_ID_R2)) {



  ret_val = phy->ops.read_reg(hw, M88E1000_EXT_PHY_SPEC_CTRL,
         &phy_data);
  if (ret_val)
   return ret_val;

  phy_data |= M88E1000_EPSCR_TX_CLK_25;

  if ((phy->revision == E1000_REVISION_2) &&
      (phy->id == M88E1111_I_PHY_ID)) {

   phy_data &= ~M88EC018_EPSCR_DOWNSHIFT_COUNTER_MASK;
   phy_data |= M88EC018_EPSCR_DOWNSHIFT_COUNTER_5X;
  } else {

   phy_data &= ~(M88E1000_EPSCR_MASTER_DOWNSHIFT_MASK |
         M88E1000_EPSCR_SLAVE_DOWNSHIFT_MASK);
   phy_data |= (M88E1000_EPSCR_MASTER_DOWNSHIFT_1X |
         M88E1000_EPSCR_SLAVE_DOWNSHIFT_1X);
  }
  ret_val = phy->ops.write_reg(hw, M88E1000_EXT_PHY_SPEC_CTRL,
          phy_data);
  if (ret_val)
   return ret_val;
 }

 if ((phy->type == e1000_phy_bm) && (phy->id == BME1000_E_PHY_ID_R2)) {

  ret_val = phy->ops.write_reg(hw, 29, 0x0003);
  if (ret_val)
   return ret_val;


  ret_val = phy->ops.write_reg(hw, 30, 0x0000);
  if (ret_val)
   return ret_val;
 }


 ret_val = phy->ops.commit(hw);
 if (ret_val) {
  DEBUGOUT("Error committing the PHY changes\n");
  return ret_val;
 }

 if (phy->type == e1000_phy_82578) {
  ret_val = phy->ops.read_reg(hw, M88E1000_EXT_PHY_SPEC_CTRL,
         &phy_data);
  if (ret_val)
   return ret_val;


  phy_data |= I82578_EPSCR_DOWNSHIFT_ENABLE;
  phy_data &= ~I82578_EPSCR_DOWNSHIFT_COUNTER_MASK;
  ret_val = phy->ops.write_reg(hw, M88E1000_EXT_PHY_SPEC_CTRL,
          phy_data);
  if (ret_val)
   return ret_val;
 }

 return E1000_SUCCESS;
}

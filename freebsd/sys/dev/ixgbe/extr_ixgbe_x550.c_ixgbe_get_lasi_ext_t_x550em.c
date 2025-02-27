
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct TYPE_3__ {scalar_t__ (* read_reg ) (struct ixgbe_hw*,int ,int ,int*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ phy; } ;
typedef scalar_t__ s32 ;


 int FALSE ;
 scalar_t__ IXGBE_ERR_OVERTEMP ;
 int IXGBE_MDIO_AUTO_NEG_DEV_TYPE ;
 int IXGBE_MDIO_AUTO_NEG_VENDOR_TX_ALARM2 ;
 int IXGBE_MDIO_AUTO_NEG_VEN_LSC ;
 int IXGBE_MDIO_GLOBAL_ALARM_1 ;
 int IXGBE_MDIO_GLOBAL_ALARM_1_INT ;
 int IXGBE_MDIO_GLOBAL_ALM_1_DEV_FAULT ;
 int IXGBE_MDIO_GLOBAL_ALM_1_HI_TMP_FAIL ;
 int IXGBE_MDIO_GLOBAL_AN_VEN_ALM_INT_EN ;
 int IXGBE_MDIO_GLOBAL_CHIP_STD_INT_FLAG ;
 int IXGBE_MDIO_GLOBAL_FAULT_MSG ;
 int IXGBE_MDIO_GLOBAL_FAULT_MSG_HI_TMP ;
 int IXGBE_MDIO_GLOBAL_INT_CHIP_VEN_FLAG ;
 int IXGBE_MDIO_GLOBAL_STD_ALM2_INT ;
 int IXGBE_MDIO_GLOBAL_VEN_ALM_INT_EN ;
 int IXGBE_MDIO_VENDOR_SPECIFIC_1_DEV_TYPE ;
 scalar_t__ IXGBE_SUCCESS ;
 int TRUE ;
 int ixgbe_set_copper_phy_power (struct ixgbe_hw*,int) ;
 scalar_t__ stub1 (struct ixgbe_hw*,int ,int ,int*) ;
 scalar_t__ stub2 (struct ixgbe_hw*,int ,int ,int*) ;
 scalar_t__ stub3 (struct ixgbe_hw*,int ,int ,int*) ;
 scalar_t__ stub4 (struct ixgbe_hw*,int ,int ,int*) ;
 scalar_t__ stub5 (struct ixgbe_hw*,int ,int ,int*) ;
 scalar_t__ stub6 (struct ixgbe_hw*,int ,int ,int*) ;

__attribute__((used)) static s32 ixgbe_get_lasi_ext_t_x550em(struct ixgbe_hw *hw, bool *lsc)
{
 u32 status;
 u16 reg;

 *lsc = FALSE;


 status = hw->phy.ops.read_reg(hw, IXGBE_MDIO_GLOBAL_CHIP_STD_INT_FLAG,
          IXGBE_MDIO_VENDOR_SPECIFIC_1_DEV_TYPE,
          &reg);

 if (status != IXGBE_SUCCESS ||
     !(reg & IXGBE_MDIO_GLOBAL_VEN_ALM_INT_EN))
  return status;


 status = hw->phy.ops.read_reg(hw, IXGBE_MDIO_GLOBAL_INT_CHIP_VEN_FLAG,
          IXGBE_MDIO_VENDOR_SPECIFIC_1_DEV_TYPE,
          &reg);

 if (status != IXGBE_SUCCESS ||
     !(reg & (IXGBE_MDIO_GLOBAL_AN_VEN_ALM_INT_EN |
     IXGBE_MDIO_GLOBAL_ALARM_1_INT)))
  return status;


 status = hw->phy.ops.read_reg(hw, IXGBE_MDIO_GLOBAL_ALARM_1,
          IXGBE_MDIO_VENDOR_SPECIFIC_1_DEV_TYPE,
          &reg);

 if (status != IXGBE_SUCCESS)
  return status;


 if (reg & IXGBE_MDIO_GLOBAL_ALM_1_HI_TMP_FAIL) {

  ixgbe_set_copper_phy_power(hw, FALSE);
  return IXGBE_ERR_OVERTEMP;
 } else if (reg & IXGBE_MDIO_GLOBAL_ALM_1_DEV_FAULT) {

  status = hw->phy.ops.read_reg(hw, IXGBE_MDIO_GLOBAL_FAULT_MSG,
       IXGBE_MDIO_VENDOR_SPECIFIC_1_DEV_TYPE,
       &reg);

  if (status != IXGBE_SUCCESS)
   return status;


  if (reg == IXGBE_MDIO_GLOBAL_FAULT_MSG_HI_TMP) {

   ixgbe_set_copper_phy_power(hw, FALSE);
   return IXGBE_ERR_OVERTEMP;
  }
 }


 status = hw->phy.ops.read_reg(hw, IXGBE_MDIO_GLOBAL_CHIP_STD_INT_FLAG,
          IXGBE_MDIO_AUTO_NEG_DEV_TYPE, &reg);

 if (status != IXGBE_SUCCESS ||
     !(reg & IXGBE_MDIO_GLOBAL_STD_ALM2_INT))
  return status;


 status = hw->phy.ops.read_reg(hw, IXGBE_MDIO_AUTO_NEG_VENDOR_TX_ALARM2,
          IXGBE_MDIO_AUTO_NEG_DEV_TYPE, &reg);

 if (status != IXGBE_SUCCESS)
  return status;


 if (reg & IXGBE_MDIO_AUTO_NEG_VEN_LSC)
  *lsc = TRUE;

 return IXGBE_SUCCESS;
}

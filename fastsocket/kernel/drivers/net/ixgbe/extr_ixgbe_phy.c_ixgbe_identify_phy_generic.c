
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef int u16 ;
struct TYPE_6__ {scalar_t__ prtad; } ;
struct TYPE_4__ {int (* read_reg ) (struct ixgbe_hw*,int ,int ,int*) ;} ;
struct TYPE_5__ {scalar_t__ type; TYPE_3__ mdio; TYPE_1__ ops; int id; } ;
struct ixgbe_hw {TYPE_2__ phy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ IXGBE_ERR_PHY_ADDR_INVALID ;
 scalar_t__ IXGBE_MAX_PHY_ADDR ;
 int MDIO_MMD_PMAPMD ;
 int MDIO_PMA_EXTABLE ;
 int MDIO_PMA_EXTABLE_1000BT ;
 int MDIO_PMA_EXTABLE_10GBT ;
 int ixgbe_get_phy_id (struct ixgbe_hw*) ;
 scalar_t__ ixgbe_get_phy_type_from_id (int ) ;
 scalar_t__ ixgbe_phy_cu_unknown ;
 scalar_t__ ixgbe_phy_generic ;
 scalar_t__ ixgbe_phy_unknown ;
 scalar_t__ mdio45_probe (TYPE_3__*,scalar_t__) ;
 int stub1 (struct ixgbe_hw*,int ,int ,int*) ;

s32 ixgbe_identify_phy_generic(struct ixgbe_hw *hw)
{
 s32 status = IXGBE_ERR_PHY_ADDR_INVALID;
 u32 phy_addr;
 u16 ext_ability = 0;

 if (hw->phy.type == ixgbe_phy_unknown) {
  for (phy_addr = 0; phy_addr < IXGBE_MAX_PHY_ADDR; phy_addr++) {
   hw->phy.mdio.prtad = phy_addr;
   if (mdio45_probe(&hw->phy.mdio, phy_addr) == 0) {
    ixgbe_get_phy_id(hw);
    hw->phy.type =
            ixgbe_get_phy_type_from_id(hw->phy.id);

    if (hw->phy.type == ixgbe_phy_unknown) {
     hw->phy.ops.read_reg(hw,
            MDIO_PMA_EXTABLE,
            MDIO_MMD_PMAPMD,
            &ext_ability);
     if (ext_ability &
         (MDIO_PMA_EXTABLE_10GBT |
          MDIO_PMA_EXTABLE_1000BT))
      hw->phy.type =
        ixgbe_phy_cu_unknown;
     else
      hw->phy.type =
        ixgbe_phy_generic;
    }

    status = 0;
    break;
   }
  }

  if (status != 0)
   hw->phy.mdio.prtad = 0;
 } else {
  status = 0;
 }

 return status;
}

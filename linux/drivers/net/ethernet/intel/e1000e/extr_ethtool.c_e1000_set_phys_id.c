
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int parent; } ;
struct net_device {TYPE_2__ dev; } ;
struct TYPE_7__ {int (* led_off ) (struct e1000_hw*) ;int (* led_on ) (struct e1000_hw*) ;int (* cleanup_led ) (struct e1000_hw*) ;int (* blink_led ) (struct e1000_hw*) ;} ;
struct TYPE_8__ {TYPE_3__ ops; } ;
struct TYPE_5__ {int type; } ;
struct e1000_hw {TYPE_4__ mac; TYPE_1__ phy; } ;
struct e1000_adapter {struct e1000_hw hw; } ;
typedef enum ethtool_phys_id_state { ____Placeholder_ethtool_phys_id_state } ethtool_phys_id_state ;






 int IFE_PHY_SPECIAL_CONTROL_LED ;
 int e1000_phy_ife ;
 int e1e_wphy (struct e1000_hw*,int ,int ) ;
 struct e1000_adapter* netdev_priv (struct net_device*) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_sync (int ) ;
 int stub1 (struct e1000_hw*) ;
 int stub2 (struct e1000_hw*) ;
 int stub3 (struct e1000_hw*) ;
 int stub4 (struct e1000_hw*) ;
 int stub5 (struct e1000_hw*) ;

__attribute__((used)) static int e1000_set_phys_id(struct net_device *netdev,
        enum ethtool_phys_id_state state)
{
 struct e1000_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;

 switch (state) {
 case 131:
  pm_runtime_get_sync(netdev->dev.parent);

  if (!hw->mac.ops.blink_led)
   return 2;

  hw->mac.ops.blink_led(hw);
  break;

 case 130:
  if (hw->phy.type == e1000_phy_ife)
   e1e_wphy(hw, IFE_PHY_SPECIAL_CONTROL_LED, 0);
  hw->mac.ops.led_off(hw);
  hw->mac.ops.cleanup_led(hw);
  pm_runtime_put_sync(netdev->dev.parent);
  break;

 case 128:
  hw->mac.ops.led_on(hw);
  break;

 case 129:
  hw->mac.ops.led_off(hw);
  break;
 }

 return 0;
}

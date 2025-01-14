
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct atl1c_hw {int dummy; } ;
struct atl1c_adapter {int mdio_lock; struct atl1c_hw hw; } ;


 struct atl1c_adapter* adapter ;
 int atl1c_restart_autoneg (struct atl1c_hw*) ;
 struct atl1c_adapter* from_timer (int ,struct timer_list*,int ) ;
 int phy_config_timer ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void atl1c_phy_config(struct timer_list *t)
{
 struct atl1c_adapter *adapter = from_timer(adapter, t,
         phy_config_timer);
 struct atl1c_hw *hw = &adapter->hw;
 unsigned long flags;

 spin_lock_irqsave(&adapter->mdio_lock, flags);
 atl1c_restart_autoneg(hw);
 spin_unlock_irqrestore(&adapter->mdio_lock, flags);
}

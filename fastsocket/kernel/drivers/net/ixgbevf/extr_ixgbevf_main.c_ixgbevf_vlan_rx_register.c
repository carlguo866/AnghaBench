
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct vlan_group {int dummy; } ;
struct net_device {int dummy; } ;
struct ixgbe_hw {int dummy; } ;
struct ixgbevf_adapter {int num_rx_queues; TYPE_1__* rx_ring; struct vlan_group* vlgrp; struct ixgbe_hw hw; } ;
struct TYPE_2__ {int reg_idx; } ;


 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_RXDCTL_VME ;
 int IXGBE_VFRXDCTL (int) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;
 struct ixgbevf_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ixgbevf_vlan_rx_register(struct net_device *netdev,
         struct vlan_group *grp)
{
 struct ixgbevf_adapter *adapter = netdev_priv(netdev);
 struct ixgbe_hw *hw = &adapter->hw;
 int i, j;
 u32 ctrl;

 adapter->vlgrp = grp;

 for (i = 0; i < adapter->num_rx_queues; i++) {
  j = adapter->rx_ring[i].reg_idx;
  ctrl = IXGBE_READ_REG(hw, IXGBE_VFRXDCTL(j));
  ctrl |= IXGBE_RXDCTL_VME;
  IXGBE_WRITE_REG(hw, IXGBE_VFRXDCTL(j), ctrl);
 }
}

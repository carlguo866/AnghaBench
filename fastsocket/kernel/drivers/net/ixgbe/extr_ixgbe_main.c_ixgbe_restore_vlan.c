
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct ixgbe_adapter {int netdev; scalar_t__ vlgrp; } ;


 scalar_t__ VLAN_GROUP_ARRAY_LEN ;
 int ixgbe_vlan_rx_add_vid (int ,scalar_t__) ;
 int ixgbe_vlan_rx_register (int ,scalar_t__) ;
 int vlan_group_get_device (scalar_t__,scalar_t__) ;

__attribute__((used)) static void ixgbe_restore_vlan(struct ixgbe_adapter *adapter)
{
 ixgbe_vlan_rx_register(adapter->netdev, adapter->vlgrp);

 if (adapter->vlgrp) {
  u16 vid;
  for (vid = 0; vid < VLAN_GROUP_ARRAY_LEN; vid++) {
   if (!vlan_group_get_device(adapter->vlgrp, vid))
    continue;
   ixgbe_vlan_rx_add_vid(adapter->netdev, vid);
  }
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct e1000_rx_ring {int dummy; } ;
struct e1000_adapter {int num_rx_queues; int (* alloc_rx_buf ) (struct e1000_adapter*,struct e1000_rx_ring*,int ) ;struct e1000_rx_ring* rx_ring; struct net_device* netdev; } ;


 int E1000_DESC_UNUSED (struct e1000_rx_ring*) ;
 int e1000_configure_rx (struct e1000_adapter*) ;
 int e1000_configure_tx (struct e1000_adapter*) ;
 int e1000_init_manageability (struct e1000_adapter*) ;
 int e1000_restore_vlan (struct e1000_adapter*) ;
 int e1000_set_rx_mode (struct net_device*) ;
 int e1000_setup_rctl (struct e1000_adapter*) ;
 int stub1 (struct e1000_adapter*,struct e1000_rx_ring*,int ) ;

__attribute__((used)) static void e1000_configure(struct e1000_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;
 int i;

 e1000_set_rx_mode(netdev);

 e1000_restore_vlan(adapter);
 e1000_init_manageability(adapter);

 e1000_configure_tx(adapter);
 e1000_setup_rctl(adapter);
 e1000_configure_rx(adapter);



 for (i = 0; i < adapter->num_rx_queues; i++) {
  struct e1000_rx_ring *ring = &adapter->rx_ring[i];
  adapter->alloc_rx_buf(adapter, ring,
                        E1000_DESC_UNUSED(ring));
 }
}

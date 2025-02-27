
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct ifnet {int if_flags; } ;
struct al_eth_adapter {struct ifnet* netdev; } ;


 scalar_t__ AL_ETH_MAC_TABLE_ALL_MULTICAST_IDX ;
 scalar_t__ AL_ETH_MAC_TABLE_UNICAST_IDX_BASE ;
 int AL_ETH_MAC_TABLE_UNICAST_MAX_COUNT ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int al_count_maddr ;
 int al_eth_mac_table_all_multicast_add (struct al_eth_adapter*,scalar_t__,int) ;
 int al_eth_mac_table_entry_clear (struct al_eth_adapter*,scalar_t__) ;
 int al_eth_mac_table_promiscuous_set (struct al_eth_adapter*,int) ;
 int al_program_addr ;
 int if_foreach_lladdr (struct ifnet*,int ,struct al_eth_adapter*) ;
 int if_foreach_llmaddr (struct ifnet*,int ,int *) ;
 int if_lladdr_count (struct ifnet*) ;

__attribute__((used)) static void
al_eth_set_rx_mode(struct al_eth_adapter *adapter)
{
 struct ifnet *ifp = adapter->netdev;
 int mc, uc;
 uint8_t i;


 mc = if_foreach_llmaddr(ifp, al_count_maddr, ((void*)0));
 uc = if_lladdr_count(ifp);

 if ((ifp->if_flags & IFF_PROMISC) != 0) {
  al_eth_mac_table_promiscuous_set(adapter, 1);
 } else {
  if ((ifp->if_flags & IFF_ALLMULTI) != 0) {

   al_eth_mac_table_all_multicast_add(adapter,
       AL_ETH_MAC_TABLE_ALL_MULTICAST_IDX, 1);
  } else {
   if (mc == 0) {
    al_eth_mac_table_entry_clear(adapter,
        AL_ETH_MAC_TABLE_ALL_MULTICAST_IDX);
   } else {
    al_eth_mac_table_all_multicast_add(adapter,
        AL_ETH_MAC_TABLE_ALL_MULTICAST_IDX, 1);
   }
  }
  if (uc != 0) {
   i = AL_ETH_MAC_TABLE_UNICAST_IDX_BASE + 1;
   if (uc > AL_ETH_MAC_TABLE_UNICAST_MAX_COUNT) {




    al_eth_mac_table_promiscuous_set(adapter, 1);
    return;
   }


   while (i < (AL_ETH_MAC_TABLE_UNICAST_IDX_BASE +
        AL_ETH_MAC_TABLE_UNICAST_MAX_COUNT)) {
    al_eth_mac_table_entry_clear(adapter, i);
    i++;
   }


   if_foreach_lladdr(ifp, al_program_addr, adapter);
  }
  al_eth_mac_table_promiscuous_set(adapter, 0);
 }
}

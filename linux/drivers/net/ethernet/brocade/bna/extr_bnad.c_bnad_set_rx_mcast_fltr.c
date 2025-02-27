
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int flags; } ;
struct bnad {TYPE_1__* rx_info; int cfg_flags; int bna; struct net_device* netdev; } ;
typedef enum bna_cb_status { ____Placeholder_bna_cb_status } bna_cb_status ;
struct TYPE_4__ {int num_mcmac; } ;
struct TYPE_3__ {int rx; } ;


 int BNAD_CF_ALLMULTI ;
 int BNA_CB_SUCCESS ;
 int ETH_ALEN ;
 int GFP_ATOMIC ;
 int IFF_ALLMULTI ;
 TYPE_2__* bna_attr (int *) ;
 int bna_rx_mcast_delall (int ) ;
 int bna_rx_mcast_listset (int ,int,int *) ;
 int * bnad_bcast_addr ;
 int bnad_netdev_mc_list_get (struct net_device*,int *) ;
 int ether_addr_copy (int *,int *) ;
 int * kcalloc (int,int ,int ) ;
 int kfree (int *) ;
 int netdev_mc_count (struct net_device*) ;
 scalar_t__ netdev_mc_empty (struct net_device*) ;

__attribute__((used)) static void
bnad_set_rx_mcast_fltr(struct bnad *bnad)
{
 struct net_device *netdev = bnad->netdev;
 int mc_count = netdev_mc_count(netdev);
 enum bna_cb_status ret;
 u8 *mac_list;

 if (netdev->flags & IFF_ALLMULTI)
  goto mode_allmulti;

 if (netdev_mc_empty(netdev))
  return;

 if (mc_count > bna_attr(&bnad->bna)->num_mcmac)
  goto mode_allmulti;

 mac_list = kcalloc(mc_count + 1, ETH_ALEN, GFP_ATOMIC);

 if (mac_list == ((void*)0))
  goto mode_allmulti;

 ether_addr_copy(&mac_list[0], &bnad_bcast_addr[0]);


 bnad_netdev_mc_list_get(netdev, mac_list);
 ret = bna_rx_mcast_listset(bnad->rx_info[0].rx, mc_count + 1, mac_list);
 kfree(mac_list);

 if (ret != BNA_CB_SUCCESS)
  goto mode_allmulti;

 return;

mode_allmulti:
 bnad->cfg_flags |= BNAD_CF_ALLMULTI;
 bna_rx_mcast_delall(bnad->rx_info[0].rx);
}

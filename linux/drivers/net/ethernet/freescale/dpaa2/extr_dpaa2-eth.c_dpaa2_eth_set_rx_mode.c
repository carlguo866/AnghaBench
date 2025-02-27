
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct net_device {int flags; } ;
struct fsl_mc_io {int dummy; } ;
struct TYPE_2__ {int mac_filter_entries; int options; } ;
struct dpaa2_eth_priv {struct fsl_mc_io* mc_io; int mc_token; TYPE_1__ dpni_attrs; } ;


 int DPNI_OPT_NO_MAC_FILTER ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int add_mc_hw_addr (struct net_device*,struct dpaa2_eth_priv*) ;
 int add_uc_hw_addr (struct net_device*,struct dpaa2_eth_priv*) ;
 int dpni_clear_mac_filters (struct fsl_mc_io*,int ,int ,int,int) ;
 int dpni_set_multicast_promisc (struct fsl_mc_io*,int ,int ,int) ;
 int dpni_set_unicast_promisc (struct fsl_mc_io*,int ,int ,int) ;
 int netdev_info (struct net_device*,char*,int,...) ;
 int netdev_mc_count (struct net_device*) ;
 struct dpaa2_eth_priv* netdev_priv (struct net_device*) ;
 int netdev_uc_count (struct net_device*) ;
 int netdev_warn (struct net_device*,char*,...) ;

__attribute__((used)) static void dpaa2_eth_set_rx_mode(struct net_device *net_dev)
{
 struct dpaa2_eth_priv *priv = netdev_priv(net_dev);
 int uc_count = netdev_uc_count(net_dev);
 int mc_count = netdev_mc_count(net_dev);
 u8 max_mac = priv->dpni_attrs.mac_filter_entries;
 u32 options = priv->dpni_attrs.options;
 u16 mc_token = priv->mc_token;
 struct fsl_mc_io *mc_io = priv->mc_io;
 int err;


 if (options & DPNI_OPT_NO_MAC_FILTER && max_mac != 0)
  netdev_info(net_dev,
       "mac_filter_entries=%d, DPNI_OPT_NO_MAC_FILTER option must be disabled\n",
       max_mac);


 if (uc_count > max_mac) {
  netdev_info(net_dev,
       "Unicast addr count reached %d, max allowed is %d; forcing promisc\n",
       uc_count, max_mac);
  goto force_promisc;
 }
 if (mc_count + uc_count > max_mac) {
  netdev_info(net_dev,
       "Unicast + multicast addr count reached %d, max allowed is %d; forcing promisc\n",
       uc_count + mc_count, max_mac);
  goto force_mc_promisc;
 }


 if (net_dev->flags & IFF_PROMISC)
  goto force_promisc;
 if (net_dev->flags & IFF_ALLMULTI) {







  err = dpni_set_unicast_promisc(mc_io, 0, mc_token, 1);
  if (err)
   netdev_warn(net_dev, "Can't set uc promisc\n");


  err = dpni_clear_mac_filters(mc_io, 0, mc_token, 1, 0);
  if (err)
   netdev_warn(net_dev, "Can't clear uc filters\n");
  add_uc_hw_addr(net_dev, priv);


  err = dpni_set_unicast_promisc(mc_io, 0, mc_token, 0);
  if (err)
   netdev_warn(net_dev, "Can't clear uc promisc\n");
  goto force_mc_promisc;
 }




 err = dpni_set_unicast_promisc(mc_io, 0, mc_token, 1);
 if (err)
  netdev_warn(net_dev, "Can't set uc promisc (%d)\n", err);
 err = dpni_set_multicast_promisc(mc_io, 0, mc_token, 1);
 if (err)
  netdev_warn(net_dev, "Can't set mc promisc (%d)\n", err);


 err = dpni_clear_mac_filters(mc_io, 0, mc_token, 1, 1);
 if (err)
  netdev_warn(net_dev, "Can't clear mac filters\n");
 add_mc_hw_addr(net_dev, priv);
 add_uc_hw_addr(net_dev, priv);




 err = dpni_set_unicast_promisc(mc_io, 0, mc_token, 0);
 if (err)
  netdev_warn(net_dev, "Can't clear ucast promisc\n");
 err = dpni_set_multicast_promisc(mc_io, 0, mc_token, 0);
 if (err)
  netdev_warn(net_dev, "Can't clear mcast promisc\n");

 return;

force_promisc:
 err = dpni_set_unicast_promisc(mc_io, 0, mc_token, 1);
 if (err)
  netdev_warn(net_dev, "Can't set ucast promisc\n");
force_mc_promisc:
 err = dpni_set_multicast_promisc(mc_io, 0, mc_token, 1);
 if (err)
  netdev_warn(net_dev, "Can't set mcast promisc\n");
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int hw_features; } ;
struct fe_soc_data {int dummy; } ;
struct fe_priv {int flags; } ;


 int FE_FLAG_HAS_SWITCH ;
 int FE_FLAG_JUMBO_FRAME ;
 int FE_FLAG_NAPI_WEIGHT ;
 int FE_FLAG_PADDING_64B ;
 int FE_FLAG_RX_2B_OFFSET ;
 int FE_FLAG_RX_SG_DMA ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int NETIF_F_HW_VLAN_CTAG_TX ;
 int NETIF_F_IPV6_CSUM ;
 int NETIF_F_IP_CSUM ;
 int NETIF_F_RXCSUM ;
 int NETIF_F_SG ;
 int NETIF_F_TSO ;
 int NETIF_F_TSO6 ;
 int NETIF_F_TSO_MANGLEID ;
 struct fe_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void mt7621_init_data(struct fe_soc_data *data,
        struct net_device *netdev)
{
 struct fe_priv *priv = netdev_priv(netdev);

 priv->flags = FE_FLAG_PADDING_64B | FE_FLAG_RX_2B_OFFSET |
  FE_FLAG_RX_SG_DMA | FE_FLAG_NAPI_WEIGHT |
  FE_FLAG_HAS_SWITCH | FE_FLAG_JUMBO_FRAME;

 netdev->hw_features = NETIF_F_IP_CSUM | NETIF_F_RXCSUM |
  NETIF_F_HW_VLAN_CTAG_TX | NETIF_F_HW_VLAN_CTAG_RX |
  NETIF_F_SG | NETIF_F_TSO |
  NETIF_F_TSO6 | NETIF_F_IPV6_CSUM |
  NETIF_F_TSO_MANGLEID;
}

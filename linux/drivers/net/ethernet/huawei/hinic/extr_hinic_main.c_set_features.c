
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hinic_dev {int dummy; } ;
typedef int netdev_features_t ;


 int HINIC_LRO_MAX_WQE_NUM_DEFAULT ;
 int HINIC_LRO_RX_TIMER_DEFAULT ;
 int HINIC_RX_CSUM_OFFLOAD_EN ;
 int HINIC_TSO_DISABLE ;
 int HINIC_TSO_ENABLE ;
 int NETIF_F_HW_VLAN_CTAG_RX ;
 int NETIF_F_LRO ;
 int NETIF_F_RXCSUM ;
 int NETIF_F_TSO ;
 int hinic_port_set_tso (struct hinic_dev*,int ) ;
 int hinic_set_rx_csum_offload (struct hinic_dev*,int ) ;
 int hinic_set_rx_lro_state (struct hinic_dev*,int,int ,int ) ;
 int hinic_set_rx_vlan_offload (struct hinic_dev*,int) ;

__attribute__((used)) static int set_features(struct hinic_dev *nic_dev,
   netdev_features_t pre_features,
   netdev_features_t features, bool force_change)
{
 netdev_features_t changed = force_change ? ~0 : pre_features ^ features;
 u32 csum_en = HINIC_RX_CSUM_OFFLOAD_EN;
 int err = 0;

 if (changed & NETIF_F_TSO)
  err = hinic_port_set_tso(nic_dev, (features & NETIF_F_TSO) ?
      HINIC_TSO_ENABLE : HINIC_TSO_DISABLE);

 if (changed & NETIF_F_RXCSUM)
  err = hinic_set_rx_csum_offload(nic_dev, csum_en);

 if (changed & NETIF_F_LRO) {
  err = hinic_set_rx_lro_state(nic_dev,
          !!(features & NETIF_F_LRO),
          HINIC_LRO_RX_TIMER_DEFAULT,
          HINIC_LRO_MAX_WQE_NUM_DEFAULT);
 }

 if (changed & NETIF_F_HW_VLAN_CTAG_RX)
  err = hinic_set_rx_vlan_offload(nic_dev,
      !!(features &
         NETIF_F_HW_VLAN_CTAG_RX));

 return err;
}

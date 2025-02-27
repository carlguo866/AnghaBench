
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tx_desc {int dummy; } ;
struct r8152 {int tx_qlen; struct net_device* netdev; } ;
struct net_device {int mtu; } ;


 int ETH_FCS_LEN ;
 int VLAN_ETH_HLEN ;
 int agg_buf_sz ;

__attribute__((used)) static void set_tx_qlen(struct r8152 *tp)
{
 struct net_device *netdev = tp->netdev;

 tp->tx_qlen = agg_buf_sz / (netdev->mtu + VLAN_ETH_HLEN + ETH_FCS_LEN +
        sizeof(struct tx_desc));
}

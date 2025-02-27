
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skb_shared_info {int dummy; } ;
struct net_device {int mtu; } ;
struct atl1c_adapter {int rx_buffer_len; int rx_frag_size; } ;


 int AT_RX_BUF_SIZE ;
 scalar_t__ ETH_FCS_LEN ;
 scalar_t__ ETH_HLEN ;
 int NET_SKB_PAD ;
 unsigned int SKB_DATA_ALIGN (int) ;
 scalar_t__ VLAN_HLEN ;
 int roundup (scalar_t__,int) ;
 int roundup_pow_of_two (unsigned int) ;

__attribute__((used)) static void atl1c_set_rxbufsize(struct atl1c_adapter *adapter,
    struct net_device *dev)
{
 unsigned int head_size;
 int mtu = dev->mtu;

 adapter->rx_buffer_len = mtu > AT_RX_BUF_SIZE ?
  roundup(mtu + ETH_HLEN + ETH_FCS_LEN + VLAN_HLEN, 8) : AT_RX_BUF_SIZE;

 head_size = SKB_DATA_ALIGN(adapter->rx_buffer_len + NET_SKB_PAD) +
      SKB_DATA_ALIGN(sizeof(struct skb_shared_info));
 adapter->rx_frag_size = roundup_pow_of_two(head_size);
}

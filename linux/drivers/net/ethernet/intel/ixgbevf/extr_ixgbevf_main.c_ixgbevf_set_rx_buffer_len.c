
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {unsigned int mtu; } ;
struct ixgbevf_ring {int dummy; } ;
struct ixgbevf_adapter {int flags; struct net_device* netdev; } ;


 unsigned int ETH_FCS_LEN ;
 unsigned int ETH_HLEN ;
 int IXGBEVF_FLAGS_LEGACY_RX ;
 unsigned int IXGBEVF_MAX_FRAME_BUILD_SKB ;
 int PAGE_SIZE ;
 int clear_ring_build_skb_enabled (struct ixgbevf_ring*) ;
 int clear_ring_uses_large_buffer (struct ixgbevf_ring*) ;
 int set_ring_build_skb_enabled (struct ixgbevf_ring*) ;
 int set_ring_uses_large_buffer (struct ixgbevf_ring*) ;

__attribute__((used)) static void ixgbevf_set_rx_buffer_len(struct ixgbevf_adapter *adapter,
          struct ixgbevf_ring *rx_ring)
{
 struct net_device *netdev = adapter->netdev;
 unsigned int max_frame = netdev->mtu + ETH_HLEN + ETH_FCS_LEN;


 clear_ring_build_skb_enabled(rx_ring);
 clear_ring_uses_large_buffer(rx_ring);

 if (adapter->flags & IXGBEVF_FLAGS_LEGACY_RX)
  return;

 set_ring_build_skb_enabled(rx_ring);

 if (PAGE_SIZE < 8192) {
  if (max_frame <= IXGBEVF_MAX_FRAME_BUILD_SKB)
   return;

  set_ring_uses_large_buffer(rx_ring);
 }
}

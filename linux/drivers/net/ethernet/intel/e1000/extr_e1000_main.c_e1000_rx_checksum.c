
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct sk_buff {int ip_summed; } ;
struct e1000_hw {scalar_t__ mac_type; } ;
struct e1000_adapter {int hw_csum_good; int hw_csum_err; struct e1000_hw hw; } ;


 int CHECKSUM_UNNECESSARY ;
 int E1000_RXD_ERR_TCPE ;
 int E1000_RXD_STAT_IXSM ;
 int E1000_RXD_STAT_TCPCS ;
 scalar_t__ e1000_82543 ;
 scalar_t__ likely (int) ;
 int skb_checksum_none_assert (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void e1000_rx_checksum(struct e1000_adapter *adapter, u32 status_err,
         u32 csum, struct sk_buff *skb)
{
 struct e1000_hw *hw = &adapter->hw;
 u16 status = (u16)status_err;
 u8 errors = (u8)(status_err >> 24);

 skb_checksum_none_assert(skb);


 if (unlikely(hw->mac_type < e1000_82543))
  return;

 if (unlikely(status & E1000_RXD_STAT_IXSM))
  return;

 if (unlikely(errors & E1000_RXD_ERR_TCPE)) {

  adapter->hw_csum_err++;
  return;
 }

 if (!(status & E1000_RXD_STAT_TCPCS))
  return;


 if (likely(status & E1000_RXD_STAT_TCPCS)) {

  skb->ip_summed = CHECKSUM_UNNECESSARY;
 }
 adapter->hw_csum_good++;
}

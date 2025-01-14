
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int status_error; } ;
struct TYPE_8__ {int data; } ;
struct TYPE_9__ {TYPE_1__ lo_dword; } ;
struct TYPE_11__ {TYPE_3__ upper; TYPE_2__ lower; } ;
union ixgbe_adv_rx_desc {TYPE_4__ wb; } ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct TYPE_13__ {int non_eop_descs; } ;
struct ixgbe_ring {int next_to_clean; int count; TYPE_6__ rx_stats; TYPE_5__* rx_buffer_info; } ;
typedef int __le32 ;
struct TYPE_14__ {int append_cnt; } ;
struct TYPE_12__ {struct sk_buff* skb; } ;


 TYPE_7__* IXGBE_CB (struct sk_buff*) ;
 int IXGBE_RXDADV_NEXTP_MASK ;
 int IXGBE_RXDADV_NEXTP_SHIFT ;
 int IXGBE_RXDADV_RSCCNT_MASK ;
 int IXGBE_RXDADV_RSCCNT_SHIFT ;
 int IXGBE_RXD_STAT_EOP ;
 int IXGBE_RX_DESC (struct ixgbe_ring*,int) ;
 int cpu_to_le32 (int ) ;
 int ixgbe_test_staterr (union ixgbe_adv_rx_desc*,int ) ;
 int le32_to_cpu (int) ;
 scalar_t__ likely (int ) ;
 int prefetch (int ) ;
 scalar_t__ ring_is_rsc_enabled (struct ixgbe_ring*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool ixgbe_is_non_eop(struct ixgbe_ring *rx_ring,
        union ixgbe_adv_rx_desc *rx_desc,
        struct sk_buff *skb)
{
 u32 ntc = rx_ring->next_to_clean + 1;


 ntc = (ntc < rx_ring->count) ? ntc : 0;
 rx_ring->next_to_clean = ntc;

 prefetch(IXGBE_RX_DESC(rx_ring, ntc));


 if (ring_is_rsc_enabled(rx_ring)) {
  __le32 rsc_enabled = rx_desc->wb.lower.lo_dword.data &
         cpu_to_le32(IXGBE_RXDADV_RSCCNT_MASK);

  if (unlikely(rsc_enabled)) {
   u32 rsc_cnt = le32_to_cpu(rsc_enabled);

   rsc_cnt >>= IXGBE_RXDADV_RSCCNT_SHIFT;
   IXGBE_CB(skb)->append_cnt += rsc_cnt - 1;


   ntc = le32_to_cpu(rx_desc->wb.upper.status_error);
   ntc &= IXGBE_RXDADV_NEXTP_MASK;
   ntc >>= IXGBE_RXDADV_NEXTP_SHIFT;
  }
 }


 if (likely(ixgbe_test_staterr(rx_desc, IXGBE_RXD_STAT_EOP)))
  return 0;


 rx_ring->rx_buffer_info[ntc].skb = skb;
 rx_ring->rx_stats.non_eop_descs++;

 return 1;
}

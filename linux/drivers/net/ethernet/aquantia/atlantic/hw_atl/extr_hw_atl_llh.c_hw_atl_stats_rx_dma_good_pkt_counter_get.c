
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct aq_hw_s {int dummy; } ;


 int HW_ATL_STATS_RX_DMA_GOOD_PKT_COUNTERLSW ;
 int aq_hw_read_reg64 (struct aq_hw_s*,int ) ;

u64 hw_atl_stats_rx_dma_good_pkt_counter_get(struct aq_hw_s *aq_hw)
{
 return aq_hw_read_reg64(aq_hw, HW_ATL_STATS_RX_DMA_GOOD_PKT_COUNTERLSW);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct i40iw_dev_hw_stats {int * stats_value_32; int * stats_value_64; } ;
struct i40iw_dev_hw_stats_offsets {size_t* stats_offset_32; size_t* stats_offset_64; } ;
struct i40iw_vsi_pestat {TYPE_1__* hw; struct i40iw_dev_hw_stats last_read_hw_stats; struct i40iw_dev_hw_stats_offsets hw_stats_offsets; } ;
struct TYPE_2__ {size_t hw_addr; } ;


 size_t I40E_GLPES_PFIP4RXDISCARD (int ) ;
 size_t I40E_GLPES_PFIP4RXFRAGSLO (int ) ;
 size_t I40E_GLPES_PFIP4RXMCPKTSLO (int ) ;
 size_t I40E_GLPES_PFIP4RXOCTSLO (int ) ;
 size_t I40E_GLPES_PFIP4RXPKTSLO (int ) ;
 size_t I40E_GLPES_PFIP4RXTRUNC (int ) ;
 size_t I40E_GLPES_PFIP4TXFRAGSLO (int ) ;
 size_t I40E_GLPES_PFIP4TXMCPKTSLO (int ) ;
 size_t I40E_GLPES_PFIP4TXNOROUTE (int ) ;
 size_t I40E_GLPES_PFIP4TXOCTSLO (int ) ;
 size_t I40E_GLPES_PFIP4TXPKTSLO (int ) ;
 size_t I40E_GLPES_PFIP6RXDISCARD (int ) ;
 size_t I40E_GLPES_PFIP6RXFRAGSLO (int ) ;
 size_t I40E_GLPES_PFIP6RXMCPKTSLO (int ) ;
 size_t I40E_GLPES_PFIP6RXOCTSLO (int ) ;
 size_t I40E_GLPES_PFIP6RXPKTSLO (int ) ;
 size_t I40E_GLPES_PFIP6RXTRUNC (int ) ;
 size_t I40E_GLPES_PFIP6TXFRAGSLO (int ) ;
 size_t I40E_GLPES_PFIP6TXNOROUTE (int ) ;
 size_t I40E_GLPES_PFIP6TXOCTSLO (int ) ;
 void* I40E_GLPES_PFIP6TXPKTSLO (int ) ;
 size_t I40E_GLPES_PFRDMARXRDSLO (int ) ;
 size_t I40E_GLPES_PFRDMARXSNDSLO (int ) ;
 size_t I40E_GLPES_PFRDMARXWRSLO (int ) ;
 size_t I40E_GLPES_PFRDMATXRDSLO (int ) ;
 size_t I40E_GLPES_PFRDMATXSNDSLO (int ) ;
 size_t I40E_GLPES_PFRDMATXWRSLO (int ) ;
 size_t I40E_GLPES_PFRDMAVBNDLO (int ) ;
 size_t I40E_GLPES_PFRDMAVINVLO (int ) ;
 size_t I40E_GLPES_PFTCPRTXSEG (int ) ;
 size_t I40E_GLPES_PFTCPRXOPTERR (int ) ;
 size_t I40E_GLPES_PFTCPRXPROTOERR (int ) ;
 size_t I40E_GLPES_PFTCPRXSEGSLO (int ) ;
 size_t I40E_GLPES_PFTCPTXSEGLO (int ) ;
 size_t I40E_GLPES_VFIP4RXDISCARD (int ) ;
 size_t I40E_GLPES_VFIP4RXFRAGSLO (int ) ;
 size_t I40E_GLPES_VFIP4RXMCPKTSLO (int ) ;
 size_t I40E_GLPES_VFIP4RXOCTSLO (int ) ;
 size_t I40E_GLPES_VFIP4RXPKTSLO (int ) ;
 size_t I40E_GLPES_VFIP4RXTRUNC (int ) ;
 size_t I40E_GLPES_VFIP4TXFRAGSLO (int ) ;
 size_t I40E_GLPES_VFIP4TXMCPKTSLO (int ) ;
 size_t I40E_GLPES_VFIP4TXNOROUTE (int ) ;
 size_t I40E_GLPES_VFIP4TXOCTSLO (int ) ;
 size_t I40E_GLPES_VFIP4TXPKTSLO (int ) ;
 size_t I40E_GLPES_VFIP6RXDISCARD (int ) ;
 size_t I40E_GLPES_VFIP6RXFRAGSLO (int ) ;
 size_t I40E_GLPES_VFIP6RXMCPKTSLO (int ) ;
 size_t I40E_GLPES_VFIP6RXOCTSLO (int ) ;
 size_t I40E_GLPES_VFIP6RXPKTSLO (int ) ;
 size_t I40E_GLPES_VFIP6RXTRUNC (int ) ;
 size_t I40E_GLPES_VFIP6TXFRAGSLO (int ) ;
 size_t I40E_GLPES_VFIP6TXNOROUTE (int ) ;
 size_t I40E_GLPES_VFIP6TXOCTSLO (int ) ;
 void* I40E_GLPES_VFIP6TXPKTSLO (int ) ;
 size_t I40E_GLPES_VFRDMARXRDSLO (int ) ;
 size_t I40E_GLPES_VFRDMARXSNDSLO (int ) ;
 size_t I40E_GLPES_VFRDMARXWRSLO (int ) ;
 size_t I40E_GLPES_VFRDMATXRDSLO (int ) ;
 size_t I40E_GLPES_VFRDMATXSNDSLO (int ) ;
 size_t I40E_GLPES_VFRDMATXWRSLO (int ) ;
 size_t I40E_GLPES_VFRDMAVBNDLO (int ) ;
 size_t I40E_GLPES_VFRDMAVINVLO (int ) ;
 size_t I40E_GLPES_VFTCPRTXSEG (int ) ;
 size_t I40E_GLPES_VFTCPRXOPTERR (int ) ;
 size_t I40E_GLPES_VFTCPRXPROTOERR (int ) ;
 size_t I40E_GLPES_VFTCPRXSEGSLO (int ) ;
 size_t I40E_GLPES_VFTCPTXSEGLO (int ) ;
 size_t I40IW_HW_STAT_INDEX_IP4RXDISCARD ;
 size_t I40IW_HW_STAT_INDEX_IP4RXFRAGS ;
 size_t I40IW_HW_STAT_INDEX_IP4RXMCPKTS ;
 size_t I40IW_HW_STAT_INDEX_IP4RXOCTS ;
 size_t I40IW_HW_STAT_INDEX_IP4RXPKTS ;
 size_t I40IW_HW_STAT_INDEX_IP4RXTRUNC ;
 size_t I40IW_HW_STAT_INDEX_IP4TXFRAGS ;
 size_t I40IW_HW_STAT_INDEX_IP4TXMCPKTS ;
 size_t I40IW_HW_STAT_INDEX_IP4TXNOROUTE ;
 size_t I40IW_HW_STAT_INDEX_IP4TXOCTS ;
 size_t I40IW_HW_STAT_INDEX_IP4TXPKTS ;
 size_t I40IW_HW_STAT_INDEX_IP6RXDISCARD ;
 size_t I40IW_HW_STAT_INDEX_IP6RXFRAGS ;
 size_t I40IW_HW_STAT_INDEX_IP6RXMCPKTS ;
 size_t I40IW_HW_STAT_INDEX_IP6RXOCTS ;
 size_t I40IW_HW_STAT_INDEX_IP6RXPKTS ;
 size_t I40IW_HW_STAT_INDEX_IP6RXTRUNC ;
 size_t I40IW_HW_STAT_INDEX_IP6TXFRAGS ;
 size_t I40IW_HW_STAT_INDEX_IP6TXNOROUTE ;
 size_t I40IW_HW_STAT_INDEX_IP6TXOCTS ;
 size_t I40IW_HW_STAT_INDEX_IP6TXPKTS ;
 size_t I40IW_HW_STAT_INDEX_MAX_32 ;
 size_t I40IW_HW_STAT_INDEX_MAX_64 ;
 size_t I40IW_HW_STAT_INDEX_RDMARXRDS ;
 size_t I40IW_HW_STAT_INDEX_RDMARXSNDS ;
 size_t I40IW_HW_STAT_INDEX_RDMARXWRS ;
 size_t I40IW_HW_STAT_INDEX_RDMATXRDS ;
 size_t I40IW_HW_STAT_INDEX_RDMATXSNDS ;
 size_t I40IW_HW_STAT_INDEX_RDMATXWRS ;
 size_t I40IW_HW_STAT_INDEX_RDMAVBND ;
 size_t I40IW_HW_STAT_INDEX_RDMAVINV ;
 size_t I40IW_HW_STAT_INDEX_TCPRTXSEG ;
 size_t I40IW_HW_STAT_INDEX_TCPRXOPTERR ;
 size_t I40IW_HW_STAT_INDEX_TCPRXPROTOERR ;
 size_t I40IW_HW_STAT_INDEX_TCPRXSEGS ;
 size_t I40IW_HW_STAT_INDEX_TCPTXSEG ;
 int i40iw_rd32 (TYPE_1__*,size_t) ;
 int readq (size_t) ;

void i40iw_hw_stats_init(struct i40iw_vsi_pestat *stats, u8 fcn_idx, bool is_pf)
{
 u32 stats_reg_offset;
 u32 stats_index;
 struct i40iw_dev_hw_stats_offsets *stats_table =
  &stats->hw_stats_offsets;
 struct i40iw_dev_hw_stats *last_rd_stats = &stats->last_read_hw_stats;

 if (is_pf) {
  stats_table->stats_offset_32[I40IW_HW_STAT_INDEX_IP4RXDISCARD] =
    I40E_GLPES_PFIP4RXDISCARD(fcn_idx);
  stats_table->stats_offset_32[I40IW_HW_STAT_INDEX_IP4RXTRUNC] =
    I40E_GLPES_PFIP4RXTRUNC(fcn_idx);
  stats_table->stats_offset_32[I40IW_HW_STAT_INDEX_IP4TXNOROUTE] =
    I40E_GLPES_PFIP4TXNOROUTE(fcn_idx);
  stats_table->stats_offset_32[I40IW_HW_STAT_INDEX_IP6RXDISCARD] =
    I40E_GLPES_PFIP6RXDISCARD(fcn_idx);
  stats_table->stats_offset_32[I40IW_HW_STAT_INDEX_IP6RXTRUNC] =
    I40E_GLPES_PFIP6RXTRUNC(fcn_idx);
  stats_table->stats_offset_32[I40IW_HW_STAT_INDEX_IP6TXNOROUTE] =
    I40E_GLPES_PFIP6TXNOROUTE(fcn_idx);
  stats_table->stats_offset_32[I40IW_HW_STAT_INDEX_TCPRTXSEG] =
    I40E_GLPES_PFTCPRTXSEG(fcn_idx);
  stats_table->stats_offset_32[I40IW_HW_STAT_INDEX_TCPRXOPTERR] =
    I40E_GLPES_PFTCPRXOPTERR(fcn_idx);
  stats_table->stats_offset_32[I40IW_HW_STAT_INDEX_TCPRXPROTOERR] =
    I40E_GLPES_PFTCPRXPROTOERR(fcn_idx);

  stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_IP4RXOCTS] =
    I40E_GLPES_PFIP4RXOCTSLO(fcn_idx);
  stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_IP4RXPKTS] =
    I40E_GLPES_PFIP4RXPKTSLO(fcn_idx);
  stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_IP4RXFRAGS] =
    I40E_GLPES_PFIP4RXFRAGSLO(fcn_idx);
  stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_IP4RXMCPKTS] =
    I40E_GLPES_PFIP4RXMCPKTSLO(fcn_idx);
  stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_IP4TXOCTS] =
    I40E_GLPES_PFIP4TXOCTSLO(fcn_idx);
  stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_IP4TXPKTS] =
    I40E_GLPES_PFIP4TXPKTSLO(fcn_idx);
  stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_IP4TXFRAGS] =
    I40E_GLPES_PFIP4TXFRAGSLO(fcn_idx);
  stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_IP4TXMCPKTS] =
    I40E_GLPES_PFIP4TXMCPKTSLO(fcn_idx);
  stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_IP6RXOCTS] =
    I40E_GLPES_PFIP6RXOCTSLO(fcn_idx);
  stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_IP6RXPKTS] =
    I40E_GLPES_PFIP6RXPKTSLO(fcn_idx);
  stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_IP6RXFRAGS] =
    I40E_GLPES_PFIP6RXFRAGSLO(fcn_idx);
  stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_IP6RXMCPKTS] =
    I40E_GLPES_PFIP6RXMCPKTSLO(fcn_idx);
  stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_IP6TXOCTS] =
    I40E_GLPES_PFIP6TXOCTSLO(fcn_idx);
  stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_IP6TXPKTS] =
    I40E_GLPES_PFIP6TXPKTSLO(fcn_idx);
  stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_IP6TXPKTS] =
    I40E_GLPES_PFIP6TXPKTSLO(fcn_idx);
  stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_IP6TXFRAGS] =
    I40E_GLPES_PFIP6TXFRAGSLO(fcn_idx);
  stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_TCPRXSEGS] =
    I40E_GLPES_PFTCPRXSEGSLO(fcn_idx);
  stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_TCPTXSEG] =
    I40E_GLPES_PFTCPTXSEGLO(fcn_idx);
  stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_RDMARXRDS] =
    I40E_GLPES_PFRDMARXRDSLO(fcn_idx);
  stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_RDMARXSNDS] =
    I40E_GLPES_PFRDMARXSNDSLO(fcn_idx);
  stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_RDMARXWRS] =
    I40E_GLPES_PFRDMARXWRSLO(fcn_idx);
  stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_RDMATXRDS] =
    I40E_GLPES_PFRDMATXRDSLO(fcn_idx);
  stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_RDMATXSNDS] =
    I40E_GLPES_PFRDMATXSNDSLO(fcn_idx);
  stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_RDMATXWRS] =
    I40E_GLPES_PFRDMATXWRSLO(fcn_idx);
  stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_RDMAVBND] =
    I40E_GLPES_PFRDMAVBNDLO(fcn_idx);
  stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_RDMAVINV] =
    I40E_GLPES_PFRDMAVINVLO(fcn_idx);
 } else {
  stats_table->stats_offset_32[I40IW_HW_STAT_INDEX_IP4RXDISCARD] =
    I40E_GLPES_VFIP4RXDISCARD(fcn_idx);
  stats_table->stats_offset_32[I40IW_HW_STAT_INDEX_IP4RXTRUNC] =
    I40E_GLPES_VFIP4RXTRUNC(fcn_idx);
  stats_table->stats_offset_32[I40IW_HW_STAT_INDEX_IP4TXNOROUTE] =
    I40E_GLPES_VFIP4TXNOROUTE(fcn_idx);
  stats_table->stats_offset_32[I40IW_HW_STAT_INDEX_IP6RXDISCARD] =
    I40E_GLPES_VFIP6RXDISCARD(fcn_idx);
  stats_table->stats_offset_32[I40IW_HW_STAT_INDEX_IP6RXTRUNC] =
    I40E_GLPES_VFIP6RXTRUNC(fcn_idx);
  stats_table->stats_offset_32[I40IW_HW_STAT_INDEX_IP6TXNOROUTE] =
    I40E_GLPES_VFIP6TXNOROUTE(fcn_idx);
  stats_table->stats_offset_32[I40IW_HW_STAT_INDEX_TCPRTXSEG] =
    I40E_GLPES_VFTCPRTXSEG(fcn_idx);
  stats_table->stats_offset_32[I40IW_HW_STAT_INDEX_TCPRXOPTERR] =
    I40E_GLPES_VFTCPRXOPTERR(fcn_idx);
  stats_table->stats_offset_32[I40IW_HW_STAT_INDEX_TCPRXPROTOERR] =
    I40E_GLPES_VFTCPRXPROTOERR(fcn_idx);

  stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_IP4RXOCTS] =
    I40E_GLPES_VFIP4RXOCTSLO(fcn_idx);
  stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_IP4RXPKTS] =
    I40E_GLPES_VFIP4RXPKTSLO(fcn_idx);
  stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_IP4RXFRAGS] =
    I40E_GLPES_VFIP4RXFRAGSLO(fcn_idx);
  stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_IP4RXMCPKTS] =
    I40E_GLPES_VFIP4RXMCPKTSLO(fcn_idx);
  stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_IP4TXOCTS] =
    I40E_GLPES_VFIP4TXOCTSLO(fcn_idx);
  stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_IP4TXPKTS] =
    I40E_GLPES_VFIP4TXPKTSLO(fcn_idx);
  stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_IP4TXFRAGS] =
    I40E_GLPES_VFIP4TXFRAGSLO(fcn_idx);
  stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_IP4TXMCPKTS] =
    I40E_GLPES_VFIP4TXMCPKTSLO(fcn_idx);
  stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_IP6RXOCTS] =
    I40E_GLPES_VFIP6RXOCTSLO(fcn_idx);
  stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_IP6RXPKTS] =
    I40E_GLPES_VFIP6RXPKTSLO(fcn_idx);
  stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_IP6RXFRAGS] =
    I40E_GLPES_VFIP6RXFRAGSLO(fcn_idx);
  stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_IP6RXMCPKTS] =
    I40E_GLPES_VFIP6RXMCPKTSLO(fcn_idx);
  stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_IP6TXOCTS] =
    I40E_GLPES_VFIP6TXOCTSLO(fcn_idx);
  stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_IP6TXPKTS] =
    I40E_GLPES_VFIP6TXPKTSLO(fcn_idx);
  stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_IP6TXPKTS] =
    I40E_GLPES_VFIP6TXPKTSLO(fcn_idx);
  stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_IP6TXFRAGS] =
    I40E_GLPES_VFIP6TXFRAGSLO(fcn_idx);
  stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_TCPRXSEGS] =
    I40E_GLPES_VFTCPRXSEGSLO(fcn_idx);
  stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_TCPTXSEG] =
    I40E_GLPES_VFTCPTXSEGLO(fcn_idx);
  stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_RDMARXRDS] =
    I40E_GLPES_VFRDMARXRDSLO(fcn_idx);
  stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_RDMARXSNDS] =
    I40E_GLPES_VFRDMARXSNDSLO(fcn_idx);
  stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_RDMARXWRS] =
    I40E_GLPES_VFRDMARXWRSLO(fcn_idx);
  stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_RDMATXRDS] =
    I40E_GLPES_VFRDMATXRDSLO(fcn_idx);
  stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_RDMATXSNDS] =
    I40E_GLPES_VFRDMATXSNDSLO(fcn_idx);
  stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_RDMATXWRS] =
    I40E_GLPES_VFRDMATXWRSLO(fcn_idx);
  stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_RDMAVBND] =
    I40E_GLPES_VFRDMAVBNDLO(fcn_idx);
  stats_table->stats_offset_64[I40IW_HW_STAT_INDEX_RDMAVINV] =
    I40E_GLPES_VFRDMAVINVLO(fcn_idx);
 }

 for (stats_index = 0; stats_index < I40IW_HW_STAT_INDEX_MAX_64;
      stats_index++) {
  stats_reg_offset = stats_table->stats_offset_64[stats_index];
  last_rd_stats->stats_value_64[stats_index] =
   readq(stats->hw->hw_addr + stats_reg_offset);
 }

 for (stats_index = 0; stats_index < I40IW_HW_STAT_INDEX_MAX_32;
      stats_index++) {
  stats_reg_offset = stats_table->stats_offset_32[stats_index];
  last_rd_stats->stats_value_32[stats_index] =
   i40iw_rd32(stats->hw, stats_reg_offset);
 }
}

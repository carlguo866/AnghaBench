
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct nig_stats {int dummy; } ;
struct host_func_stats {int dummy; } ;
struct TYPE_8__ {int egress_mac_pkt1_lo; int egress_mac_pkt0_lo; void* brb_truncate; void* brb_discard; } ;
struct TYPE_6__ {TYPE_3__ old_nig_stats; void* port_stx; scalar_t__ pmf; } ;
struct bnx2x {void* func_stx; scalar_t__ stats_init; TYPE_1__ port; scalar_t__ stats_counter; scalar_t__ executer_idx; scalar_t__ stats_pending; } ;
struct TYPE_9__ {int fw_mb_param; } ;
struct TYPE_7__ {int port_stx; } ;


 int BNX2X_MSG_STATS ;
 int BP_FW_MB_IDX (struct bnx2x*) ;
 int BP_NOMCP (struct bnx2x*) ;
 int BP_PORT (struct bnx2x*) ;
 int CHIP_IS_E3 (struct bnx2x*) ;
 int DP (int ,char*,void*,void*) ;
 scalar_t__ NIG_REG_STAT0_BRB_DISCARD ;
 scalar_t__ NIG_REG_STAT0_BRB_TRUNCATE ;
 scalar_t__ NIG_REG_STAT0_EGRESS_MAC_PKT0 ;
 scalar_t__ NIG_REG_STAT0_EGRESS_MAC_PKT1 ;
 void* REG_RD (struct bnx2x*,scalar_t__) ;
 int REG_RD_DMAE (struct bnx2x*,scalar_t__,int *,int) ;
 void* SHMEM_RD (struct bnx2x*,int ) ;
 int STATS_EVENT_PMF ;
 int bnx2x_func_stats_init (struct bnx2x*) ;
 int bnx2x_hw_stats_post (struct bnx2x*) ;
 int bnx2x_memset_stats (struct bnx2x*) ;
 int bnx2x_prep_fw_stats_req (struct bnx2x*) ;
 TYPE_3__* bnx2x_sp (struct bnx2x*,int ) ;
 int bnx2x_stats_comp (struct bnx2x*) ;
 int bnx2x_stats_handle (struct bnx2x*,int ) ;
 TYPE_4__* func_mb ;
 int func_stats ;
 int memset (TYPE_3__*,int ,int) ;
 TYPE_2__* port_mb ;

void bnx2x_stats_init(struct bnx2x *bp)
{
 int port = BP_PORT(bp);
 int mb_idx = BP_FW_MB_IDX(bp);

 bp->stats_pending = 0;
 bp->executer_idx = 0;
 bp->stats_counter = 0;


 if (!BP_NOMCP(bp)) {
  bp->port.port_stx = SHMEM_RD(bp, port_mb[port].port_stx);
  bp->func_stx = SHMEM_RD(bp, func_mb[mb_idx].fw_mb_param);

 } else {
  bp->port.port_stx = 0;
  bp->func_stx = 0;
 }
 DP(BNX2X_MSG_STATS, "port_stx 0x%x  func_stx 0x%x\n",
    bp->port.port_stx, bp->func_stx);


 if (!bp->stats_init && bp->port.pmf && bp->port.port_stx)
  bnx2x_stats_handle(bp, STATS_EVENT_PMF);

 port = BP_PORT(bp);

 memset(&(bp->port.old_nig_stats), 0, sizeof(struct nig_stats));
 bp->port.old_nig_stats.brb_discard =
   REG_RD(bp, NIG_REG_STAT0_BRB_DISCARD + port*0x38);
 bp->port.old_nig_stats.brb_truncate =
   REG_RD(bp, NIG_REG_STAT0_BRB_TRUNCATE + port*0x38);
 if (!CHIP_IS_E3(bp)) {
  REG_RD_DMAE(bp, NIG_REG_STAT0_EGRESS_MAC_PKT0 + port*0x50,
       &(bp->port.old_nig_stats.egress_mac_pkt0_lo), 2);
  REG_RD_DMAE(bp, NIG_REG_STAT0_EGRESS_MAC_PKT1 + port*0x50,
       &(bp->port.old_nig_stats.egress_mac_pkt1_lo), 2);
 }


 bnx2x_prep_fw_stats_req(bp);


 if (bp->stats_init) {
  if (bp->func_stx) {
   memset(bnx2x_sp(bp, func_stats), 0,
          sizeof(struct host_func_stats));
   bnx2x_func_stats_init(bp);
   bnx2x_hw_stats_post(bp);
   bnx2x_stats_comp(bp);
  }
 }

 bnx2x_memset_stats(bp);
}

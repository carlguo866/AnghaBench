
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct nig_stats {int dummy; } ;
struct host_func_stats {int dummy; } ;
struct TYPE_10__ {int egress_mac_pkt1_lo; int egress_mac_pkt0_lo; void* brb_truncate; void* brb_discard; } ;
struct TYPE_8__ {void* port_stx; scalar_t__ pmf; TYPE_4__ old_nig_stats; } ;
struct bxe_softc {int num_queues; scalar_t__ stats_init; TYPE_2__ port; int stats_state; void* func_stx; TYPE_4__ func_stats; TYPE_4__ eth_stats; TYPE_4__ eth_stats_old; TYPE_4__ fw_stats_old; TYPE_4__ net_stats_old; TYPE_1__* fp; scalar_t__ stats_counter; scalar_t__ executer_idx; scalar_t__ stats_pending; } ;
struct TYPE_11__ {int fw_mb_param; } ;
struct TYPE_9__ {int port_stx; } ;
struct TYPE_7__ {TYPE_4__ eth_q_stats_old; TYPE_4__ eth_q_stats; TYPE_4__ old_xclient; TYPE_4__ old_uclient; TYPE_4__ old_tclient; } ;


 int BLOGD (struct bxe_softc*,int ,char*,void*,void*) ;
 int BXE_NOMCP (struct bxe_softc*) ;
 TYPE_4__* BXE_SP (struct bxe_softc*,int ) ;
 int CHIP_IS_E3 (struct bxe_softc*) ;
 int DBG_STATS ;
 scalar_t__ FALSE ;
 scalar_t__ NIG_REG_STAT0_BRB_DISCARD ;
 scalar_t__ NIG_REG_STAT0_BRB_TRUNCATE ;
 scalar_t__ NIG_REG_STAT0_EGRESS_MAC_PKT0 ;
 scalar_t__ NIG_REG_STAT0_EGRESS_MAC_PKT1 ;
 void* REG_RD (struct bxe_softc*,scalar_t__) ;
 int REG_RD_DMAE (struct bxe_softc*,scalar_t__,int *,int) ;
 int SC_FW_MB_IDX (struct bxe_softc*) ;
 int SC_PORT (struct bxe_softc*) ;
 void* SHMEM_RD (struct bxe_softc*,int ) ;
 int STATS_EVENT_PMF ;
 int STATS_STATE_DISABLED ;
 int bxe_func_stats_init (struct bxe_softc*) ;
 int bxe_hw_stats_post (struct bxe_softc*) ;
 int bxe_port_stats_base_init (struct bxe_softc*) ;
 int bxe_prep_fw_stats_req (struct bxe_softc*) ;
 int bxe_stats_comp (struct bxe_softc*) ;
 int bxe_stats_handle (struct bxe_softc*,int ) ;
 TYPE_5__* func_mb ;
 int func_stats ;
 int memset (TYPE_4__*,int ,int) ;
 TYPE_3__* port_mb ;

void
bxe_stats_init(struct bxe_softc *sc)
{
    int port = SC_PORT(sc);
    int mb_idx = SC_FW_MB_IDX(sc);
    int i;

    sc->stats_pending = 0;
    sc->executer_idx = 0;
    sc->stats_counter = 0;


    if (!BXE_NOMCP(sc)) {
        sc->port.port_stx = SHMEM_RD(sc, port_mb[port].port_stx);
        sc->func_stx = SHMEM_RD(sc, func_mb[mb_idx].fw_mb_param);
    } else {
        sc->port.port_stx = 0;
        sc->func_stx = 0;
    }

    BLOGD(sc, DBG_STATS, "port_stx 0x%x func_stx 0x%x\n",
          sc->port.port_stx, sc->func_stx);


    if (!sc->stats_init && sc->port.pmf && sc->port.port_stx) {
        bxe_stats_handle(sc, STATS_EVENT_PMF);
    }

    port = SC_PORT(sc);

    memset(&(sc->port.old_nig_stats), 0, sizeof(struct nig_stats));
    sc->port.old_nig_stats.brb_discard =
        REG_RD(sc, NIG_REG_STAT0_BRB_DISCARD + port*0x38);
    sc->port.old_nig_stats.brb_truncate =
        REG_RD(sc, NIG_REG_STAT0_BRB_TRUNCATE + port*0x38);
    if (!CHIP_IS_E3(sc)) {
        REG_RD_DMAE(sc, NIG_REG_STAT0_EGRESS_MAC_PKT0 + port*0x50,
                    &(sc->port.old_nig_stats.egress_mac_pkt0_lo), 2);
        REG_RD_DMAE(sc, NIG_REG_STAT0_EGRESS_MAC_PKT1 + port*0x50,
                    &(sc->port.old_nig_stats.egress_mac_pkt1_lo), 2);
    }


    for (i = 0; i < sc->num_queues; i++) {
        memset(&sc->fp[i].old_tclient, 0, sizeof(sc->fp[i].old_tclient));
        memset(&sc->fp[i].old_uclient, 0, sizeof(sc->fp[i].old_uclient));
        memset(&sc->fp[i].old_xclient, 0, sizeof(sc->fp[i].old_xclient));
        if (sc->stats_init) {
            memset(&sc->fp[i].eth_q_stats, 0,
                   sizeof(sc->fp[i].eth_q_stats));
            memset(&sc->fp[i].eth_q_stats_old, 0,
                   sizeof(sc->fp[i].eth_q_stats_old));
        }
    }


    bxe_prep_fw_stats_req(sc);

    if (sc->stats_init) {
        memset(&sc->net_stats_old, 0, sizeof(sc->net_stats_old));
        memset(&sc->fw_stats_old, 0, sizeof(sc->fw_stats_old));
        memset(&sc->eth_stats_old, 0, sizeof(sc->eth_stats_old));
        memset(&sc->eth_stats, 0, sizeof(sc->eth_stats));
        memset(&sc->func_stats, 0, sizeof(sc->func_stats));


        if (sc->func_stx) {
            memset(BXE_SP(sc, func_stats), 0, sizeof(struct host_func_stats));
            bxe_func_stats_init(sc);
            bxe_hw_stats_post(sc);
            bxe_stats_comp(sc);
        }
    }

    sc->stats_state = STATS_STATE_DISABLED;

    if (sc->port.pmf && sc->port.port_stx) {
        bxe_port_stats_base_init(sc);
    }


    sc->stats_init = FALSE;
}

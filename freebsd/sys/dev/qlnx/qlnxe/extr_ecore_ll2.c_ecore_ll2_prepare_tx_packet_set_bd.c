
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t u16 ;
struct ecore_ll2_tx_pkt_info {scalar_t__ ecore_roce_flavor; int tx_dest; size_t vlan; int remove_stag; size_t l4_hdr_offset_w; size_t bd_flags; int num_of_bds; size_t first_frag_len; int first_frag; int calc_ip_len; int enable_l4_cksum; int enable_ip_cksum; } ;
struct ecore_ll2_tx_packet {TYPE_5__* bds_set; } ;
struct ecore_chain {int dummy; } ;
struct TYPE_9__ {int cur_send_frag_num; struct ecore_chain txq_chain; } ;
struct TYPE_8__ {scalar_t__ conn_type; } ;
struct ecore_ll2_info {TYPE_3__ tx_queue; TYPE_2__ input; int cid; int queue_id; } ;
struct ecore_hwfn {TYPE_1__* p_dev; } ;
struct TYPE_10__ {int as_bitfield; } ;
struct TYPE_12__ {int lo; int hi; } ;
struct core_tx_bd {int nw_vlan_or_lb_echo; size_t bitfield1; int nbytes; TYPE_4__ bd_data; TYPE_6__ addr; } ;
typedef enum core_tx_dest { ____Placeholder_core_tx_dest } core_tx_dest ;
typedef enum core_roce_flavor_type { ____Placeholder_core_roce_flavor_type } core_roce_flavor_type ;
struct TYPE_11__ {scalar_t__ frag_len; scalar_t__ tx_frag; struct core_tx_bd* txq_bd; } ;
struct TYPE_7__ {int mf_bits; } ;


 int CORE_ROCE ;
 int CORE_RROCE ;
 int CORE_TX_BD_DATA_DISABLE_STAG_INSERTION ;
 int CORE_TX_BD_DATA_IP_CSUM ;
 int CORE_TX_BD_DATA_IP_LEN ;
 int CORE_TX_BD_DATA_L4_CSUM ;
 int CORE_TX_BD_DATA_NBDS ;
 int CORE_TX_BD_DATA_ROCE_FLAV ;
 int CORE_TX_BD_DATA_START_BD ;
 int CORE_TX_BD_L4_HDR_OFFSET_W ;
 int CORE_TX_BD_TX_DST ;
 int CORE_TX_DEST_DROP ;
 int CORE_TX_DEST_LB ;
 int CORE_TX_DEST_NW ;
 int DMA_REGPAIR_LE (TYPE_6__,int ) ;
 int DP_VERBOSE (struct ecore_hwfn*,int,char*,int ,int ,scalar_t__,size_t,size_t,int,int ,int ) ;
 scalar_t__ ECORE_IS_IWARP_PERSONALITY (struct ecore_hwfn*) ;
 scalar_t__ ECORE_LL2_ROCE ;



 scalar_t__ ECORE_LL2_TYPE_FCOE ;
 scalar_t__ ECORE_LL2_TYPE_OOO ;
 int ECORE_MF_UFP_SPECIFIC ;
 int ECORE_MSG_LL2 ;
 int ECORE_MSG_TX_QUEUED ;
 size_t IWARP_LL2_IN_ORDER_TX_QUEUE ;
 int OSAL_CPU_TO_LE16 (size_t) ;
 int OSAL_LE32_TO_CPU (int ) ;
 struct core_tx_bd* OSAL_NULL ;
 scalar_t__ OSAL_TEST_BIT (int ,int *) ;
 int SET_FIELD (size_t,int ,int) ;
 size_t ecore_chain_get_prod_idx (struct ecore_chain*) ;
 scalar_t__ ecore_chain_produce (struct ecore_chain*) ;

__attribute__((used)) static void ecore_ll2_prepare_tx_packet_set_bd(
  struct ecore_hwfn *p_hwfn,
  struct ecore_ll2_info *p_ll2,
  struct ecore_ll2_tx_packet *p_curp,
  struct ecore_ll2_tx_pkt_info *pkt)
{
 struct ecore_chain *p_tx_chain = &p_ll2->tx_queue.txq_chain;
 u16 prod_idx = ecore_chain_get_prod_idx(p_tx_chain);
 struct core_tx_bd *start_bd = OSAL_NULL;
 enum core_roce_flavor_type roce_flavor;
 enum core_tx_dest tx_dest;
 u16 bd_data = 0, frag_idx;

 roce_flavor = (pkt->ecore_roce_flavor == ECORE_LL2_ROCE) ?
  CORE_ROCE : CORE_RROCE;

 switch (pkt->tx_dest) {
 case 128:
  tx_dest = CORE_TX_DEST_NW;
  break;
 case 129:
  tx_dest = CORE_TX_DEST_LB;
  break;
 case 130:
  tx_dest = CORE_TX_DEST_DROP;
  break;
 default:
  tx_dest = CORE_TX_DEST_LB;
  break;
 }

 start_bd = (struct core_tx_bd*)ecore_chain_produce(p_tx_chain);

 if (ECORE_IS_IWARP_PERSONALITY(p_hwfn) &&
     (p_ll2->input.conn_type == ECORE_LL2_TYPE_OOO)) {
  start_bd->nw_vlan_or_lb_echo =
   OSAL_CPU_TO_LE16(IWARP_LL2_IN_ORDER_TX_QUEUE);
 } else {
  start_bd->nw_vlan_or_lb_echo = OSAL_CPU_TO_LE16(pkt->vlan);
  if (OSAL_TEST_BIT(ECORE_MF_UFP_SPECIFIC, &p_hwfn->p_dev->mf_bits) &&
      (p_ll2->input.conn_type == ECORE_LL2_TYPE_FCOE))
   pkt->remove_stag = 1;
 }

 SET_FIELD(start_bd->bitfield1, CORE_TX_BD_L4_HDR_OFFSET_W,
    OSAL_CPU_TO_LE16(pkt->l4_hdr_offset_w));
 SET_FIELD(start_bd->bitfield1, CORE_TX_BD_TX_DST, tx_dest);
 bd_data |= pkt->bd_flags;
 SET_FIELD(bd_data, CORE_TX_BD_DATA_START_BD, 0x1);
 SET_FIELD(bd_data, CORE_TX_BD_DATA_NBDS, pkt->num_of_bds);
 SET_FIELD(bd_data, CORE_TX_BD_DATA_ROCE_FLAV, roce_flavor);
 SET_FIELD(bd_data, CORE_TX_BD_DATA_IP_CSUM, !!(pkt->enable_ip_cksum));
 SET_FIELD(bd_data, CORE_TX_BD_DATA_L4_CSUM, !!(pkt->enable_l4_cksum));
 SET_FIELD(bd_data, CORE_TX_BD_DATA_IP_LEN, !!(pkt->calc_ip_len));
 SET_FIELD(bd_data, CORE_TX_BD_DATA_DISABLE_STAG_INSERTION,
    !!(pkt->remove_stag));

 start_bd->bd_data.as_bitfield = OSAL_CPU_TO_LE16(bd_data);
 DMA_REGPAIR_LE(start_bd->addr, pkt->first_frag);
 start_bd->nbytes = OSAL_CPU_TO_LE16(pkt->first_frag_len);

 DP_VERBOSE(p_hwfn, (ECORE_MSG_TX_QUEUED | ECORE_MSG_LL2),
     "LL2 [q 0x%02x cid 0x%08x type 0x%08x] Tx Producer at [0x%04x] - set with a %04x bytes %02x BDs buffer at %08x:%08x\n",
     p_ll2->queue_id, p_ll2->cid, p_ll2->input.conn_type,
     prod_idx, pkt->first_frag_len, pkt->num_of_bds,
     OSAL_LE32_TO_CPU(start_bd->addr.hi),
     OSAL_LE32_TO_CPU(start_bd->addr.lo));

 if (p_ll2->tx_queue.cur_send_frag_num == pkt->num_of_bds)
  return;


 for (frag_idx = p_ll2->tx_queue.cur_send_frag_num;
      frag_idx < pkt->num_of_bds; frag_idx++) {
  struct core_tx_bd **p_bd = &p_curp->bds_set[frag_idx].txq_bd;

  *p_bd = (struct core_tx_bd *)ecore_chain_produce(p_tx_chain);
  (*p_bd)->bd_data.as_bitfield = 0;
  (*p_bd)->bitfield1 = 0;
  p_curp->bds_set[frag_idx].tx_frag = 0;
  p_curp->bds_set[frag_idx].frag_len = 0;
 }
}

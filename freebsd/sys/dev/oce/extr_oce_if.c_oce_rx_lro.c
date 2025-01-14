
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int rx_bytes; int rx_frags; int rx_ucast_pkts; int rx_pkts; } ;
struct TYPE_7__ {int frag_size; } ;
struct oce_rq {TYPE_3__ rx_stats; scalar_t__ queue_index; TYPE_1__ cfg; int parent; } ;
struct oce_common_cqe_info {int pkt_size; int vtag; int num_frags; scalar_t__ qnq; scalar_t__ vtp; int ipv6_frame; int ip_cksum_pass; int l4_cksum_pass; } ;
struct nic_hwlro_singleton_cqe {int pkt_size; int vlan_tag; scalar_t__ qnq; scalar_t__ vtp; int ipv6_frame; int ip_cksum_pass; int l4_cksum_pass; } ;
struct nic_hwlro_cqe_part2 {int coalesced_size; int vlan_tag; scalar_t__ vtp; int ipv6_frame; int ip_cksum_pass; int l4_cksum_pass; } ;
struct nic_hwlro_cqe_part1 {scalar_t__ qnq; } ;
struct TYPE_8__ {int ether_vtag; scalar_t__ flowid; TYPE_5__* rcvif; } ;
struct mbuf {int m_flags; TYPE_2__ m_pkthdr; } ;
struct TYPE_11__ {int (* if_input ) (TYPE_5__*,struct mbuf*) ;} ;
struct TYPE_10__ {int function_mode; int pvid; TYPE_5__* ifp; } ;
typedef TYPE_4__* POCE_SOFTC ;


 int BSWAP_16 (int) ;
 int FNM_FLEX10_MODE ;
 int IFCOUNTER_IPACKETS ;
 int M_HASHTYPE_OPAQUE ;
 int M_HASHTYPE_SET (struct mbuf*,int ) ;
 int M_VLANTAG ;
 int VLAN_VID_MASK ;
 int if_inc_counter (TYPE_5__*,int ,int) ;
 int oce_correct_header (struct mbuf*,struct nic_hwlro_cqe_part1*,struct nic_hwlro_cqe_part2*) ;
 int oce_rx_mbuf_chain (struct oce_rq*,struct oce_common_cqe_info*,struct mbuf**) ;
 int stub1 (TYPE_5__*,struct mbuf*) ;

__attribute__((used)) static void
oce_rx_lro(struct oce_rq *rq, struct nic_hwlro_singleton_cqe *cqe, struct nic_hwlro_cqe_part2 *cqe2)
{
        POCE_SOFTC sc = (POCE_SOFTC) rq->parent;
        struct nic_hwlro_cqe_part1 *cqe1 = ((void*)0);
        struct mbuf *m = ((void*)0);
 struct oce_common_cqe_info cq_info;


        if(cqe2 == ((void*)0)) {
                cq_info.pkt_size = cqe->pkt_size;
                cq_info.vtag = cqe->vlan_tag;
                cq_info.l4_cksum_pass = cqe->l4_cksum_pass;
                cq_info.ip_cksum_pass = cqe->ip_cksum_pass;
                cq_info.ipv6_frame = cqe->ipv6_frame;
                cq_info.vtp = cqe->vtp;
                cq_info.qnq = cqe->qnq;
        }else {
                cqe1 = (struct nic_hwlro_cqe_part1 *)cqe;
                cq_info.pkt_size = cqe2->coalesced_size;
                cq_info.vtag = cqe2->vlan_tag;
                cq_info.l4_cksum_pass = cqe2->l4_cksum_pass;
                cq_info.ip_cksum_pass = cqe2->ip_cksum_pass;
                cq_info.ipv6_frame = cqe2->ipv6_frame;
                cq_info.vtp = cqe2->vtp;
                cq_info.qnq = cqe1->qnq;
        }

 cq_info.vtag = BSWAP_16(cq_info.vtag);

        cq_info.num_frags = cq_info.pkt_size / rq->cfg.frag_size;
        if(cq_info.pkt_size % rq->cfg.frag_size)
                cq_info.num_frags++;

 oce_rx_mbuf_chain(rq, &cq_info, &m);

 if (m) {
  if(cqe2) {



   oce_correct_header(m, cqe1, cqe2);
  }

  m->m_pkthdr.rcvif = sc->ifp;
  if (cq_info.vtp) {
   if (sc->function_mode & FNM_FLEX10_MODE) {

    if (cq_info.qnq) {
     m->m_pkthdr.ether_vtag = cq_info.vtag;
     m->m_flags |= M_VLANTAG;
    }
   } else if (sc->pvid != (cq_info.vtag & VLAN_VID_MASK)) {




    m->m_pkthdr.ether_vtag = cq_info.vtag;
    m->m_flags |= M_VLANTAG;
   }
  }
  if_inc_counter(sc->ifp, IFCOUNTER_IPACKETS, 1);

  (*sc->ifp->if_input) (sc->ifp, m);


  rq->rx_stats.rx_pkts++;
  rq->rx_stats.rx_bytes += cq_info.pkt_size;
  rq->rx_stats.rx_frags += cq_info.num_frags;
  rq->rx_stats.rx_ucast_pkts++;
 }
        return;
}

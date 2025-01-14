
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int len; int priority; int vlan; int csum_verified; scalar_t__ has_hwtstamp; scalar_t__ has_hash; } ;
union octeon_rh {TYPE_1__ r_dh; } ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_6__ {int flowid; int ether_vtag; int csum_flags; int len; struct ifnet* rcvif; int csum_data; } ;
struct mbuf {TYPE_2__ m_pkthdr; int m_flags; scalar_t__ m_data; } ;
struct TYPE_7__ {int rx_dropped; int rx_pkts_received; int rx_bytes_received; } ;
struct TYPE_8__ {scalar_t__ lro_cnt; } ;
struct lio_droq {int q_no; TYPE_3__ stats; TYPE_4__ lro; } ;
struct lio {int dummy; } ;
struct ifnet {int dummy; } ;


 int BYTES_PER_DHLEN_UNIT ;
 int CSUM_DATA_VALID ;
 int CSUM_L3_CALC ;
 int CSUM_L3_VALID ;
 int CSUM_L4_CALC ;
 int CSUM_L4_VALID ;
 int CSUM_PSEUDO_HDR ;
 int IFCAP_LRO ;
 int IFCAP_VLAN_HWTAGGING ;
 int LIO_IFSTATE_RUNNING ;
 int LIO_IPSUM_VERIFIED ;
 int LIO_L4SUM_VERIFIED ;






 int M_HASHTYPE_OPAQUE ;
 int M_HASHTYPE_OPAQUE_HASH ;
 int M_HASHTYPE_RSS_IPV4 ;
 int M_HASHTYPE_RSS_IPV6 ;
 int M_HASHTYPE_RSS_IPV6_EX ;
 int M_HASHTYPE_RSS_TCP_IPV4 ;
 int M_HASHTYPE_RSS_TCP_IPV6 ;
 int M_HASHTYPE_RSS_TCP_IPV6_EX ;
 int M_HASHTYPE_SET (struct mbuf*,int ) ;
 int M_PKTHDR ;
 int M_VLANTAG ;
 int htobe32 (int) ;
 int htons (int) ;
 int if_getcapenable (struct ifnet*) ;
 struct lio* if_getsoftc (struct ifnet*) ;
 int if_input (struct ifnet*,struct mbuf*) ;
 scalar_t__ lio_hwlro ;
 int lio_ifstate_check (struct lio*,int ) ;
 int lio_recv_buffer_free (struct mbuf*) ;
 int m_adj (struct mbuf*,int) ;
 scalar_t__ tcp_lro_rx (TYPE_4__*,struct mbuf*,int ) ;

__attribute__((used)) static void
lio_push_packet(void *m_buff, uint32_t len, union octeon_rh *rh, void *rxq,
  void *arg)
{
 struct mbuf *mbuf = m_buff;
 struct ifnet *ifp = arg;
 struct lio_droq *droq = rxq;

 if (ifp != ((void*)0)) {
  struct lio *lio = if_getsoftc(ifp);


  if (!lio_ifstate_check(lio, LIO_IFSTATE_RUNNING)) {
   lio_recv_buffer_free(mbuf);
   droq->stats.rx_dropped++;
   return;
  }

  if (rh->r_dh.has_hash) {
   uint32_t hashtype, hashval;

   if (rh->r_dh.has_hwtstamp) {
    hashval = htobe32(*(uint32_t *)
        (((uint8_t *)mbuf->m_data) +
         ((rh->r_dh.len - 2) *
          BYTES_PER_DHLEN_UNIT)));
    hashtype =
        htobe32(*(((uint32_t *)
            (((uint8_t *)mbuf->m_data) +
      ((rh->r_dh.len - 2) *
       BYTES_PER_DHLEN_UNIT))) + 1));
   } else {
    hashval = htobe32(*(uint32_t *)
        (((uint8_t *)mbuf->m_data) +
         ((rh->r_dh.len - 1) *
          BYTES_PER_DHLEN_UNIT)));
    hashtype =
        htobe32(*(((uint32_t *)
            (((uint8_t *)mbuf->m_data) +
      ((rh->r_dh.len - 1) *
       BYTES_PER_DHLEN_UNIT))) + 1));
   }

   mbuf->m_pkthdr.flowid = hashval;

   switch (hashtype) {
   case 133:
    M_HASHTYPE_SET(mbuf, M_HASHTYPE_RSS_IPV4);
    break;
   case 130:
    M_HASHTYPE_SET(mbuf, M_HASHTYPE_RSS_TCP_IPV4);
    break;
   case 132:
    M_HASHTYPE_SET(mbuf, M_HASHTYPE_RSS_IPV6);
    break;
   case 129:
    M_HASHTYPE_SET(mbuf, M_HASHTYPE_RSS_TCP_IPV6);
    break;
   case 131:
    M_HASHTYPE_SET(mbuf, M_HASHTYPE_RSS_IPV6_EX);
    break;
   case 128:
    M_HASHTYPE_SET(mbuf,
            M_HASHTYPE_RSS_TCP_IPV6_EX);
    break;
   default:
    M_HASHTYPE_SET(mbuf, M_HASHTYPE_OPAQUE_HASH);
   }

  } else {




   M_HASHTYPE_SET(mbuf, M_HASHTYPE_OPAQUE);
   mbuf->m_pkthdr.flowid = droq->q_no;
  }

  m_adj(mbuf, rh->r_dh.len * 8);
  len -= rh->r_dh.len * 8;
  mbuf->m_flags |= M_PKTHDR;

  if ((if_getcapenable(ifp) & IFCAP_VLAN_HWTAGGING) &&
      (rh->r_dh.priority || rh->r_dh.vlan)) {
   uint16_t priority = rh->r_dh.priority;
   uint16_t vid = rh->r_dh.vlan;
   uint16_t vtag;

   vtag = priority << 13 | vid;
   mbuf->m_pkthdr.ether_vtag = vtag;
   mbuf->m_flags |= M_VLANTAG;
  }

  if (rh->r_dh.csum_verified & LIO_IPSUM_VERIFIED)
   mbuf->m_pkthdr.csum_flags |= (CSUM_L3_CALC |
            CSUM_L3_VALID);

  if (rh->r_dh.csum_verified & LIO_L4SUM_VERIFIED) {
   mbuf->m_pkthdr.csum_flags |= (CSUM_L4_CALC |
            CSUM_L4_VALID);
   mbuf->m_pkthdr.csum_flags |= (CSUM_DATA_VALID |
            CSUM_PSEUDO_HDR);
   mbuf->m_pkthdr.csum_data = htons(0xffff);
  }

  mbuf->m_pkthdr.rcvif = ifp;
  mbuf->m_pkthdr.len = len;

  if ((lio_hwlro == 0) &&
      (if_getcapenable(ifp) & IFCAP_LRO) &&
      (mbuf->m_pkthdr.csum_flags &
       (CSUM_L3_VALID | CSUM_L4_VALID | CSUM_DATA_VALID |
        CSUM_PSEUDO_HDR)) == (CSUM_L3_VALID | CSUM_L4_VALID |
         CSUM_DATA_VALID |
         CSUM_PSEUDO_HDR)) {
   if (droq->lro.lro_cnt) {
    if (tcp_lro_rx(&droq->lro, mbuf, 0) == 0) {
     droq->stats.rx_bytes_received += len;
     droq->stats.rx_pkts_received++;
     return;
    }
   }
  }

  if_input(ifp, mbuf);

  droq->stats.rx_bytes_received += len;
  droq->stats.rx_pkts_received++;

 } else {
  lio_recv_buffer_free(mbuf);
  droq->stats.rx_dropped++;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vtnet_txq {int dummy; } ;
struct virtio_net_hdr {int dummy; } ;
struct TYPE_3__ {struct virtio_net_hdr hdr; } ;
struct vtnet_tx_header {TYPE_1__ vth_uhdr; } ;
struct TYPE_4__ {int csum_flags; int ether_vtag; } ;
struct mbuf {int m_flags; TYPE_2__ m_pkthdr; } ;


 int ENOBUFS ;
 int ENOMEM ;
 int M_ASSERTPKTHDR (struct mbuf*) ;
 int M_VLANTAG ;
 int M_ZERO ;
 int VTNET_CSUM_ALL_OFFLOAD ;
 struct mbuf* ether_vlanencap (struct mbuf*,int ) ;
 int m_freem (struct mbuf*) ;
 struct vtnet_tx_header* uma_zalloc (int ,int) ;
 int uma_zfree (int ,struct vtnet_tx_header*) ;
 int vtnet_tx_header_zone ;
 int vtnet_txq_enqueue_buf (struct vtnet_txq*,struct mbuf**,struct vtnet_tx_header*) ;
 struct mbuf* vtnet_txq_offload (struct vtnet_txq*,struct mbuf*,struct virtio_net_hdr*) ;

__attribute__((used)) static int
vtnet_txq_encap(struct vtnet_txq *txq, struct mbuf **m_head, int flags)
{
 struct vtnet_tx_header *txhdr;
 struct virtio_net_hdr *hdr;
 struct mbuf *m;
 int error;

 m = *m_head;
 M_ASSERTPKTHDR(m);

 txhdr = uma_zalloc(vtnet_tx_header_zone, flags | M_ZERO);
 if (txhdr == ((void*)0)) {
  m_freem(m);
  *m_head = ((void*)0);
  return (ENOMEM);
 }






 hdr = &txhdr->vth_uhdr.hdr;

 if (m->m_flags & M_VLANTAG) {
  m = ether_vlanencap(m, m->m_pkthdr.ether_vtag);
  if ((*m_head = m) == ((void*)0)) {
   error = ENOBUFS;
   goto fail;
  }
  m->m_flags &= ~M_VLANTAG;
 }

 if (m->m_pkthdr.csum_flags & VTNET_CSUM_ALL_OFFLOAD) {
  m = vtnet_txq_offload(txq, m, hdr);
  if ((*m_head = m) == ((void*)0)) {
   error = ENOBUFS;
   goto fail;
  }
 }

 error = vtnet_txq_enqueue_buf(txq, m_head, txhdr);
 if (error == 0)
  return (0);

fail:
 uma_zfree(vtnet_tx_header_zone, txhdr);

 return (error);
}

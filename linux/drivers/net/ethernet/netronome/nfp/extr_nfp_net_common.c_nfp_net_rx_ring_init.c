
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_net_rx_ring {unsigned int idx; int fl_qcidx; scalar_t__ qcp_fl; struct nfp_net_r_vector* r_vec; } ;
struct nfp_net_r_vector {int rx_sync; struct nfp_net* nfp_net; } ;
struct nfp_net {int stride_rx; scalar_t__ rx_bar; } ;


 scalar_t__ NFP_QCP_QUEUE_OFF (int) ;
 int u64_stats_init (int *) ;

__attribute__((used)) static void
nfp_net_rx_ring_init(struct nfp_net_rx_ring *rx_ring,
       struct nfp_net_r_vector *r_vec, unsigned int idx)
{
 struct nfp_net *nn = r_vec->nfp_net;

 rx_ring->idx = idx;
 rx_ring->r_vec = r_vec;
 u64_stats_init(&rx_ring->r_vec->rx_sync);

 rx_ring->fl_qcidx = rx_ring->idx * nn->stride_rx;
 rx_ring->qcp_fl = nn->rx_bar + NFP_QCP_QUEUE_OFF(rx_ring->fl_qcidx);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aq_vec_s {unsigned int tx_rings; struct aq_ring_s** ring; } ;
struct aq_ring_s {int dummy; } ;


 size_t AQ_VEC_RX_ID ;
 size_t AQ_VEC_TX_ID ;
 int aq_ring_rx_deinit (struct aq_ring_s*) ;
 int aq_ring_tx_clean (struct aq_ring_s*) ;

void aq_vec_deinit(struct aq_vec_s *self)
{
 struct aq_ring_s *ring = ((void*)0);
 unsigned int i = 0U;

 if (!self)
  goto err_exit;

 for (i = 0U, ring = self->ring[0];
  self->tx_rings > i; ++i, ring = self->ring[i]) {
  aq_ring_tx_clean(&ring[AQ_VEC_TX_ID]);
  aq_ring_rx_deinit(&ring[AQ_VEC_RX_ID]);
 }
err_exit:;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hw_atl_rxd_s {unsigned int hdr_addr; int buf_addr; } ;
struct aq_ring_s {unsigned int sw_tail; int idx; struct aq_ring_buff_s* buff_ring; int * dx_ring; } ;
struct aq_ring_buff_s {int pa; } ;
struct aq_hw_s {int dummy; } ;


 unsigned int HW_ATL_B0_RXD_SIZE ;
 int aq_hw_err_from_flags (struct aq_hw_s*) ;
 unsigned int aq_ring_next_dx (struct aq_ring_s*,unsigned int) ;
 int hw_atl_reg_rx_dma_desc_tail_ptr_set (struct aq_hw_s*,unsigned int,int ) ;

__attribute__((used)) static int hw_atl_b0_hw_ring_rx_fill(struct aq_hw_s *self,
         struct aq_ring_s *ring,
         unsigned int sw_tail_old)
{
 for (; sw_tail_old != ring->sw_tail;
  sw_tail_old = aq_ring_next_dx(ring, sw_tail_old)) {
  struct hw_atl_rxd_s *rxd =
   (struct hw_atl_rxd_s *)&ring->dx_ring[sw_tail_old *
       HW_ATL_B0_RXD_SIZE];

  struct aq_ring_buff_s *buff = &ring->buff_ring[sw_tail_old];

  rxd->buf_addr = buff->pa;
  rxd->hdr_addr = 0U;
 }

 hw_atl_reg_rx_dma_desc_tail_ptr_set(self, sw_tail_old, ring->idx);

 return aq_hw_err_from_flags(self);
}

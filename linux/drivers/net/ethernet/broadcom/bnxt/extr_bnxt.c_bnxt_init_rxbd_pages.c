
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct rx_bd {scalar_t__ rx_bd_opaque; int rx_bd_len_flags_type; } ;
struct TYPE_2__ {int nr_pages; scalar_t__ pg_arr; } ;
struct bnxt_ring_struct {TYPE_1__ ring_mem; } ;


 int RX_DESC_CNT ;
 int cpu_to_le32 (scalar_t__) ;

__attribute__((used)) static void bnxt_init_rxbd_pages(struct bnxt_ring_struct *ring, u32 type)
{
 int i;
 u32 prod;
 struct rx_bd **rx_buf_ring;

 rx_buf_ring = (struct rx_bd **)ring->ring_mem.pg_arr;
 for (i = 0, prod = 0; i < ring->ring_mem.nr_pages; i++) {
  int j;
  struct rx_bd *rxbd;

  rxbd = rx_buf_ring[i];
  if (!rxbd)
   continue;

  for (j = 0; j < RX_DESC_CNT; j++, rxbd++, prod++) {
   rxbd->rx_bd_len_flags_type = cpu_to_le32(type);
   rxbd->rx_bd_opaque = prod;
  }
 }
}

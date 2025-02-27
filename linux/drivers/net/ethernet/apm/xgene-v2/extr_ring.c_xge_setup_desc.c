
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct xge_raw_desc {void* m1; void* m0; } ;
struct xge_desc_ring {int dma_addr; struct xge_raw_desc* raw_desc; } ;
typedef int dma_addr_t ;


 int E ;
 int NEXT_DESC_ADDRH ;
 int NEXT_DESC_ADDRL ;
 int PKT_SIZE ;
 int SET_BITS (int ,int) ;
 int SLOT_EMPTY ;
 int XGENE_ENET_DESC_SIZE ;
 int XGENE_ENET_NUM_DESC ;
 void* cpu_to_le64 (int) ;
 int upper_32_bits (int) ;

void xge_setup_desc(struct xge_desc_ring *ring)
{
 struct xge_raw_desc *raw_desc;
 dma_addr_t dma_h, next_dma;
 u16 offset;
 int i;

 for (i = 0; i < XGENE_ENET_NUM_DESC; i++) {
  raw_desc = &ring->raw_desc[i];

  offset = (i + 1) & (XGENE_ENET_NUM_DESC - 1);
  next_dma = ring->dma_addr + (offset * XGENE_ENET_DESC_SIZE);

  raw_desc->m0 = cpu_to_le64(SET_BITS(E, 1) |
        SET_BITS(PKT_SIZE, SLOT_EMPTY));
  dma_h = upper_32_bits(next_dma);
  raw_desc->m1 = cpu_to_le64(SET_BITS(NEXT_DESC_ADDRL, next_dma) |
        SET_BITS(NEXT_DESC_ADDRH, dma_h));
 }
}

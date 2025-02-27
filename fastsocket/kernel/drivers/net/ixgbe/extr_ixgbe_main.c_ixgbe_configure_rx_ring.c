
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ixgbe_adv_rx_desc {int dummy; } ixgbe_adv_rx_desc ;
typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct ixgbe_ring {int dma; int count; scalar_t__ tail; int reg_idx; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct ixgbe_hw {TYPE_1__ mac; scalar_t__ hw_addr; } ;
struct ixgbe_adapter {struct ixgbe_hw hw; } ;


 int DMA_BIT_MASK (int) ;
 scalar_t__ IXGBE_RDBAH (int ) ;
 scalar_t__ IXGBE_RDBAL (int ) ;
 scalar_t__ IXGBE_RDH (int ) ;
 scalar_t__ IXGBE_RDLEN (int ) ;
 scalar_t__ IXGBE_RDT (int ) ;
 int IXGBE_READ_REG (struct ixgbe_hw*,scalar_t__) ;
 scalar_t__ IXGBE_RXDCTL (int ) ;
 int IXGBE_RXDCTL_ENABLE ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,scalar_t__,int) ;
 int ixgbe_alloc_rx_buffers (struct ixgbe_ring*,int ) ;
 int ixgbe_configure_rscctl (struct ixgbe_adapter*,struct ixgbe_ring*) ;
 int ixgbe_configure_srrctl (struct ixgbe_adapter*,struct ixgbe_ring*) ;
 int ixgbe_desc_unused (struct ixgbe_ring*) ;
 int ixgbe_disable_rx_queue (struct ixgbe_adapter*,struct ixgbe_ring*) ;
 scalar_t__ ixgbe_mac_82598EB ;
 int ixgbe_rx_desc_queue_enable (struct ixgbe_adapter*,struct ixgbe_ring*) ;

void ixgbe_configure_rx_ring(struct ixgbe_adapter *adapter,
        struct ixgbe_ring *ring)
{
 struct ixgbe_hw *hw = &adapter->hw;
 u64 rdba = ring->dma;
 u32 rxdctl;
 u8 reg_idx = ring->reg_idx;


 rxdctl = IXGBE_READ_REG(hw, IXGBE_RXDCTL(reg_idx));
 ixgbe_disable_rx_queue(adapter, ring);

 IXGBE_WRITE_REG(hw, IXGBE_RDBAL(reg_idx), (rdba & DMA_BIT_MASK(32)));
 IXGBE_WRITE_REG(hw, IXGBE_RDBAH(reg_idx), (rdba >> 32));
 IXGBE_WRITE_REG(hw, IXGBE_RDLEN(reg_idx),
   ring->count * sizeof(union ixgbe_adv_rx_desc));
 IXGBE_WRITE_REG(hw, IXGBE_RDH(reg_idx), 0);
 IXGBE_WRITE_REG(hw, IXGBE_RDT(reg_idx), 0);
 ring->tail = hw->hw_addr + IXGBE_RDT(reg_idx);

 ixgbe_configure_srrctl(adapter, ring);
 ixgbe_configure_rscctl(adapter, ring);

 if (hw->mac.type == ixgbe_mac_82598EB) {







  rxdctl &= ~0x3FFFFF;
  rxdctl |= 0x080420;
 }


 rxdctl |= IXGBE_RXDCTL_ENABLE;
 IXGBE_WRITE_REG(hw, IXGBE_RXDCTL(reg_idx), rxdctl);

 ixgbe_rx_desc_queue_enable(adapter, ring);
 ixgbe_alloc_rx_buffers(ring, ixgbe_desc_unused(ring));
}

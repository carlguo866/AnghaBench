
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct sk_buff {int * cb; int data; int dev; } ;
struct TYPE_4__ {void* expires; } ;
struct nes_hw_mgt {int replenishing_rq; int rq_size; size_t rq_head; int qp_id; int rq_lock; struct sk_buff** rx_skb; struct nes_hw_nic_rq_wqe* rq_vbase; } ;
struct nes_vnic_mgt {TYPE_2__ rq_wqes_timer; int rx_skb_timer_running; int rx_skbs_needed; TYPE_1__* nesvnic; struct nes_hw_mgt mgt; } ;
struct nes_rskb_cb {int maplen; scalar_t__ busaddr; } ;
struct nes_hw_nic_rq_wqe {void** wqe_words; } ;
struct nes_device {scalar_t__ regs; int pcidev; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_3__ {int max_frame_size; int netdev; struct nes_device* nesdev; } ;


 int HZ ;
 size_t NES_NIC_RQ_WQE_FRAG0_HIGH_IDX ;
 size_t NES_NIC_RQ_WQE_FRAG0_LOW_IDX ;
 size_t NES_NIC_RQ_WQE_LENGTH_1_0_IDX ;
 size_t NES_NIC_RQ_WQE_LENGTH_3_2_IDX ;
 scalar_t__ NES_WQE_ALLOC ;
 int PCI_DMA_FROMDEVICE ;
 int add_timer (TYPE_2__*) ;
 int atomic_dec (int *) ;
 int atomic_read (int *) ;
 int atomic_set (int *,int) ;
 int barrier () ;
 void* cpu_to_le32 (int) ;
 struct sk_buff* dev_alloc_skb (int) ;
 void* jiffies ;
 int nes_write32 (scalar_t__,int) ;
 scalar_t__ pci_map_single (int ,int ,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void nes_replenish_mgt_rq(struct nes_vnic_mgt *mgtvnic)
{
 unsigned long flags;
 dma_addr_t bus_address;
 struct sk_buff *skb;
 struct nes_hw_nic_rq_wqe *nic_rqe;
 struct nes_hw_mgt *nesmgt;
 struct nes_device *nesdev;
 struct nes_rskb_cb *cb;
 u32 rx_wqes_posted = 0;

 nesmgt = &mgtvnic->mgt;
 nesdev = mgtvnic->nesvnic->nesdev;
 spin_lock_irqsave(&nesmgt->rq_lock, flags);
 if (nesmgt->replenishing_rq != 0) {
  if (((nesmgt->rq_size - 1) == atomic_read(&mgtvnic->rx_skbs_needed)) &&
      (atomic_read(&mgtvnic->rx_skb_timer_running) == 0)) {
   atomic_set(&mgtvnic->rx_skb_timer_running, 1);
   spin_unlock_irqrestore(&nesmgt->rq_lock, flags);
   mgtvnic->rq_wqes_timer.expires = jiffies + (HZ / 2);
   add_timer(&mgtvnic->rq_wqes_timer);
  } else {
   spin_unlock_irqrestore(&nesmgt->rq_lock, flags);
  }
  return;
 }
 nesmgt->replenishing_rq = 1;
 spin_unlock_irqrestore(&nesmgt->rq_lock, flags);
 do {
  skb = dev_alloc_skb(mgtvnic->nesvnic->max_frame_size);
  if (skb) {
   skb->dev = mgtvnic->nesvnic->netdev;

   bus_address = pci_map_single(nesdev->pcidev,
           skb->data, mgtvnic->nesvnic->max_frame_size, PCI_DMA_FROMDEVICE);
   cb = (struct nes_rskb_cb *)&skb->cb[0];
   cb->busaddr = bus_address;
   cb->maplen = mgtvnic->nesvnic->max_frame_size;

   nic_rqe = &nesmgt->rq_vbase[mgtvnic->mgt.rq_head];
   nic_rqe->wqe_words[NES_NIC_RQ_WQE_LENGTH_1_0_IDX] =
    cpu_to_le32(mgtvnic->nesvnic->max_frame_size);
   nic_rqe->wqe_words[NES_NIC_RQ_WQE_LENGTH_3_2_IDX] = 0;
   nic_rqe->wqe_words[NES_NIC_RQ_WQE_FRAG0_LOW_IDX] =
    cpu_to_le32((u32)bus_address);
   nic_rqe->wqe_words[NES_NIC_RQ_WQE_FRAG0_HIGH_IDX] =
    cpu_to_le32((u32)((u64)bus_address >> 32));
   nesmgt->rx_skb[nesmgt->rq_head] = skb;
   nesmgt->rq_head++;
   nesmgt->rq_head &= nesmgt->rq_size - 1;
   atomic_dec(&mgtvnic->rx_skbs_needed);
   barrier();
   if (++rx_wqes_posted == 255) {
    nes_write32(nesdev->regs + NES_WQE_ALLOC, (rx_wqes_posted << 24) | nesmgt->qp_id);
    rx_wqes_posted = 0;
   }
  } else {
   spin_lock_irqsave(&nesmgt->rq_lock, flags);
   if (((nesmgt->rq_size - 1) == atomic_read(&mgtvnic->rx_skbs_needed)) &&
       (atomic_read(&mgtvnic->rx_skb_timer_running) == 0)) {
    atomic_set(&mgtvnic->rx_skb_timer_running, 1);
    spin_unlock_irqrestore(&nesmgt->rq_lock, flags);
    mgtvnic->rq_wqes_timer.expires = jiffies + (HZ / 2);
    add_timer(&mgtvnic->rq_wqes_timer);
   } else {
    spin_unlock_irqrestore(&nesmgt->rq_lock, flags);
   }
   break;
  }
 } while (atomic_read(&mgtvnic->rx_skbs_needed));
 barrier();
 if (rx_wqes_posted)
  nes_write32(nesdev->regs + NES_WQE_ALLOC, (rx_wqes_posted << 24) | nesmgt->qp_id);
 nesmgt->replenishing_rq = 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct pci_dev {int dummy; } ;
struct atl1c_tpd_ring {size_t count; int next_to_clean; struct atl1c_buffer* buffer_info; } ;
struct atl1c_buffer {TYPE_1__* skb; } ;
struct atl1c_adapter {int netdev; int hw; struct pci_dev* pdev; struct atl1c_tpd_ring* tpd_ring; } ;
typedef enum atl1c_trans_queue { ____Placeholder_atl1c_trans_queue } atl1c_trans_queue ;
struct TYPE_2__ {scalar_t__ len; } ;


 int AT_READ_REGW (int *,size_t,size_t*) ;
 size_t REG_TPD_PRI0_CIDX ;
 size_t REG_TPD_PRI1_CIDX ;
 int atl1c_clean_buffer (struct pci_dev*,struct atl1c_buffer*) ;
 int atl1c_trans_high ;
 size_t atomic_read (int *) ;
 int atomic_set (int *,size_t) ;
 int netdev_completed_queue (int ,unsigned int,unsigned int) ;
 scalar_t__ netif_carrier_ok (int ) ;
 scalar_t__ netif_queue_stopped (int ) ;
 int netif_wake_queue (int ) ;

__attribute__((used)) static bool atl1c_clean_tx_irq(struct atl1c_adapter *adapter,
    enum atl1c_trans_queue type)
{
 struct atl1c_tpd_ring *tpd_ring = &adapter->tpd_ring[type];
 struct atl1c_buffer *buffer_info;
 struct pci_dev *pdev = adapter->pdev;
 u16 next_to_clean = atomic_read(&tpd_ring->next_to_clean);
 u16 hw_next_to_clean;
 u16 reg;
 unsigned int total_bytes = 0, total_packets = 0;

 reg = type == atl1c_trans_high ? REG_TPD_PRI1_CIDX : REG_TPD_PRI0_CIDX;

 AT_READ_REGW(&adapter->hw, reg, &hw_next_to_clean);

 while (next_to_clean != hw_next_to_clean) {
  buffer_info = &tpd_ring->buffer_info[next_to_clean];
  if (buffer_info->skb) {
   total_bytes += buffer_info->skb->len;
   total_packets++;
  }
  atl1c_clean_buffer(pdev, buffer_info);
  if (++next_to_clean == tpd_ring->count)
   next_to_clean = 0;
  atomic_set(&tpd_ring->next_to_clean, next_to_clean);
 }

 netdev_completed_queue(adapter->netdev, total_packets, total_bytes);

 if (netif_queue_stopped(adapter->netdev) &&
   netif_carrier_ok(adapter->netdev)) {
  netif_wake_queue(adapter->netdev);
 }

 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct txentry_desc {int dummy; } ;
struct rt2x00_dev {int dummy; } ;
struct queue_entry {TYPE_1__* queue; } ;
struct TYPE_2__ {struct rt2x00_dev* rt2x00dev; } ;


 int CSR14 ;
 int CSR14_BEACON_GEN ;
 int DUMP_FRAME_BEACON ;
 int rt2400pci_write_tx_desc (struct queue_entry*,struct txentry_desc*) ;
 int rt2x00_err (struct rt2x00_dev*,char*) ;
 int rt2x00_set_field32 (int *,int ,int) ;
 int rt2x00debug_dump_frame (struct rt2x00_dev*,int ,struct queue_entry*) ;
 int rt2x00mmio_register_read (struct rt2x00_dev*,int ) ;
 int rt2x00mmio_register_write (struct rt2x00_dev*,int ,int ) ;
 scalar_t__ rt2x00queue_map_txskb (struct queue_entry*) ;

__attribute__((used)) static void rt2400pci_write_beacon(struct queue_entry *entry,
       struct txentry_desc *txdesc)
{
 struct rt2x00_dev *rt2x00dev = entry->queue->rt2x00dev;
 u32 reg;





 reg = rt2x00mmio_register_read(rt2x00dev, CSR14);
 rt2x00_set_field32(&reg, CSR14_BEACON_GEN, 0);
 rt2x00mmio_register_write(rt2x00dev, CSR14, reg);

 if (rt2x00queue_map_txskb(entry)) {
  rt2x00_err(rt2x00dev, "Fail to map beacon, aborting\n");
  goto out;
 }



 rt2x00_set_field32(&reg, CSR14_BEACON_GEN, 1);



 rt2400pci_write_tx_desc(entry, txdesc);




 rt2x00debug_dump_frame(rt2x00dev, DUMP_FRAME_BEACON, entry);
out:



 rt2x00_set_field32(&reg, CSR14_BEACON_GEN, 1);
 rt2x00mmio_register_write(rt2x00dev, CSR14, reg);
}

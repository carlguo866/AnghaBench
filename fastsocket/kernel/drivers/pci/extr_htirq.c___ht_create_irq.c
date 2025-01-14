
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {int dev; } ;
struct TYPE_2__ {int address_lo; int address_hi; } ;
struct ht_irq_cfg {int pos; int idx; TYPE_1__ msg; int * update; struct pci_dev* dev; } ;
typedef int ht_irq_update_t ;


 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HT_CAPTYPE_IRQ ;
 scalar_t__ arch_setup_ht_irq (int,struct pci_dev*) ;
 int create_irq_nr (int ,int) ;
 int dev_to_node (int *) ;
 int ht_destroy_irq (int) ;
 int ht_irq_lock ;
 int kfree (struct ht_irq_cfg*) ;
 struct ht_irq_cfg* kmalloc (int,int ) ;
 int pci_find_ht_capability (struct pci_dev*,int ) ;
 int pci_read_config_dword (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;
 int set_irq_data (int,struct ht_irq_cfg*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int __ht_create_irq(struct pci_dev *dev, int idx, ht_irq_update_t *update)
{
 struct ht_irq_cfg *cfg;
 unsigned long flags;
 u32 data;
 int max_irq;
 int pos;
 int irq;
 int node;

 pos = pci_find_ht_capability(dev, HT_CAPTYPE_IRQ);
 if (!pos)
  return -EINVAL;


 spin_lock_irqsave(&ht_irq_lock, flags);
 pci_write_config_byte(dev, pos + 2, 1);
 pci_read_config_dword(dev, pos + 4, &data);
 spin_unlock_irqrestore(&ht_irq_lock, flags);

 max_irq = (data >> 16) & 0xff;
 if ( idx > max_irq)
  return -EINVAL;

 cfg = kmalloc(sizeof(*cfg), GFP_KERNEL);
 if (!cfg)
  return -ENOMEM;

 cfg->dev = dev;
 cfg->update = update;
 cfg->pos = pos;
 cfg->idx = 0x10 + (idx * 2);

 cfg->msg.address_lo = 0xffffffff;
 cfg->msg.address_hi = 0xffffffff;

 node = dev_to_node(&dev->dev);
 irq = create_irq_nr(0, node);

 if (irq <= 0) {
  kfree(cfg);
  return -EBUSY;
 }
 set_irq_data(irq, cfg);

 if (arch_setup_ht_irq(irq, dev) < 0) {
  ht_destroy_irq(irq);
  return -EBUSY;
 }

 return irq;
}

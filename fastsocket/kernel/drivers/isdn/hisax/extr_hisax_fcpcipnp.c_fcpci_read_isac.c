
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isac {struct fritz_adapter* priv; } ;
struct fritz_adapter {int hw_lock; scalar_t__ io; } ;


 scalar_t__ AVM_DATA ;
 unsigned char AVM_IDX_ISAC_REG_HIGH ;
 unsigned char AVM_IDX_ISAC_REG_LOW ;
 scalar_t__ AVM_INDEX ;
 int DBG (int,char*,unsigned char,unsigned char) ;
 unsigned char inb (scalar_t__) ;
 int outb (unsigned char,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static unsigned char fcpci_read_isac(struct isac *isac, unsigned char offset)
{
 struct fritz_adapter *adapter = isac->priv;
 unsigned char idx = (offset > 0x2f) ?
  AVM_IDX_ISAC_REG_HIGH : AVM_IDX_ISAC_REG_LOW;
 unsigned char val;
 unsigned long flags;

 spin_lock_irqsave(&adapter->hw_lock, flags);
 outb(idx, adapter->io + AVM_INDEX);
 val = inb(adapter->io + AVM_DATA + (offset & 0xf));
  spin_unlock_irqrestore(&adapter->hw_lock, flags);
 DBG(0x1000, " port %#x, value %#x",
     offset, val);
 return val;
}

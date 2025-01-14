
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int polarity; scalar_t__ trig_mode; int remote_irr; } ;
union kvm_ioapic_redirect_entry {int bits; TYPE_1__ fields; } ;
typedef scalar_t__ u32 ;
struct kvm_ioapic {scalar_t__ irr; int lock; union kvm_ioapic_redirect_entry* redirtbl; int * irq_states; } ;


 scalar_t__ IOAPIC_EDGE_TRIG ;
 int IOAPIC_NUM_PINS ;
 int __kvm_irq_line_state (int *,int,int) ;
 int ioapic_service (struct kvm_ioapic*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_kvm_ioapic_set_irq (int ,int,int) ;

int kvm_ioapic_set_irq(struct kvm_ioapic *ioapic, int irq, int irq_source_id,
         int level)
{
 u32 old_irr;
 u32 mask = 1 << irq;
 union kvm_ioapic_redirect_entry entry;
 int ret = 1;

 spin_lock(&ioapic->lock);
 old_irr = ioapic->irr;
 if (irq >= 0 && irq < IOAPIC_NUM_PINS) {
  int irq_level = __kvm_irq_line_state(&ioapic->irq_states[irq],
           irq_source_id, level);
  entry = ioapic->redirtbl[irq];
  irq_level ^= entry.fields.polarity;
  if (!irq_level)
   ioapic->irr &= ~mask;
  else {
   int edge = (entry.fields.trig_mode == IOAPIC_EDGE_TRIG);
   ioapic->irr |= mask;
   if ((edge && old_irr != ioapic->irr) ||
       (!edge && !entry.fields.remote_irr))
    ret = ioapic_service(ioapic, irq);
   else
    ret = 0;
  }
  trace_kvm_ioapic_set_irq(entry.bits, irq, ret == 0);
 }
 spin_unlock(&ioapic->lock);

 return ret;
}

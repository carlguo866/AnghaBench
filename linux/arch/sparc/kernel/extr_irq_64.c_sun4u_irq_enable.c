
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_handler_data {unsigned long imap; unsigned long iclr; } ;
struct irq_data {int irq; } ;


 unsigned long ICLR_IDLE ;
 unsigned long IMAP_AID_SAFARI ;
 unsigned long IMAP_NID_SAFARI ;
 unsigned long IMAP_TID_JBUS ;
 unsigned long IMAP_TID_UPA ;
 unsigned int IMAP_VALID ;
 unsigned long irq_choose_cpu (int ,int ) ;
 int irq_data_get_affinity_mask (struct irq_data*) ;
 struct irq_handler_data* irq_data_get_irq_handler_data (struct irq_data*) ;
 scalar_t__ likely (struct irq_handler_data*) ;
 unsigned int sun4u_compute_tid (unsigned long,unsigned long) ;
 unsigned long upa_readq (unsigned long) ;
 int upa_writeq (unsigned long,unsigned long) ;

__attribute__((used)) static void sun4u_irq_enable(struct irq_data *data)
{
 struct irq_handler_data *handler_data;

 handler_data = irq_data_get_irq_handler_data(data);
 if (likely(handler_data)) {
  unsigned long cpuid, imap, val;
  unsigned int tid;

  cpuid = irq_choose_cpu(data->irq,
           irq_data_get_affinity_mask(data));
  imap = handler_data->imap;

  tid = sun4u_compute_tid(imap, cpuid);

  val = upa_readq(imap);
  val &= ~(IMAP_TID_UPA | IMAP_TID_JBUS |
    IMAP_AID_SAFARI | IMAP_NID_SAFARI);
  val |= tid | IMAP_VALID;
  upa_writeq(val, imap);
  upa_writeq(ICLR_IDLE, handler_data->iclr);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int lock; } ;


 scalar_t__ CPU_VR4122 ;
 scalar_t__ CPU_VR4131 ;
 scalar_t__ CPU_VR4133 ;
 int MSCUINTREG ;
 int SCUINT0 ;
 int SCU_IRQ ;
 scalar_t__ current_cpu_type () ;
 int icu2_write (int ,int ) ;
 struct irq_desc* irq_to_desc (int ) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

void vr41xx_enable_scuint(void)
{
 struct irq_desc *desc = irq_to_desc(SCU_IRQ);
 unsigned long flags;

 if (current_cpu_type() == CPU_VR4122 ||
     current_cpu_type() == CPU_VR4131 ||
     current_cpu_type() == CPU_VR4133) {
  raw_spin_lock_irqsave(&desc->lock, flags);
  icu2_write(MSCUINTREG, SCUINT0);
  raw_spin_unlock_irqrestore(&desc->lock, flags);
 }
}

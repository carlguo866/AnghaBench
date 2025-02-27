
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_data {unsigned int irq; } ;


 unsigned int EMMA2RH_BHIF_INT_EN_0 ;
 unsigned int EMMA2RH_BHIF_INT_EN_1 ;
 unsigned int EMMA2RH_IRQ_BASE ;
 int emma2rh_in32 (int) ;
 int emma2rh_out32 (int,int) ;

__attribute__((used)) static void emma2rh_irq_disable(struct irq_data *d)
{
 unsigned int irq = d->irq - EMMA2RH_IRQ_BASE;
 u32 reg_value, reg_bitmask, reg_index;

 reg_index = EMMA2RH_BHIF_INT_EN_0 +
      (EMMA2RH_BHIF_INT_EN_1 - EMMA2RH_BHIF_INT_EN_0) * (irq / 32);
 reg_value = emma2rh_in32(reg_index);
 reg_bitmask = 0x1 << (irq % 32);
 emma2rh_out32(reg_index, reg_value & ~reg_bitmask);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int IR_FIRMODE ;
 int IR_OFF ;
 int IR_SIRMODE ;
 int MST_MSCWR1 ;
 int MST_MSCWR1_IRDA_FIR ;
 int MST_MSCWR1_IRDA_FULL ;
 int MST_MSCWR1_IRDA_MASK ;
 int MST_MSCWR1_IRDA_OFF ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int pxa2xx_transceiver_mode (struct device*,int) ;

__attribute__((used)) static void mainstone_irda_transceiver_mode(struct device *dev, int mode)
{
 unsigned long flags;

 local_irq_save(flags);
 if (mode & IR_SIRMODE) {
  MST_MSCWR1 &= ~MST_MSCWR1_IRDA_FIR;
 } else if (mode & IR_FIRMODE) {
  MST_MSCWR1 |= MST_MSCWR1_IRDA_FIR;
 }
 pxa2xx_transceiver_mode(dev, mode);
 if (mode & IR_OFF) {
  MST_MSCWR1 = (MST_MSCWR1 & ~MST_MSCWR1_IRDA_MASK) | MST_MSCWR1_IRDA_OFF;
 } else {
  MST_MSCWR1 = (MST_MSCWR1 & ~MST_MSCWR1_IRDA_MASK) | MST_MSCWR1_IRDA_FULL;
 }
 local_irq_restore(flags);
}

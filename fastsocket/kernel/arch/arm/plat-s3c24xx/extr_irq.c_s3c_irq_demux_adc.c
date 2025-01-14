
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int dummy; } ;


 int IRQ_ADC ;
 int IRQ_TC ;
 int S3C2410_INTSUBMSK ;
 int S3C2410_SUBSRCPND ;
 unsigned int __raw_readl (int ) ;
 int generic_handle_irq (int ) ;

__attribute__((used)) static void s3c_irq_demux_adc(unsigned int irq,
         struct irq_desc *desc)
{
 unsigned int subsrc, submsk;
 unsigned int offset = 9;




 subsrc = __raw_readl(S3C2410_SUBSRCPND);
 submsk = __raw_readl(S3C2410_INTSUBMSK);

 subsrc &= ~submsk;
 subsrc >>= offset;
 subsrc &= 3;

 if (subsrc != 0) {
  if (subsrc & 1) {
   generic_handle_irq(IRQ_TC);
  }
  if (subsrc & 2) {
   generic_handle_irq(IRQ_ADC);
  }
 }
}

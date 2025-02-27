
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct socrates_fpga_irq_info {unsigned int type; size_t irq_line; } ;
struct irq_domain {int dummy; } ;
struct device_node {int dummy; } ;
typedef size_t irq_hw_number_t ;


 size_t const IRQ_TYPE_LEVEL_HIGH ;
 size_t const IRQ_TYPE_LEVEL_LOW ;
 unsigned int IRQ_TYPE_NONE ;
 struct socrates_fpga_irq_info* fpga_irqs ;
 int pr_warn (char*) ;

__attribute__((used)) static int socrates_fpga_pic_host_xlate(struct irq_domain *h,
  struct device_node *ct, const u32 *intspec, unsigned int intsize,
  irq_hw_number_t *out_hwirq, unsigned int *out_flags)
{
 struct socrates_fpga_irq_info *fpga_irq = &fpga_irqs[intspec[0]];

 *out_hwirq = intspec[0];
 if (fpga_irq->type == IRQ_TYPE_NONE) {

  if (intspec[1] != IRQ_TYPE_LEVEL_LOW &&
      intspec[1] != IRQ_TYPE_LEVEL_HIGH) {
   pr_warn("FPGA PIC: invalid irq type, setting default active low\n");
   *out_flags = IRQ_TYPE_LEVEL_LOW;
  } else {
   *out_flags = intspec[1];
  }
 } else {

  *out_flags = fpga_irq->type;
 }


 if (intspec[2] <= 2)
  fpga_irq->irq_line = intspec[2];
 else
  pr_warn("FPGA PIC: invalid irq routing\n");

 return 0;
}

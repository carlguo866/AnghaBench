
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {unsigned long hwirq; } ;


 int SPR_PICMR ;
 unsigned long mfspr (int ) ;
 int mtspr (int ,unsigned long) ;

__attribute__((used)) static void or1k_pic_unmask(struct irq_data *data)
{
 mtspr(SPR_PICMR, mfspr(SPR_PICMR) | (1UL << data->hwirq));
}

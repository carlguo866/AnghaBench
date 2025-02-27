
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int * isr_table_vc; } ;
struct dsi_data {int irq_lock; TYPE_1__ isr_tables; } ;
typedef int omap_dsi_isr_t ;


 int ARRAY_SIZE (int ) ;
 int _dsi_unregister_isr (int ,void*,int ,int ,int ) ;
 int _omap_dsi_set_irqs_vc (struct dsi_data*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int dsi_unregister_isr_vc(struct dsi_data *dsi, int channel,
     omap_dsi_isr_t isr, void *arg, u32 mask)
{
 unsigned long flags;
 int r;

 spin_lock_irqsave(&dsi->irq_lock, flags);

 r = _dsi_unregister_isr(isr, arg, mask,
   dsi->isr_tables.isr_table_vc[channel],
   ARRAY_SIZE(dsi->isr_tables.isr_table_vc[channel]));

 if (r == 0)
  _omap_dsi_set_irqs_vc(dsi, channel);

 spin_unlock_irqrestore(&dsi->irq_lock, flags);

 return r;
}

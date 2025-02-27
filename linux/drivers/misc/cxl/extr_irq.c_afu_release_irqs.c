
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int* range; int * offset; } ;
struct cxl_context {scalar_t__ irq_count; TYPE_1__* afu; TYPE_2__ irqs; } ;
typedef int irq_hw_number_t ;
struct TYPE_6__ {int (* release_irq_ranges ) (TYPE_2__*,int ) ;} ;
struct TYPE_4__ {int adapter; } ;


 int CXL_IRQ_RANGES ;
 int afu_irq_name_free (struct cxl_context*) ;
 int afu_irq_range_start () ;
 TYPE_3__* cxl_ops ;
 int cxl_unmap_irq (unsigned int,void*) ;
 unsigned int irq_find_mapping (int *,int ) ;
 int stub1 (TYPE_2__*,int ) ;

void afu_release_irqs(struct cxl_context *ctx, void *cookie)
{
 irq_hw_number_t hwirq;
 unsigned int virq;
 int r, i;

 for (r = afu_irq_range_start(); r < CXL_IRQ_RANGES; r++) {
  hwirq = ctx->irqs.offset[r];
  for (i = 0; i < ctx->irqs.range[r]; hwirq++, i++) {
   virq = irq_find_mapping(((void*)0), hwirq);
   if (virq)
    cxl_unmap_irq(virq, cookie);
  }
 }

 afu_irq_name_free(ctx);
 cxl_ops->release_irq_ranges(&ctx->irqs, ctx->afu->adapter);

 ctx->irq_count = 0;
}

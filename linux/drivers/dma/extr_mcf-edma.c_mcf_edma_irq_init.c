
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; int end; } ;
struct platform_device {int dummy; } ;
struct fsl_edma_engine {int dummy; } ;


 int ENXIO ;
 int IORESOURCE_IRQ ;
 int mcf_edma_err_handler ;
 int mcf_edma_tx_handler ;
 int platform_get_irq_byname (struct platform_device*,char*) ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char*) ;
 int request_irq (int,int ,int ,char*,struct fsl_edma_engine*) ;

__attribute__((used)) static int mcf_edma_irq_init(struct platform_device *pdev,
    struct fsl_edma_engine *mcf_edma)
{
 int ret = 0, i;
 struct resource *res;

 res = platform_get_resource_byname(pdev,
    IORESOURCE_IRQ, "edma-tx-00-15");
 if (!res)
  return -1;

 for (ret = 0, i = res->start; i <= res->end; ++i)
  ret |= request_irq(i, mcf_edma_tx_handler, 0, "eDMA", mcf_edma);
 if (ret)
  return ret;

 res = platform_get_resource_byname(pdev,
   IORESOURCE_IRQ, "edma-tx-16-55");
 if (!res)
  return -1;

 for (ret = 0, i = res->start; i <= res->end; ++i)
  ret |= request_irq(i, mcf_edma_tx_handler, 0, "eDMA", mcf_edma);
 if (ret)
  return ret;

 ret = platform_get_irq_byname(pdev, "edma-tx-56-63");
 if (ret != -ENXIO) {
  ret = request_irq(ret, mcf_edma_tx_handler,
      0, "eDMA", mcf_edma);
  if (ret)
   return ret;
 }

 ret = platform_get_irq_byname(pdev, "edma-err");
 if (ret != -ENXIO) {
  ret = request_irq(ret, mcf_edma_err_handler,
      0, "eDMA", mcf_edma);
  if (ret)
   return ret;
 }

 return 0;
}

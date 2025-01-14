
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct switchtec_dev {TYPE_3__* pdev; TYPE_2__* mmio_mrpc; int dma_mrpc; TYPE_1__* mmio_part_cfg; } ;
struct TYPE_7__ {int dev; } ;
struct TYPE_6__ {int dma_vector; } ;
struct TYPE_5__ {int vep_vector_number; } ;


 int EFAULT ;
 int KBUILD_MODNAME ;
 int PCI_IRQ_MSI ;
 int PCI_IRQ_MSIX ;
 int PCI_IRQ_VIRTUAL ;
 int devm_request_irq (int *,int,int ,int ,int ,struct switchtec_dev*) ;
 int ioread32 (int *) ;
 int nirqs ;
 int pci_alloc_irq_vectors (TYPE_3__*,int,int,int) ;
 int pci_irq_vector (TYPE_3__*,int) ;
 int switchtec_dma_mrpc_isr ;
 int switchtec_event_isr ;

__attribute__((used)) static int switchtec_init_isr(struct switchtec_dev *stdev)
{
 int nvecs;
 int event_irq;
 int dma_mrpc_irq;
 int rc;

 if (nirqs < 4)
  nirqs = 4;

 nvecs = pci_alloc_irq_vectors(stdev->pdev, 1, nirqs,
          PCI_IRQ_MSIX | PCI_IRQ_MSI |
          PCI_IRQ_VIRTUAL);
 if (nvecs < 0)
  return nvecs;

 event_irq = ioread32(&stdev->mmio_part_cfg->vep_vector_number);
 if (event_irq < 0 || event_irq >= nvecs)
  return -EFAULT;

 event_irq = pci_irq_vector(stdev->pdev, event_irq);
 if (event_irq < 0)
  return event_irq;

 rc = devm_request_irq(&stdev->pdev->dev, event_irq,
    switchtec_event_isr, 0,
    KBUILD_MODNAME, stdev);

 if (rc)
  return rc;

 if (!stdev->dma_mrpc)
  return rc;

 dma_mrpc_irq = ioread32(&stdev->mmio_mrpc->dma_vector);
 if (dma_mrpc_irq < 0 || dma_mrpc_irq >= nvecs)
  return -EFAULT;

 dma_mrpc_irq = pci_irq_vector(stdev->pdev, dma_mrpc_irq);
 if (dma_mrpc_irq < 0)
  return dma_mrpc_irq;

 rc = devm_request_irq(&stdev->pdev->dev, dma_mrpc_irq,
    switchtec_dma_mrpc_isr, 0,
    KBUILD_MODNAME, stdev);

 return rc;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spear13xx_pcie {struct dw_pcie* pci; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct pcie_port {scalar_t__ irq; int * ops; } ;
struct dw_pcie {struct pcie_port pp; } ;


 int IRQF_NO_THREAD ;
 int IRQF_SHARED ;
 int dev_err (struct device*,char*,...) ;
 int devm_request_irq (struct device*,int,int ,int,char*,struct spear13xx_pcie*) ;
 int dw_pcie_host_init (struct pcie_port*) ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 int spear13xx_pcie_host_ops ;
 int spear13xx_pcie_irq_handler ;

__attribute__((used)) static int spear13xx_add_pcie_port(struct spear13xx_pcie *spear13xx_pcie,
       struct platform_device *pdev)
{
 struct dw_pcie *pci = spear13xx_pcie->pci;
 struct pcie_port *pp = &pci->pp;
 struct device *dev = &pdev->dev;
 int ret;

 pp->irq = platform_get_irq(pdev, 0);
 if (pp->irq < 0) {
  dev_err(dev, "failed to get irq\n");
  return pp->irq;
 }
 ret = devm_request_irq(dev, pp->irq, spear13xx_pcie_irq_handler,
          IRQF_SHARED | IRQF_NO_THREAD,
          "spear1340-pcie", spear13xx_pcie);
 if (ret) {
  dev_err(dev, "failed to request irq %d\n", pp->irq);
  return ret;
 }

 pp->ops = &spear13xx_pcie_host_ops;

 ret = dw_pcie_host_init(pp);
 if (ret) {
  dev_err(dev, "failed to initialize host\n");
  return ret;
 }

 return 0;
}

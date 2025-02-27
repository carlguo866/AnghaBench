
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct pcie_port {scalar_t__ root_bus_nr; } ;
struct pci_dev {scalar_t__ cfg_size; int dev; struct pci_bus* bus; } ;
struct TYPE_8__ {TYPE_2__* parent; } ;
struct pci_bus {scalar_t__ number; TYPE_3__ dev; struct pcie_port* sysdata; } ;
struct imx6_pcie {TYPE_4__* drvdata; } ;
struct dw_pcie {int dummy; } ;
struct TYPE_10__ {int driver; } ;
struct TYPE_9__ {scalar_t__ dbi_length; } ;
struct TYPE_7__ {TYPE_1__* parent; } ;
struct TYPE_6__ {int * driver; } ;


 int dev_info (int *,char*,scalar_t__) ;
 TYPE_5__ imx6_pcie_driver ;
 struct dw_pcie* to_dw_pcie_from_pp (struct pcie_port*) ;
 struct imx6_pcie* to_imx6_pcie (struct dw_pcie*) ;

__attribute__((used)) static void imx6_pcie_quirk(struct pci_dev *dev)
{
 struct pci_bus *bus = dev->bus;
 struct pcie_port *pp = bus->sysdata;


 if (!bus->dev.parent || !bus->dev.parent->parent)
  return;


 if (bus->dev.parent->parent->driver != &imx6_pcie_driver.driver)
  return;

 if (bus->number == pp->root_bus_nr) {
  struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
  struct imx6_pcie *imx6_pcie = to_imx6_pcie(pci);





  if (imx6_pcie->drvdata->dbi_length) {
   dev->cfg_size = imx6_pcie->drvdata->dbi_length;
   dev_info(&dev->dev, "Limiting cfg_size to %d\n",
     dev->cfg_size);
  }
 }
}

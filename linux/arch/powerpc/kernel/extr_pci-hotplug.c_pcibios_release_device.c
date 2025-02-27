
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dn {int flags; } ;
struct pci_dev {int bus; } ;
struct TYPE_2__ {int (* release_device ) (struct pci_dev*) ;} ;
struct pci_controller {TYPE_1__ controller_ops; } ;


 int PCI_DN_FLAG_DEAD ;
 int eeh_remove_device (struct pci_dev*) ;
 int kfree (struct pci_dn*) ;
 struct pci_controller* pci_bus_to_host (int ) ;
 int pci_dbg (struct pci_dev*,char*) ;
 struct pci_dn* pci_get_pdn (struct pci_dev*) ;
 int stub1 (struct pci_dev*) ;

void pcibios_release_device(struct pci_dev *dev)
{
 struct pci_controller *phb = pci_bus_to_host(dev->bus);
 struct pci_dn *pdn = pci_get_pdn(dev);

 eeh_remove_device(dev);

 if (phb->controller_ops.release_device)
  phb->controller_ops.release_device(dev);


 if (pdn && (pdn->flags & PCI_DN_FLAG_DEAD)) {
  pci_dbg(dev, "freeing dead pdn\n");
  kfree(pdn);
 }
}

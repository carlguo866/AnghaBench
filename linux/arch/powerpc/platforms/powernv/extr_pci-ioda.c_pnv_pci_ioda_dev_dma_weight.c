
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {scalar_t__ hdr_type; int class; } ;


 int PCI_CLASS_SERIAL_USB_EHCI ;
 int PCI_CLASS_SERIAL_USB_OHCI ;
 int PCI_CLASS_SERIAL_USB_UHCI ;
 int PCI_CLASS_STORAGE_RAID ;
 scalar_t__ PCI_HEADER_TYPE_NORMAL ;

__attribute__((used)) static int pnv_pci_ioda_dev_dma_weight(struct pci_dev *dev, void *data)
{
 unsigned int *weight = (unsigned int *)data;




 if (dev->hdr_type != PCI_HEADER_TYPE_NORMAL)
  return 0;

 if (dev->class == PCI_CLASS_SERIAL_USB_UHCI ||
     dev->class == PCI_CLASS_SERIAL_USB_OHCI ||
     dev->class == PCI_CLASS_SERIAL_USB_EHCI)
  *weight += 3;
 else if ((dev->class >> 8) == PCI_CLASS_STORAGE_RAID)
  *weight += 15;
 else
  *weight += 10;

 return 0;
}

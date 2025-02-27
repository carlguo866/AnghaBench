
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_vpd {int valid; size_t len; } ;
struct pci_dev {struct pci_vpd* vpd; } ;


 int EIO ;
 size_t PCI_VPD_MAX_SIZE ;

__attribute__((used)) static int pci_vpd_set_size(struct pci_dev *dev, size_t len)
{
 struct pci_vpd *vpd = dev->vpd;

 if (len == 0 || len > PCI_VPD_MAX_SIZE)
  return -EIO;

 vpd->valid = 1;
 vpd->len = len;

 return 0;
}

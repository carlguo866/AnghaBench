
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dev; } ;


 int get_device (int *) ;

struct pci_dev *pci_dev_get(struct pci_dev *dev)
{
 if (dev)
  get_device(&dev->dev);
 return dev;
}

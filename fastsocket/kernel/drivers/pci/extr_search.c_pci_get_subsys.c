
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_device_id {unsigned int vendor; unsigned int device; unsigned int subvendor; unsigned int subdevice; } ;
struct pci_dev {int dummy; } ;


 struct pci_dev* pci_get_dev_by_id (struct pci_device_id*,struct pci_dev*) ;

struct pci_dev *pci_get_subsys(unsigned int vendor, unsigned int device,
          unsigned int ss_vendor, unsigned int ss_device,
          struct pci_dev *from)
{
 struct pci_device_id id = {
  .vendor = vendor,
  .device = device,
  .subvendor = ss_vendor,
  .subdevice = ss_device,
 };

 return pci_get_dev_by_id(&id, from);
}

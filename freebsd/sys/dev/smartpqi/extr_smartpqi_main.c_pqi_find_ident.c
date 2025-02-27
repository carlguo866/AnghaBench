
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int16_t ;
struct pqi_ident {scalar_t__ vendor; scalar_t__ device; scalar_t__ subvendor; scalar_t__ subdevice; } ;
typedef int device_t ;


 scalar_t__ pci_get_device (int ) ;
 scalar_t__ pci_get_subdevice (int ) ;
 scalar_t__ pci_get_subvendor (int ) ;
 scalar_t__ pci_get_vendor (int ) ;
 struct pqi_ident* pqi_family_identifiers ;
 struct pqi_ident* pqi_identifiers ;

__attribute__((used)) static struct pqi_ident *
pqi_find_ident(device_t dev)
{
 struct pqi_ident *m;
 u_int16_t vendid, devid, sub_vendid, sub_devid;

 vendid = pci_get_vendor(dev);
 devid = pci_get_device(dev);
 sub_vendid = pci_get_subvendor(dev);
 sub_devid = pci_get_subdevice(dev);

 for (m = pqi_identifiers; m->vendor != 0; m++) {
  if ((m->vendor == vendid) && (m->device == devid) &&
   (m->subvendor == sub_vendid) &&
   (m->subdevice == sub_devid)) {
   return (m);
  }
 }

 for (m = pqi_family_identifiers; m->vendor != 0; m++) {
  if ((m->vendor == vendid) && (m->device == devid)) {
   return (m);
  }
 }

 return (((void*)0));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mps_ident {scalar_t__ vendor; scalar_t__ device; int subvendor; int subdevice; } ;
typedef int device_t ;


 struct mps_ident* mps_identifiers ;
 scalar_t__ pci_get_device (int ) ;
 int pci_get_subdevice (int ) ;
 int pci_get_subvendor (int ) ;
 scalar_t__ pci_get_vendor (int ) ;

__attribute__((used)) static struct mps_ident *
mps_find_ident(device_t dev)
{
 struct mps_ident *m;

 for (m = mps_identifiers; m->vendor != 0; m++) {
  if (m->vendor != pci_get_vendor(dev))
   continue;
  if (m->device != pci_get_device(dev))
   continue;
  if ((m->subvendor != 0xffff) &&
      (m->subvendor != pci_get_subvendor(dev)))
   continue;
  if ((m->subdevice != 0xffff) &&
      (m->subdevice != pci_get_subdevice(dev)))
   continue;
  return (m);
 }

 return (((void*)0));
}

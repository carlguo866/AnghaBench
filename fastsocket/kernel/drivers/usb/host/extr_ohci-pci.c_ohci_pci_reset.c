
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ controller; } ;
struct usb_hcd {TYPE_1__ self; } ;
struct pci_device_id {scalar_t__ driver_data; } ;
struct pci_dev {int dummy; } ;
struct ohci_hcd {int dummy; } ;


 struct ohci_hcd* hcd_to_ohci (struct usb_hcd*) ;
 int ohci_hcd_init (struct ohci_hcd*) ;
 int ohci_init (struct ohci_hcd*) ;
 int ohci_pci_quirks ;
 struct pci_device_id* pci_match_id (int ,struct pci_dev*) ;
 struct pci_dev* to_pci_dev (scalar_t__) ;

__attribute__((used)) static int ohci_pci_reset (struct usb_hcd *hcd)
{
 struct ohci_hcd *ohci = hcd_to_ohci (hcd);
 int ret = 0;

 if (hcd->self.controller) {
  struct pci_dev *pdev = to_pci_dev(hcd->self.controller);
  const struct pci_device_id *quirk_id;

  quirk_id = pci_match_id(ohci_pci_quirks, pdev);
  if (quirk_id != ((void*)0)) {
   int (*quirk)(struct usb_hcd *ohci);
   quirk = (void *)quirk_id->driver_data;
   ret = quirk(hcd);
  }
 }
 if (ret == 0) {
  ohci_hcd_init (ohci);
  return ohci_init (ohci);
 }
 return ret;
}

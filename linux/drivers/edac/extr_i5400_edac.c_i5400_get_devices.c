
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int device; int vendor; int devfn; } ;
struct mem_ctl_info {struct i5400_pvt* pvt_info; } ;
struct i5400_pvt {scalar_t__ maxch; struct pci_dev* branchmap_werrors; struct pci_dev* fsb_error_regs; struct pci_dev* branch_0; int * branch_1; struct pci_dev* system_address; } ;


 scalar_t__ CHANNELS_PER_BRANCH ;
 int ENODEV ;
 int KERN_ERR ;
 int PCI_DEVICE_ID_INTEL_5400_ERR ;
 int PCI_DEVICE_ID_INTEL_5400_FBD0 ;
 int PCI_DEVICE_ID_INTEL_5400_FBD1 ;
 int PCI_FUNC (int ) ;
 int PCI_VENDOR_ID_INTEL ;
 int edac_dbg (int,char*,int ,int ,int ) ;
 int i5400_printk (int ,char*,int ,int ) ;
 int pci_dev_put (struct pci_dev*) ;
 void* pci_get_device (int ,int ,struct pci_dev*) ;
 int pci_name (struct pci_dev*) ;

__attribute__((used)) static int i5400_get_devices(struct mem_ctl_info *mci, int dev_idx)
{
 struct i5400_pvt *pvt;
 struct pci_dev *pdev;

 pvt = mci->pvt_info;
 pvt->branchmap_werrors = ((void*)0);
 pvt->fsb_error_regs = ((void*)0);
 pvt->branch_0 = ((void*)0);
 pvt->branch_1 = ((void*)0);


 pdev = ((void*)0);
 while (1) {
  pdev = pci_get_device(PCI_VENDOR_ID_INTEL,
          PCI_DEVICE_ID_INTEL_5400_ERR, pdev);
  if (!pdev) {

   i5400_printk(KERN_ERR,
    "'system address,Process Bus' "
    "device not found:"
    "vendor 0x%x device 0x%x ERR func 1 "
    "(broken BIOS?)\n",
    PCI_VENDOR_ID_INTEL,
    PCI_DEVICE_ID_INTEL_5400_ERR);
   return -ENODEV;
  }


  if (PCI_FUNC(pdev->devfn) == 1)
   break;
 }
 pvt->branchmap_werrors = pdev;

 pdev = ((void*)0);
 while (1) {
  pdev = pci_get_device(PCI_VENDOR_ID_INTEL,
          PCI_DEVICE_ID_INTEL_5400_ERR, pdev);
  if (!pdev) {

   i5400_printk(KERN_ERR,
    "'system address,Process Bus' "
    "device not found:"
    "vendor 0x%x device 0x%x ERR func 2 "
    "(broken BIOS?)\n",
    PCI_VENDOR_ID_INTEL,
    PCI_DEVICE_ID_INTEL_5400_ERR);

   pci_dev_put(pvt->branchmap_werrors);
   return -ENODEV;
  }


  if (PCI_FUNC(pdev->devfn) == 2)
   break;
 }
 pvt->fsb_error_regs = pdev;

 edac_dbg(1, "System Address, processor bus- PCI Bus ID: %s  %x:%x\n",
   pci_name(pvt->system_address),
   pvt->system_address->vendor, pvt->system_address->device);
 edac_dbg(1, "Branchmap, control and errors - PCI Bus ID: %s  %x:%x\n",
   pci_name(pvt->branchmap_werrors),
   pvt->branchmap_werrors->vendor,
   pvt->branchmap_werrors->device);
 edac_dbg(1, "FSB Error Regs - PCI Bus ID: %s  %x:%x\n",
   pci_name(pvt->fsb_error_regs),
   pvt->fsb_error_regs->vendor, pvt->fsb_error_regs->device);

 pvt->branch_0 = pci_get_device(PCI_VENDOR_ID_INTEL,
           PCI_DEVICE_ID_INTEL_5400_FBD0, ((void*)0));
 if (!pvt->branch_0) {
  i5400_printk(KERN_ERR,
   "MC: 'BRANCH 0' device not found:"
   "vendor 0x%x device 0x%x Func 0 (broken BIOS?)\n",
   PCI_VENDOR_ID_INTEL, PCI_DEVICE_ID_INTEL_5400_FBD0);

  pci_dev_put(pvt->fsb_error_regs);
  pci_dev_put(pvt->branchmap_werrors);
  return -ENODEV;
 }




 if (pvt->maxch < CHANNELS_PER_BRANCH)
  return 0;

 pvt->branch_1 = pci_get_device(PCI_VENDOR_ID_INTEL,
           PCI_DEVICE_ID_INTEL_5400_FBD1, ((void*)0));
 if (!pvt->branch_1) {
  i5400_printk(KERN_ERR,
   "MC: 'BRANCH 1' device not found:"
   "vendor 0x%x device 0x%x Func 0 "
   "(broken BIOS?)\n",
   PCI_VENDOR_ID_INTEL,
   PCI_DEVICE_ID_INTEL_5400_FBD1);

  pci_dev_put(pvt->branch_0);
  pci_dev_put(pvt->fsb_error_regs);
  pci_dev_put(pvt->branchmap_werrors);
  return -ENODEV;
 }

 return 0;
}

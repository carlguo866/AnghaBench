
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {int dummy; } ;
struct nvidia_par {int Chipset; int RamAmountKBytes; int CrystalFreqKHz; int MinVClockFreqKHz; int MaxVClockFreqKHz; scalar_t__ twoStagePLL; int * CURSOR; int PEXTDEV; scalar_t__ twoHeads; int PFB; TYPE_1__* pci_dev; int PMC; } ;
struct TYPE_2__ {int bus; } ;


 int NV_RD32 (int ,int) ;
 int NV_WR32 (int ,int,int) ;
 int mb () ;
 int pci_dev_put (struct pci_dev*) ;
 int pci_domain_nr (int ) ;
 struct pci_dev* pci_get_domain_bus_and_slot (int ,int ,int) ;
 int pci_read_config_dword (struct pci_dev*,int,int*) ;

__attribute__((used)) static void nv10GetConfig(struct nvidia_par *par)
{
 struct pci_dev *dev;
 u32 implementation = par->Chipset & 0x0ff0;
 dev = pci_get_domain_bus_and_slot(pci_domain_nr(par->pci_dev->bus),
       0, 1);
 if ((par->Chipset & 0xffff) == 0x01a0) {
  u32 amt;

  pci_read_config_dword(dev, 0x7c, &amt);
  par->RamAmountKBytes = (((amt >> 6) & 31) + 1) * 1024;
 } else if ((par->Chipset & 0xffff) == 0x01f0) {
  u32 amt;

  pci_read_config_dword(dev, 0x84, &amt);
  par->RamAmountKBytes = (((amt >> 4) & 127) + 1) * 1024;
 } else {
  par->RamAmountKBytes =
      (NV_RD32(par->PFB, 0x020C) & 0xFFF00000) >> 10;
 }
 pci_dev_put(dev);

 par->CrystalFreqKHz = (NV_RD32(par->PEXTDEV, 0x0000) & (1 << 6)) ?
     14318 : 13500;

 if (par->twoHeads && (implementation != 0x0110)) {
  if (NV_RD32(par->PEXTDEV, 0x0000) & (1 << 22))
   par->CrystalFreqKHz = 27000;
 }

 par->CURSOR = ((void*)0);
 par->MinVClockFreqKHz = 12000;
 par->MaxVClockFreqKHz = par->twoStagePLL ? 400000 : 350000;
}

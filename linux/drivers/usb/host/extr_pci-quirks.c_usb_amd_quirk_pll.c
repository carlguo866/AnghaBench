
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {scalar_t__ gen; int rev; } ;
struct TYPE_4__ {int isoc_reqs; int nb_type; int nb_dev; int smbus_dev; TYPE_1__ sb_type; } ;


 int AB_DATA (int) ;
 int AB_INDX (int) ;
 int AB_REG_BAR_HIGH ;
 int AB_REG_BAR_LOW ;
 int AB_REG_BAR_SB700 ;
 scalar_t__ AMD_CHIPSET_BOLTON ;
 scalar_t__ AMD_CHIPSET_HUDSON2 ;
 scalar_t__ AMD_CHIPSET_SB700 ;
 scalar_t__ AMD_CHIPSET_SB800 ;
 int AX_DATAC ;
 int AX_INDXC ;
 int BIF_NB ;
 int NB_PCIE_INDX_ADDR ;
 int NB_PCIE_INDX_DATA ;
 int NB_PIF0_PWRDOWN_0 ;
 int NB_PIF0_PWRDOWN_1 ;
 int PCIE_P_CNTL ;
 TYPE_2__ amd_chipset ;
 int amd_lock ;
 int inb_p (int) ;
 int inl (int ) ;
 int inl_p (int ) ;
 int outb_p (int ,int) ;
 int outl (int,int ) ;
 int outl_p (int,int ) ;
 int pci_read_config_dword (int ,int ,int*) ;
 int pci_write_config_dword (int ,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void usb_amd_quirk_pll(int disable)
{
 u32 addr, addr_low, addr_high, val;
 u32 bit = disable ? 0 : 1;
 unsigned long flags;

 spin_lock_irqsave(&amd_lock, flags);

 if (disable) {
  amd_chipset.isoc_reqs++;
  if (amd_chipset.isoc_reqs > 1) {
   spin_unlock_irqrestore(&amd_lock, flags);
   return;
  }
 } else {
  amd_chipset.isoc_reqs--;
  if (amd_chipset.isoc_reqs > 0) {
   spin_unlock_irqrestore(&amd_lock, flags);
   return;
  }
 }

 if (amd_chipset.sb_type.gen == AMD_CHIPSET_SB800 ||
   amd_chipset.sb_type.gen == AMD_CHIPSET_HUDSON2 ||
   amd_chipset.sb_type.gen == AMD_CHIPSET_BOLTON) {
  outb_p(AB_REG_BAR_LOW, 0xcd6);
  addr_low = inb_p(0xcd7);
  outb_p(AB_REG_BAR_HIGH, 0xcd6);
  addr_high = inb_p(0xcd7);
  addr = addr_high << 8 | addr_low;

  outl_p(0x30, AB_INDX(addr));
  outl_p(0x40, AB_DATA(addr));
  outl_p(0x34, AB_INDX(addr));
  val = inl_p(AB_DATA(addr));
 } else if (amd_chipset.sb_type.gen == AMD_CHIPSET_SB700 &&
   amd_chipset.sb_type.rev <= 0x3b) {
  pci_read_config_dword(amd_chipset.smbus_dev,
     AB_REG_BAR_SB700, &addr);
  outl(AX_INDXC, AB_INDX(addr));
  outl(0x40, AB_DATA(addr));
  outl(AX_DATAC, AB_INDX(addr));
  val = inl(AB_DATA(addr));
 } else {
  spin_unlock_irqrestore(&amd_lock, flags);
  return;
 }

 if (disable) {
  val &= ~0x08;
  val |= (1 << 4) | (1 << 9);
 } else {
  val |= 0x08;
  val &= ~((1 << 4) | (1 << 9));
 }
 outl_p(val, AB_DATA(addr));

 if (!amd_chipset.nb_dev) {
  spin_unlock_irqrestore(&amd_lock, flags);
  return;
 }

 if (amd_chipset.nb_type == 1 || amd_chipset.nb_type == 3) {
  addr = PCIE_P_CNTL;
  pci_write_config_dword(amd_chipset.nb_dev,
     NB_PCIE_INDX_ADDR, addr);
  pci_read_config_dword(amd_chipset.nb_dev,
     NB_PCIE_INDX_DATA, &val);

  val &= ~(1 | (1 << 3) | (1 << 4) | (1 << 9) | (1 << 12));
  val |= bit | (bit << 3) | (bit << 12);
  val |= ((!bit) << 4) | ((!bit) << 9);
  pci_write_config_dword(amd_chipset.nb_dev,
     NB_PCIE_INDX_DATA, val);

  addr = BIF_NB;
  pci_write_config_dword(amd_chipset.nb_dev,
     NB_PCIE_INDX_ADDR, addr);
  pci_read_config_dword(amd_chipset.nb_dev,
     NB_PCIE_INDX_DATA, &val);
  val &= ~(1 << 8);
  val |= bit << 8;

  pci_write_config_dword(amd_chipset.nb_dev,
     NB_PCIE_INDX_DATA, val);
 } else if (amd_chipset.nb_type == 2) {
  addr = NB_PIF0_PWRDOWN_0;
  pci_write_config_dword(amd_chipset.nb_dev,
     NB_PCIE_INDX_ADDR, addr);
  pci_read_config_dword(amd_chipset.nb_dev,
     NB_PCIE_INDX_DATA, &val);
  if (disable)
   val &= ~(0x3f << 7);
  else
   val |= 0x3f << 7;

  pci_write_config_dword(amd_chipset.nb_dev,
     NB_PCIE_INDX_DATA, val);

  addr = NB_PIF0_PWRDOWN_1;
  pci_write_config_dword(amd_chipset.nb_dev,
     NB_PCIE_INDX_ADDR, addr);
  pci_read_config_dword(amd_chipset.nb_dev,
     NB_PCIE_INDX_DATA, &val);
  if (disable)
   val &= ~(0x3f << 7);
  else
   val |= 0x3f << 7;

  pci_write_config_dword(amd_chipset.nb_dev,
     NB_PCIE_INDX_DATA, val);
 }

 spin_unlock_irqrestore(&amd_lock, flags);
 return;
}

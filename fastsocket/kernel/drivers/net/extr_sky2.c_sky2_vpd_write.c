
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct sky2_hw {int dummy; } ;


 scalar_t__ PCI_VPD_ADDR ;
 int PCI_VPD_ADDR_F ;
 scalar_t__ PCI_VPD_DATA ;
 int sky2_pci_write32 (struct sky2_hw*,scalar_t__,int) ;
 int sky2_vpd_wait (struct sky2_hw*,int,int) ;

__attribute__((used)) static int sky2_vpd_write(struct sky2_hw *hw, int cap, const void *data,
     u16 offset, unsigned int length)
{
 unsigned int i;
 int rc = 0;

 for (i = 0; i < length; i += sizeof(u32)) {
  u32 val = *(u32 *)(data + i);

  sky2_pci_write32(hw, cap + PCI_VPD_DATA, val);
  sky2_pci_write32(hw, cap + PCI_VPD_ADDR, offset | PCI_VPD_ADDR_F);

  rc = sky2_vpd_wait(hw, cap, PCI_VPD_ADDR_F);
  if (rc)
   break;
 }
 return rc;
}

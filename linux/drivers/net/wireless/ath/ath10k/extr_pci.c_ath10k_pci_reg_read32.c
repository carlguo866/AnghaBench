
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ath10k {int dummy; } ;


 scalar_t__ PCIE_LOCAL_BASE_ADDRESS ;
 scalar_t__ ath10k_pci_read32 (struct ath10k*,scalar_t__) ;

u32 ath10k_pci_reg_read32(struct ath10k *ar, u32 addr)
{
 return ath10k_pci_read32(ar, PCIE_LOCAL_BASE_ADDRESS + addr);
}

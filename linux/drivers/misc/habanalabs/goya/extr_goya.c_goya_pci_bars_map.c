
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_device {scalar_t__* pcie_bar; scalar_t__ rmmio; } ;


 scalar_t__ CFG_BASE ;
 scalar_t__ SRAM_BASE_ADDR ;
 size_t SRAM_CFG_BAR_ID ;
 int hl_pci_bars_map (struct hl_device*,char const* const*,int*) ;

__attribute__((used)) static int goya_pci_bars_map(struct hl_device *hdev)
{
 static const char * const name[] = {"SRAM_CFG", "MSIX", "DDR"};
 bool is_wc[3] = {0, 0, 1};
 int rc;

 rc = hl_pci_bars_map(hdev, name, is_wc);
 if (rc)
  return rc;

 hdev->rmmio = hdev->pcie_bar[SRAM_CFG_BAR_ID] +
   (CFG_BASE - SRAM_BASE_ADDR);

 return 0;
}

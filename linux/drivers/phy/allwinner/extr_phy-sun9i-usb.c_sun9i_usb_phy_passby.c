
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sun9i_usb_phy {scalar_t__ type; int pmu; } ;


 int SUNXI_AHB_INCR16_BURST_EN ;
 int SUNXI_AHB_INCR4_BURST_EN ;
 int SUNXI_AHB_INCR8_BURST_EN ;
 int SUNXI_AHB_INCRX_ALIGN_EN ;
 int SUNXI_EHCI_HS_FORCE ;
 int SUNXI_HSIC ;
 int SUNXI_HSIC_CONNECT_DET ;
 int SUNXI_HSIC_CONNECT_INT ;
 int SUNXI_ULPI_BYPASS_EN ;
 scalar_t__ USBPHY_INTERFACE_MODE_HSIC ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static void sun9i_usb_phy_passby(struct sun9i_usb_phy *phy, int enable)
{
 u32 bits, reg_value;

 bits = SUNXI_AHB_INCR16_BURST_EN | SUNXI_AHB_INCR8_BURST_EN |
  SUNXI_AHB_INCR4_BURST_EN | SUNXI_AHB_INCRX_ALIGN_EN |
  SUNXI_ULPI_BYPASS_EN;

 if (phy->type == USBPHY_INTERFACE_MODE_HSIC)
  bits |= SUNXI_HSIC | SUNXI_EHCI_HS_FORCE |
   SUNXI_HSIC_CONNECT_DET | SUNXI_HSIC_CONNECT_INT;

 reg_value = readl(phy->pmu);

 if (enable)
  reg_value |= bits;
 else
  reg_value &= ~bits;

 writel(reg_value, phy->pmu);
}

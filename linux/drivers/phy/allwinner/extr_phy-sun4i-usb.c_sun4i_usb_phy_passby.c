
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sun4i_usb_phy_data {TYPE_1__* cfg; } ;
struct sun4i_usb_phy {int index; int pmu; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 int SUNXI_AHB_ICHR8_EN ;
 int SUNXI_AHB_INCR4_BURST_EN ;
 int SUNXI_AHB_INCRX_ALIGN_EN ;
 int SUNXI_EHCI_HS_FORCE ;
 int SUNXI_HSIC ;
 int SUNXI_HSIC_CONNECT_INT ;
 int SUNXI_ULPI_BYPASS_EN ;
 int readl (int ) ;
 scalar_t__ sun8i_a83t_phy ;
 struct sun4i_usb_phy_data* to_sun4i_usb_phy_data (struct sun4i_usb_phy*) ;
 int writel (int,int ) ;

__attribute__((used)) static void sun4i_usb_phy_passby(struct sun4i_usb_phy *phy, int enable)
{
 struct sun4i_usb_phy_data *phy_data = to_sun4i_usb_phy_data(phy);
 u32 bits, reg_value;

 if (!phy->pmu)
  return;

 bits = SUNXI_AHB_ICHR8_EN | SUNXI_AHB_INCR4_BURST_EN |
  SUNXI_AHB_INCRX_ALIGN_EN | SUNXI_ULPI_BYPASS_EN;


 if (phy_data->cfg->type == sun8i_a83t_phy && phy->index == 2)
  bits |= SUNXI_EHCI_HS_FORCE | SUNXI_HSIC_CONNECT_INT |
   SUNXI_HSIC;

 reg_value = readl(phy->pmu);

 if (enable)
  reg_value |= bits;
 else
  reg_value &= ~bits;

 writel(reg_value, phy->pmu);
}

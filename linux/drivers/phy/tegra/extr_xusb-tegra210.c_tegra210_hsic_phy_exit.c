
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_xusb_lane {TYPE_1__* pad; } ;
struct phy {int dummy; } ;
struct TYPE_2__ {int padctl; } ;


 struct tegra_xusb_lane* phy_get_drvdata (struct phy*) ;
 int tegra210_xusb_padctl_disable (int ) ;

__attribute__((used)) static int tegra210_hsic_phy_exit(struct phy *phy)
{
 struct tegra_xusb_lane *lane = phy_get_drvdata(phy);

 return tegra210_xusb_padctl_disable(lane->pad->padctl);
}

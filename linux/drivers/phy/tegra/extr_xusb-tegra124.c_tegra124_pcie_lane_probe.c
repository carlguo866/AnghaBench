
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tegra_xusb_lane {unsigned int index; struct device_node* np; struct tegra_xusb_pad* pad; int * soc; int list; } ;
struct tegra_xusb_pcie_lane {struct tegra_xusb_lane base; } ;
struct tegra_xusb_pad {TYPE_1__* soc; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int * lanes; } ;


 int ENOMEM ;
 struct tegra_xusb_lane* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int kfree (struct tegra_xusb_pcie_lane*) ;
 struct tegra_xusb_pcie_lane* kzalloc (int,int ) ;
 int tegra_xusb_lane_parse_dt (struct tegra_xusb_lane*,struct device_node*) ;

__attribute__((used)) static struct tegra_xusb_lane *
tegra124_pcie_lane_probe(struct tegra_xusb_pad *pad, struct device_node *np,
    unsigned int index)
{
 struct tegra_xusb_pcie_lane *pcie;
 int err;

 pcie = kzalloc(sizeof(*pcie), GFP_KERNEL);
 if (!pcie)
  return ERR_PTR(-ENOMEM);

 INIT_LIST_HEAD(&pcie->base.list);
 pcie->base.soc = &pad->soc->lanes[index];
 pcie->base.index = index;
 pcie->base.pad = pad;
 pcie->base.np = np;

 err = tegra_xusb_lane_parse_dt(&pcie->base, np);
 if (err < 0) {
  kfree(pcie);
  return ERR_PTR(err);
 }

 return &pcie->base;
}

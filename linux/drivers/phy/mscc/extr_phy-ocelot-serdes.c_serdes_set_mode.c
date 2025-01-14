
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct serdes_macro {scalar_t__ idx; scalar_t__ port; TYPE_1__* ctrl; } ;
struct phy {int dummy; } ;
typedef enum phy_mode { ____Placeholder_phy_mode } phy_mode ;
struct TYPE_5__ {scalar_t__ idx; int mode; int submode; scalar_t__ port; int mux; int mask; } ;
struct TYPE_4__ {int regs; } ;


 unsigned int ARRAY_SIZE (TYPE_2__*) ;
 int EINVAL ;
 int EOPNOTSUPP ;
 int HSIO_HW_CFG ;
 int PHY_INTERFACE_MODE_QSGMII ;
 int PHY_MODE_ETHERNET ;
 scalar_t__ SERDES1G_MAX ;
 scalar_t__ SERDES6G_MAX ;
 TYPE_2__* ocelot_serdes_muxes ;
 struct serdes_macro* phy_get_drvdata (struct phy*) ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int serdes_init_s1g (int ,scalar_t__) ;
 int serdes_init_s6g (int ,scalar_t__,int) ;

__attribute__((used)) static int serdes_set_mode(struct phy *phy, enum phy_mode mode, int submode)
{
 struct serdes_macro *macro = phy_get_drvdata(phy);
 unsigned int i;
 int ret;


 if (mode != PHY_MODE_ETHERNET)
  return -EOPNOTSUPP;

 for (i = 0; i < ARRAY_SIZE(ocelot_serdes_muxes); i++) {
  if (macro->idx != ocelot_serdes_muxes[i].idx ||
      mode != ocelot_serdes_muxes[i].mode ||
      submode != ocelot_serdes_muxes[i].submode)
   continue;

  if (submode != PHY_INTERFACE_MODE_QSGMII &&
      macro->port != ocelot_serdes_muxes[i].port)
   continue;

  ret = regmap_update_bits(macro->ctrl->regs, HSIO_HW_CFG,
      ocelot_serdes_muxes[i].mask,
      ocelot_serdes_muxes[i].mux);
  if (ret)
   return ret;

  if (macro->idx <= SERDES1G_MAX)
   return serdes_init_s1g(macro->ctrl->regs, macro->idx);
  else if (macro->idx <= SERDES6G_MAX)
   return serdes_init_s6g(macro->ctrl->regs,
            macro->idx - (SERDES1G_MAX + 1),
            ocelot_serdes_muxes[i].submode);


  return -EOPNOTSUPP;
 }

 return -EINVAL;
}

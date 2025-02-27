
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mii_phy {int advertising; int features; scalar_t__ asym_pause; scalar_t__ pause; int duplex; int speed; int autoneg; } ;


 int ADVERTISED_1000baseT_Full ;
 int ADVERTISED_1000baseT_Half ;
 int ADVERTISED_100baseT_Full ;
 int ADVERTISED_100baseT_Half ;
 int ADVERTISED_10baseT_Full ;
 int ADVERTISED_10baseT_Half ;
 int ADVERTISED_Asym_Pause ;
 int ADVERTISED_Pause ;
 int ADVERTISE_1000FULL ;
 int ADVERTISE_1000HALF ;
 int ADVERTISE_100BASE4 ;
 int ADVERTISE_100FULL ;
 int ADVERTISE_100HALF ;
 int ADVERTISE_10FULL ;
 int ADVERTISE_10HALF ;
 int ADVERTISE_ALL ;
 int ADVERTISE_PAUSE_ASYM ;
 int ADVERTISE_PAUSE_CAP ;
 int AUTONEG_ENABLE ;
 int BMCR_ANENABLE ;
 int BMCR_ANRESTART ;
 int BMCR_FULLDPLX ;
 int BMCR_SPEED100 ;
 int BMCR_SPEED1000 ;
 int DUPLEX_HALF ;
 int MII_ADVERTISE ;
 int MII_BMCR ;
 int MII_CTRL1000 ;
 int SPEED_10 ;
 int SUPPORTED_1000baseT_Full ;
 int SUPPORTED_1000baseT_Half ;
 int phy_read (struct mii_phy*,int ) ;
 int phy_write (struct mii_phy*,int ,int) ;

__attribute__((used)) static int genmii_setup_aneg(struct mii_phy *phy, u32 advertise)
{
 int ctl, adv;

 phy->autoneg = AUTONEG_ENABLE;
 phy->speed = SPEED_10;
 phy->duplex = DUPLEX_HALF;
 phy->pause = phy->asym_pause = 0;
 phy->advertising = advertise;

 ctl = phy_read(phy, MII_BMCR);
 if (ctl < 0)
  return ctl;
 ctl &= ~(BMCR_FULLDPLX | BMCR_SPEED100 | BMCR_SPEED1000 | BMCR_ANENABLE);


 phy_write(phy, MII_BMCR, ctl);


 adv = phy_read(phy, MII_ADVERTISE);
 if (adv < 0)
  return adv;
 adv &= ~(ADVERTISE_ALL | ADVERTISE_100BASE4 | ADVERTISE_PAUSE_CAP |
   ADVERTISE_PAUSE_ASYM);
 if (advertise & ADVERTISED_10baseT_Half)
  adv |= ADVERTISE_10HALF;
 if (advertise & ADVERTISED_10baseT_Full)
  adv |= ADVERTISE_10FULL;
 if (advertise & ADVERTISED_100baseT_Half)
  adv |= ADVERTISE_100HALF;
 if (advertise & ADVERTISED_100baseT_Full)
  adv |= ADVERTISE_100FULL;
 if (advertise & ADVERTISED_Pause)
  adv |= ADVERTISE_PAUSE_CAP;
 if (advertise & ADVERTISED_Asym_Pause)
  adv |= ADVERTISE_PAUSE_ASYM;
 phy_write(phy, MII_ADVERTISE, adv);

 if (phy->features &
     (SUPPORTED_1000baseT_Full | SUPPORTED_1000baseT_Half)) {
  adv = phy_read(phy, MII_CTRL1000);
  if (adv < 0)
   return adv;
  adv &= ~(ADVERTISE_1000FULL | ADVERTISE_1000HALF);
  if (advertise & ADVERTISED_1000baseT_Full)
   adv |= ADVERTISE_1000FULL;
  if (advertise & ADVERTISED_1000baseT_Half)
   adv |= ADVERTISE_1000HALF;
  phy_write(phy, MII_CTRL1000, adv);
 }


 ctl = phy_read(phy, MII_BMCR);
 ctl |= (BMCR_ANENABLE | BMCR_ANRESTART);
 phy_write(phy, MII_BMCR, ctl);

 return 0;
}

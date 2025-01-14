
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct niu_link_config {int supported; int active_autoneg; int active_advertising; int active_speed; int active_duplex; } ;
struct niu {int phy_addr; struct niu_link_config link_config; } ;


 int ADVERTISED_1000baseT_Full ;
 int ADVERTISED_1000baseT_Half ;
 int ADVERTISED_100baseT_Full ;
 int ADVERTISED_100baseT_Half ;
 int ADVERTISED_10baseT_Full ;
 int ADVERTISED_10baseT_Half ;
 int ADVERTISED_Autoneg ;
 int ADVERTISE_1000FULL ;
 int ADVERTISE_1000HALF ;
 int ADVERTISE_100FULL ;
 int ADVERTISE_100HALF ;
 int ADVERTISE_10FULL ;
 int ADVERTISE_10HALF ;
 int BMCR_ANENABLE ;
 int BMCR_FULLDPLX ;
 int BMCR_SPEED100 ;
 int BMCR_SPEED1000 ;
 int BMSR_100FULL ;
 int BMSR_100HALF ;
 int BMSR_10FULL ;
 int BMSR_10HALF ;
 int BMSR_ANEGCAPABLE ;
 int BMSR_ESTATEN ;
 int BMSR_LSTATUS ;
 int DUPLEX_FULL ;
 int DUPLEX_HALF ;
 int DUPLEX_INVALID ;
 int ESTATUS_1000_TFULL ;
 int ESTATUS_1000_THALF ;
 int LPA_100 ;
 int LPA_1000FULL ;
 int LPA_1000HALF ;
 int LPA_10FULL ;
 int LPA_10HALF ;
 int LPA_DUPLEX ;
 int MII_ADVERTISE ;
 int MII_BMCR ;
 int MII_BMSR ;
 int MII_CTRL1000 ;
 int MII_ESTATUS ;
 int MII_LPA ;
 int MII_STAT1000 ;
 int SPEED_10 ;
 int SPEED_100 ;
 int SPEED_1000 ;
 int SPEED_INVALID ;
 int SUPPORTED_1000baseT_Full ;
 int SUPPORTED_1000baseT_Half ;
 int SUPPORTED_100baseT_Full ;
 int SUPPORTED_100baseT_Half ;
 int SUPPORTED_10baseT_Full ;
 int SUPPORTED_10baseT_Half ;
 int SUPPORTED_Autoneg ;
 scalar_t__ likely (int) ;
 int mii_read (struct niu*,int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int link_status_mii(struct niu *np, int *link_up_p)
{
 struct niu_link_config *lp = &np->link_config;
 int err;
 int bmsr, advert, ctrl1000, stat1000, lpa, bmcr, estatus;
 int supported, advertising, active_speed, active_duplex;

 err = mii_read(np, np->phy_addr, MII_BMCR);
 if (unlikely(err < 0))
  return err;
 bmcr = err;

 err = mii_read(np, np->phy_addr, MII_BMSR);
 if (unlikely(err < 0))
  return err;
 bmsr = err;

 err = mii_read(np, np->phy_addr, MII_ADVERTISE);
 if (unlikely(err < 0))
  return err;
 advert = err;

 err = mii_read(np, np->phy_addr, MII_LPA);
 if (unlikely(err < 0))
  return err;
 lpa = err;

 if (likely(bmsr & BMSR_ESTATEN)) {
  err = mii_read(np, np->phy_addr, MII_ESTATUS);
  if (unlikely(err < 0))
   return err;
  estatus = err;

  err = mii_read(np, np->phy_addr, MII_CTRL1000);
  if (unlikely(err < 0))
   return err;
  ctrl1000 = err;

  err = mii_read(np, np->phy_addr, MII_STAT1000);
  if (unlikely(err < 0))
   return err;
  stat1000 = err;
 } else
  estatus = ctrl1000 = stat1000 = 0;

 supported = 0;
 if (bmsr & BMSR_ANEGCAPABLE)
  supported |= SUPPORTED_Autoneg;
 if (bmsr & BMSR_10HALF)
  supported |= SUPPORTED_10baseT_Half;
 if (bmsr & BMSR_10FULL)
  supported |= SUPPORTED_10baseT_Full;
 if (bmsr & BMSR_100HALF)
  supported |= SUPPORTED_100baseT_Half;
 if (bmsr & BMSR_100FULL)
  supported |= SUPPORTED_100baseT_Full;
 if (estatus & ESTATUS_1000_THALF)
  supported |= SUPPORTED_1000baseT_Half;
 if (estatus & ESTATUS_1000_TFULL)
  supported |= SUPPORTED_1000baseT_Full;
 lp->supported = supported;

 advertising = 0;
 if (advert & ADVERTISE_10HALF)
  advertising |= ADVERTISED_10baseT_Half;
 if (advert & ADVERTISE_10FULL)
  advertising |= ADVERTISED_10baseT_Full;
 if (advert & ADVERTISE_100HALF)
  advertising |= ADVERTISED_100baseT_Half;
 if (advert & ADVERTISE_100FULL)
  advertising |= ADVERTISED_100baseT_Full;
 if (ctrl1000 & ADVERTISE_1000HALF)
  advertising |= ADVERTISED_1000baseT_Half;
 if (ctrl1000 & ADVERTISE_1000FULL)
  advertising |= ADVERTISED_1000baseT_Full;

 if (bmcr & BMCR_ANENABLE) {
  int neg, neg1000;

  lp->active_autoneg = 1;
  advertising |= ADVERTISED_Autoneg;

  neg = advert & lpa;
  neg1000 = (ctrl1000 << 2) & stat1000;

  if (neg1000 & (LPA_1000FULL | LPA_1000HALF))
   active_speed = SPEED_1000;
  else if (neg & LPA_100)
   active_speed = SPEED_100;
  else if (neg & (LPA_10HALF | LPA_10FULL))
   active_speed = SPEED_10;
  else
   active_speed = SPEED_INVALID;

  if ((neg1000 & LPA_1000FULL) || (neg & LPA_DUPLEX))
   active_duplex = DUPLEX_FULL;
  else if (active_speed != SPEED_INVALID)
   active_duplex = DUPLEX_HALF;
  else
   active_duplex = DUPLEX_INVALID;
 } else {
  lp->active_autoneg = 0;

  if ((bmcr & BMCR_SPEED1000) && !(bmcr & BMCR_SPEED100))
   active_speed = SPEED_1000;
  else if (bmcr & BMCR_SPEED100)
   active_speed = SPEED_100;
  else
   active_speed = SPEED_10;

  if (bmcr & BMCR_FULLDPLX)
   active_duplex = DUPLEX_FULL;
  else
   active_duplex = DUPLEX_HALF;
 }

 lp->active_advertising = advertising;
 lp->active_speed = active_speed;
 lp->active_duplex = active_duplex;
 *link_up_p = !!(bmsr & BMSR_LSTATUS);

 return 0;
}

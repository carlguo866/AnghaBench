
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mii_softc {struct mii_data* mii_pdata; } ;
struct TYPE_2__ {struct ifmedia_entry* ifm_cur; } ;
struct mii_data {int mii_media_active; int mii_media_status; TYPE_1__ mii_media; } ;
struct ifmedia_entry {int ifm_media; } ;


 int AC_DIAG_DUPLEX ;
 int AC_DIAG_SPEED ;
 int BMCR_AUTOEN ;
 int BMCR_ISO ;
 int BMCR_LOOP ;
 int BMSR_ACOMP ;
 int BMSR_LINK ;
 int IFM_100_TX ;
 int IFM_10_T ;
 int IFM_ACTIVE ;
 int IFM_AVALID ;
 int IFM_ETHER ;
 int IFM_FDX ;
 int IFM_HDX ;
 int IFM_LOOP ;
 int IFM_NONE ;
 int MII_ACPHY_DIAG ;
 int MII_BMCR ;
 int MII_BMSR ;
 int PHY_READ (struct mii_softc*,int ) ;
 int mii_phy_flowstatus (struct mii_softc*) ;

__attribute__((used)) static void
acphy_status(struct mii_softc *sc)
{
 struct mii_data *mii = sc->mii_pdata;
 struct ifmedia_entry *ife = mii->mii_media.ifm_cur;
 int bmsr, bmcr, diag;

 mii->mii_media_status = IFM_AVALID;
 mii->mii_media_active = IFM_ETHER;

 bmsr = PHY_READ(sc, MII_BMSR) |
     PHY_READ(sc, MII_BMSR);
 if (bmsr & BMSR_LINK)
  mii->mii_media_status |= IFM_ACTIVE;

 bmcr = PHY_READ(sc, MII_BMCR);
 if (bmcr & BMCR_ISO) {
  mii->mii_media_active |= IFM_NONE;
  mii->mii_media_status = 0;
  return;
 }

 if (bmcr & BMCR_LOOP)
  mii->mii_media_active |= IFM_LOOP;

 if (bmcr & BMCR_AUTOEN) {
  if ((bmsr & BMSR_ACOMP) == 0) {

   mii->mii_media_active |= IFM_NONE;
   return;
  }
  diag = PHY_READ(sc, MII_ACPHY_DIAG);
  if (diag & AC_DIAG_SPEED)
   mii->mii_media_active |= IFM_100_TX;
  else
   mii->mii_media_active |= IFM_10_T;

  if (diag & AC_DIAG_DUPLEX)
   mii->mii_media_active |=
       IFM_FDX | mii_phy_flowstatus(sc);
  else
   mii->mii_media_active |= IFM_HDX;
 } else
  mii->mii_media_active = ife->ifm_media;
}

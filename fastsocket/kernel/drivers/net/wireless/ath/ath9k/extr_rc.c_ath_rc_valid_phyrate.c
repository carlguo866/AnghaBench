
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int WLAN_RC_40_FLAG ;
 int WLAN_RC_DS_FLAG ;
 int WLAN_RC_HT_FLAG ;
 scalar_t__ WLAN_RC_PHY_40 (int) ;
 scalar_t__ WLAN_RC_PHY_DS (int) ;
 scalar_t__ WLAN_RC_PHY_HT (int) ;
 scalar_t__ WLAN_RC_PHY_SGI (int) ;
 scalar_t__ WLAN_RC_PHY_TS (int) ;
 int WLAN_RC_SGI_FLAG ;
 int WLAN_RC_TS_FLAG ;

__attribute__((used)) static int ath_rc_valid_phyrate(u32 phy, u32 capflag, int ignore_cw)
{
 if (WLAN_RC_PHY_HT(phy) && !(capflag & WLAN_RC_HT_FLAG))
  return 0;
 if (WLAN_RC_PHY_DS(phy) && !(capflag & WLAN_RC_DS_FLAG))
  return 0;
 if (WLAN_RC_PHY_TS(phy) && !(capflag & WLAN_RC_TS_FLAG))
  return 0;
 if (WLAN_RC_PHY_SGI(phy) && !(capflag & WLAN_RC_SGI_FLAG))
  return 0;
 if (!ignore_cw && WLAN_RC_PHY_HT(phy))
  if (WLAN_RC_PHY_40(phy) && !(capflag & WLAN_RC_40_FLAG))
   return 0;
 return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct brcms_phy_pub {int dummy; } ;
struct brcms_phy {int radio_chanspec; } ;



u16 wlc_phy_chanspec_get(struct brcms_phy_pub *ppi)
{
 struct brcms_phy *pi = (struct brcms_phy *) ppi;

 return pi->radio_chanspec;
}

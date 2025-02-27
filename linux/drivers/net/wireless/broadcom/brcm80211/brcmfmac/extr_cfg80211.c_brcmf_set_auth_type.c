
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct cfg80211_connect_params {int auth_type; } ;
struct brcmf_pub {int dummy; } ;
struct brcmf_if {struct brcmf_pub* drvr; } ;
struct brcmf_cfg80211_security {int auth_type; } ;
struct brcmf_cfg80211_profile {struct brcmf_cfg80211_security sec; } ;
typedef int s32 ;


 int CONN ;


 int bphy_err (struct brcmf_pub*,char*,int) ;
 int brcmf_dbg (int ,char*,...) ;
 int brcmf_fil_bsscfg_int_set (struct brcmf_if*,char*,int) ;
 struct brcmf_cfg80211_profile* ndev_to_prof (struct net_device*) ;
 struct brcmf_if* netdev_priv (struct net_device*) ;

__attribute__((used)) static s32 brcmf_set_auth_type(struct net_device *ndev,
          struct cfg80211_connect_params *sme)
{
 struct brcmf_if *ifp = netdev_priv(ndev);
 struct brcmf_cfg80211_profile *profile = ndev_to_prof(ndev);
 struct brcmf_pub *drvr = ifp->drvr;
 struct brcmf_cfg80211_security *sec;
 s32 val = 0;
 s32 err = 0;

 switch (sme->auth_type) {
 case 129:
  val = 0;
  brcmf_dbg(CONN, "open system\n");
  break;
 case 128:
  val = 1;
  brcmf_dbg(CONN, "shared key\n");
  break;
 default:
  val = 2;
  brcmf_dbg(CONN, "automatic, auth type (%d)\n", sme->auth_type);
  break;
 }

 err = brcmf_fil_bsscfg_int_set(ifp, "auth", val);
 if (err) {
  bphy_err(drvr, "set auth failed (%d)\n", err);
  return err;
 }
 sec = &profile->sec;
 sec->auth_type = sme->auth_type;
 return err;
}

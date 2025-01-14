
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_vif {int addr; } ;
struct ath_common {int bssidmask; int macaddr; } ;
struct ath9k_vif_iter_data {int mask; int hw_macaddr; } ;
struct ath9k_htc_priv {int hw; int ah; } ;


 int ETH_ALEN ;
 int IEEE80211_IFACE_ITER_RESUME_ALL ;
 int ath9k_htc_bssid_iter (struct ath9k_vif_iter_data*,int ,struct ieee80211_vif*) ;
 struct ath_common* ath9k_hw_common (int ) ;
 int ath_hw_setbssidmask (struct ath_common*) ;
 int ieee80211_iterate_active_interfaces_atomic (int ,int ,int (*) (struct ath9k_vif_iter_data*,int ,struct ieee80211_vif*),struct ath9k_vif_iter_data*) ;
 int memcpy (int ,int ,int ) ;
 int memset (int *,int,int ) ;

__attribute__((used)) static void ath9k_htc_set_bssid_mask(struct ath9k_htc_priv *priv,
         struct ieee80211_vif *vif)
{
 struct ath_common *common = ath9k_hw_common(priv->ah);
 struct ath9k_vif_iter_data iter_data;





 iter_data.hw_macaddr = common->macaddr;
 memset(&iter_data.mask, 0xff, ETH_ALEN);

 if (vif)
  ath9k_htc_bssid_iter(&iter_data, vif->addr, vif);


 ieee80211_iterate_active_interfaces_atomic(
  priv->hw, IEEE80211_IFACE_ITER_RESUME_ALL,
  ath9k_htc_bssid_iter, &iter_data);

 memcpy(common->bssidmask, iter_data.mask, ETH_ALEN);
 ath_hw_setbssidmask(common);
}

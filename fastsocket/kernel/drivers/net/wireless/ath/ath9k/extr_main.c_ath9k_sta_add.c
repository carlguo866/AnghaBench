
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_vif {scalar_t__ type; } ;
struct ieee80211_sta {scalar_t__ drv_priv; } ;
struct ieee80211_key_conf {int dummy; } ;
struct ieee80211_hw {struct ath_softc* priv; } ;
struct ath_softc {int sc_ah; } ;
struct ath_node {int ps_key; } ;
struct ath_common {int dummy; } ;


 scalar_t__ NL80211_IFTYPE_AP ;
 scalar_t__ NL80211_IFTYPE_AP_VLAN ;
 struct ath_common* ath9k_hw_common (int ) ;
 int ath_key_config (struct ath_common*,struct ieee80211_vif*,struct ieee80211_sta*,struct ieee80211_key_conf*) ;
 int ath_node_attach (struct ath_softc*,struct ieee80211_sta*,struct ieee80211_vif*) ;

__attribute__((used)) static int ath9k_sta_add(struct ieee80211_hw *hw,
    struct ieee80211_vif *vif,
    struct ieee80211_sta *sta)
{
 struct ath_softc *sc = hw->priv;
 struct ath_common *common = ath9k_hw_common(sc->sc_ah);
 struct ath_node *an = (struct ath_node *) sta->drv_priv;
 struct ieee80211_key_conf ps_key = { };
 int key;

 ath_node_attach(sc, sta, vif);

 if (vif->type != NL80211_IFTYPE_AP &&
     vif->type != NL80211_IFTYPE_AP_VLAN)
  return 0;

 key = ath_key_config(common, vif, sta, &ps_key);
 if (key > 0)
  an->ps_key = key;

 return 0;
}

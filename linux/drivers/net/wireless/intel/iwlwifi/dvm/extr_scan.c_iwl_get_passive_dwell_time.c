
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct iwl_priv {int dummy; } ;
typedef enum nl80211_band { ____Placeholder_nl80211_band } nl80211_band ;


 scalar_t__ IWL_PASSIVE_DWELL_BASE ;
 scalar_t__ IWL_PASSIVE_DWELL_TIME_24 ;
 scalar_t__ IWL_PASSIVE_DWELL_TIME_52 ;
 int NL80211_BAND_2GHZ ;
 scalar_t__ iwl_limit_dwell (struct iwl_priv*,scalar_t__) ;

__attribute__((used)) static u16 iwl_get_passive_dwell_time(struct iwl_priv *priv,
          enum nl80211_band band)
{
 u16 passive = (band == NL80211_BAND_2GHZ) ?
     IWL_PASSIVE_DWELL_BASE + IWL_PASSIVE_DWELL_TIME_24 :
     IWL_PASSIVE_DWELL_BASE + IWL_PASSIVE_DWELL_TIME_52;

 return iwl_limit_dwell(priv, passive);
}

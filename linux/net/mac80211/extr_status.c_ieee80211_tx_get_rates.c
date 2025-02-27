
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* rates; } ;
struct ieee80211_tx_info {int flags; TYPE_2__ status; } ;
struct ieee80211_hw {int max_report_rates; } ;
struct TYPE_3__ {int idx; scalar_t__ count; } ;


 int IEEE80211_TX_CTL_AMPDU ;
 int IEEE80211_TX_MAX_RATES ;
 int IEEE80211_TX_STAT_AMPDU ;

__attribute__((used)) static int ieee80211_tx_get_rates(struct ieee80211_hw *hw,
      struct ieee80211_tx_info *info,
      int *retry_count)
{
 int rates_idx = -1;
 int count = -1;
 int i;

 for (i = 0; i < IEEE80211_TX_MAX_RATES; i++) {
  if ((info->flags & IEEE80211_TX_CTL_AMPDU) &&
      !(info->flags & IEEE80211_TX_STAT_AMPDU)) {

   info->status.rates[i].idx = -1;
   info->status.rates[i].count = 0;
   break;
  } else if (info->status.rates[i].idx < 0) {
   break;
  } else if (i >= hw->max_report_rates) {

   info->status.rates[i].idx = -1;
   info->status.rates[i].count = 0;
   break;
  }

  count += info->status.rates[i].count;
 }
 rates_idx = i - 1;

 if (count < 0)
  count = 0;

 *retry_count = count;
 return rates_idx;
}

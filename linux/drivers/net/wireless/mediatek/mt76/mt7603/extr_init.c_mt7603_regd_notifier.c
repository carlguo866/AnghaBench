
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wiphy {int dummy; } ;
struct regulatory_request {scalar_t__ dfs_region; } ;
struct TYPE_2__ {scalar_t__ region; } ;
struct mt7603_dev {int ed_monitor; TYPE_1__ mt76; scalar_t__ ed_monitor_enabled; } ;
struct ieee80211_hw {struct mt7603_dev* priv; } ;


 scalar_t__ NL80211_DFS_ETSI ;
 struct ieee80211_hw* wiphy_to_ieee80211_hw (struct wiphy*) ;

__attribute__((used)) static void
mt7603_regd_notifier(struct wiphy *wiphy,
       struct regulatory_request *request)
{
 struct ieee80211_hw *hw = wiphy_to_ieee80211_hw(wiphy);
 struct mt7603_dev *dev = hw->priv;

 dev->mt76.region = request->dfs_region;
 dev->ed_monitor = dev->ed_monitor_enabled &&
     dev->mt76.region == NL80211_DFS_ETSI;
}

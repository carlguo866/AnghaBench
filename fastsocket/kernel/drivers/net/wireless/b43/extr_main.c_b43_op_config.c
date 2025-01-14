
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {TYPE_4__* chan; } ;
struct ieee80211_conf {int flags; scalar_t__ power_level; TYPE_1__ chandef; int long_frame_max_tx_count; int short_frame_max_tx_count; } ;
struct ieee80211_hw {struct ieee80211_conf conf; } ;
struct b43_phy {int is_40mhz; scalar_t__ channel; scalar_t__ desired_txpower; scalar_t__ radio_on; TYPE_2__* ops; } ;
struct b43_wldev {TYPE_3__* wl; int radio_hw_enable; struct b43_phy phy; } ;
struct b43_wl {scalar_t__ radio_enabled; TYPE_5__* vif; int mutex; struct b43_wldev* current_dev; } ;
struct TYPE_10__ {int bss_conf; } ;
struct TYPE_9__ {scalar_t__ hw_value; } ;
struct TYPE_8__ {int radiotap_enabled; } ;
struct TYPE_7__ {int (* set_rx_antenna ) (struct b43_wldev*,int) ;} ;


 int B43_ANTENNA_DEFAULT ;
 int B43_TXPWR_IGNORE_TIME ;
 int B43_TXPWR_IGNORE_TSSI ;
 int IEEE80211_CONF_CHANGE_RETRY_LIMITS ;
 int IEEE80211_CONF_MONITOR ;
 int b43_mac_enable (struct b43_wldev*) ;
 int b43_mac_suspend (struct b43_wldev*) ;
 int b43_mgmtframe_txantenna (struct b43_wldev*,int) ;
 int b43_op_bss_info_changed (struct ieee80211_hw*,TYPE_5__*,int *,int ) ;
 int b43_phy_txpower_check (struct b43_wldev*,int) ;
 int b43_set_retry_limits (struct b43_wldev*,int ,int ) ;
 int b43_software_rfkill (struct b43_wldev*,int) ;
 int b43_switch_band (struct b43_wl*,TYPE_4__*) ;
 int b43_switch_channel (struct b43_wldev*,scalar_t__) ;
 int b43info (TYPE_3__*,char*) ;
 scalar_t__ conf_is_ht (struct ieee80211_conf*) ;
 scalar_t__ conf_is_ht40_minus (struct ieee80211_conf*) ;
 scalar_t__ conf_is_ht40_plus (struct ieee80211_conf*) ;
 struct b43_wl* hw_to_b43_wl (struct ieee80211_hw*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct b43_wldev*,int) ;

__attribute__((used)) static int b43_op_config(struct ieee80211_hw *hw, u32 changed)
{
 struct b43_wl *wl = hw_to_b43_wl(hw);
 struct b43_wldev *dev;
 struct b43_phy *phy;
 struct ieee80211_conf *conf = &hw->conf;
 int antenna;
 int err = 0;
 bool reload_bss = 0;

 mutex_lock(&wl->mutex);

 dev = wl->current_dev;


 err = b43_switch_band(wl, conf->chandef.chan);
 if (err)
  goto out_unlock_mutex;


 if (dev != wl->current_dev) {
  dev = wl->current_dev;
  changed = ~0;
  reload_bss = 1;
 }

 phy = &dev->phy;

 if (conf_is_ht(conf))
  phy->is_40mhz =
   (conf_is_ht40_minus(conf) || conf_is_ht40_plus(conf));
 else
  phy->is_40mhz = 0;

 b43_mac_suspend(dev);

 if (changed & IEEE80211_CONF_CHANGE_RETRY_LIMITS)
  b43_set_retry_limits(dev, conf->short_frame_max_tx_count,
       conf->long_frame_max_tx_count);
 changed &= ~IEEE80211_CONF_CHANGE_RETRY_LIMITS;
 if (!changed)
  goto out_mac_enable;



 if (conf->chandef.chan->hw_value != phy->channel)
  b43_switch_channel(dev, conf->chandef.chan->hw_value);

 dev->wl->radiotap_enabled = !!(conf->flags & IEEE80211_CONF_MONITOR);


 if (conf->power_level != 0) {
  if (conf->power_level != phy->desired_txpower) {
   phy->desired_txpower = conf->power_level;
   b43_phy_txpower_check(dev, B43_TXPWR_IGNORE_TIME |
         B43_TXPWR_IGNORE_TSSI);
  }
 }


 antenna = B43_ANTENNA_DEFAULT;
 b43_mgmtframe_txantenna(dev, antenna);
 antenna = B43_ANTENNA_DEFAULT;
 if (phy->ops->set_rx_antenna)
  phy->ops->set_rx_antenna(dev, antenna);

 if (wl->radio_enabled != phy->radio_on) {
  if (wl->radio_enabled) {
   b43_software_rfkill(dev, 0);
   b43info(dev->wl, "Radio turned on by software\n");
   if (!dev->radio_hw_enable) {
    b43info(dev->wl, "The hardware RF-kill button "
     "still turns the radio physically off. "
     "Press the button to turn it on.\n");
   }
  } else {
   b43_software_rfkill(dev, 1);
   b43info(dev->wl, "Radio turned off by software\n");
  }
 }

out_mac_enable:
 b43_mac_enable(dev);
out_unlock_mutex:
 mutex_unlock(&wl->mutex);

 if (wl->vif && reload_bss)
  b43_op_bss_info_changed(hw, wl->vif, &wl->vif->bss_conf, ~0);

 return err;
}

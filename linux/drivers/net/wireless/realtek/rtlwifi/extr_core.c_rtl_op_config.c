
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct rtl_ps_ctl {scalar_t__ rfpwr_state; } ;
struct TYPE_11__ {int conf_mutex; } ;
struct TYPE_10__ {int offchan_delay; } ;
struct TYPE_15__ {scalar_t__ supp_phymode_switch; } ;
struct TYPE_14__ {int proxim_on; } ;
struct TYPE_13__ {int sw_ps_enabled; int multi_buffered; int fwctrl_lps; scalar_t__ swctrl_lps; } ;
struct TYPE_12__ {int ps_work; int rtl_wq; int ps_rfon_wq; } ;
struct rtl_phy {int current_channel; void* current_chan_bw; } ;
struct rtl_priv {TYPE_2__ locks; TYPE_8__* cfg; TYPE_1__ mac80211; TYPE_6__ dm; TYPE_5__ proximity; TYPE_4__ psc; TYPE_3__ works; struct rtl_phy phy; } ;
struct rtl_mac {scalar_t__ link_state; int bw_80; int bw_40; void* cur_40_prime_sc; void* cur_80_prime_sc; scalar_t__ act_scanning; int n_channels; int retry_short; int retry_long; scalar_t__ skip_scan; } ;
struct TYPE_18__ {int width; int center_freq1; struct ieee80211_channel* chan; } ;
struct ieee80211_conf {int flags; TYPE_9__ chandef; int long_frame_max_tx_count; } ;
struct ieee80211_hw {struct ieee80211_conf conf; } ;
struct ieee80211_channel {int center_freq; int hw_value; } ;
typedef enum nl80211_channel_type { ____Placeholder_nl80211_channel_type } nl80211_channel_type ;
typedef enum nl80211_chan_width { ____Placeholder_nl80211_chan_width } nl80211_chan_width ;
struct TYPE_17__ {TYPE_7__* ops; } ;
struct TYPE_16__ {int (* set_bw_mode ) (struct ieee80211_hw*,int) ;int (* set_channel_access ) (struct ieee80211_hw*) ;int (* switch_channel ) (struct ieee80211_hw*) ;int (* chk_switch_dmdp ) (struct ieee80211_hw*) ;int (* set_hw_reg ) (struct ieee80211_hw*,int ,int*) ;} ;


 int COMP_MAC80211 ;
 int DBG_LOUD ;
 scalar_t__ ERFOFF ;
 void* HT_CHANNEL_WIDTH_20 ;
 void* HT_CHANNEL_WIDTH_20_40 ;
 void* HT_CHANNEL_WIDTH_80 ;
 int HW_VAR_RETRY_LIMIT ;
 int IEEE80211_CONF_CHANGE_CHANNEL ;
 int IEEE80211_CONF_CHANGE_IDLE ;
 int IEEE80211_CONF_CHANGE_LISTEN_INTERVAL ;
 int IEEE80211_CONF_CHANGE_PS ;
 int IEEE80211_CONF_CHANGE_RETRY_LIMITS ;
 int IEEE80211_CONF_IDLE ;
 int IEEE80211_CONF_PS ;
 scalar_t__ MAC80211_LINKED ;
 int MSECS (int) ;




 int NL80211_CHAN_WIDTH_80 ;
 void* PRIME_CHNL_OFFSET_DONT_CARE ;
 void* PRIME_CHNL_OFFSET_LOWER ;
 void* PRIME_CHNL_OFFSET_UPPER ;
 int RT_TRACE (struct rtl_priv*,int ,int ,char*,...) ;
 int cancel_delayed_work (int *) ;
 int cfg80211_get_chandef_type (TYPE_9__*) ;
 int mdelay (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*,int) ;
 int queue_delayed_work (int ,int *,int ) ;
 int rtl_ips_nic_off (struct ieee80211_hw*) ;
 int rtl_ips_nic_on (struct ieee80211_hw*) ;
 struct rtl_mac* rtl_mac (struct rtl_priv*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;
 struct rtl_ps_ctl* rtl_psc (struct rtl_priv*) ;
 int rtl_swlps_rf_awake (struct ieee80211_hw*) ;
 int stub1 (struct ieee80211_hw*,int ,int*) ;
 int stub2 (struct ieee80211_hw*) ;
 int stub3 (struct ieee80211_hw*) ;
 int stub4 (struct ieee80211_hw*) ;
 int stub5 (struct ieee80211_hw*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int rtl_op_config(struct ieee80211_hw *hw, u32 changed)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_phy *rtlphy = &(rtlpriv->phy);
 struct rtl_mac *mac = rtl_mac(rtl_priv(hw));
 struct rtl_ps_ctl *ppsc = rtl_psc(rtl_priv(hw));
 struct ieee80211_conf *conf = &hw->conf;

 if (mac->skip_scan)
  return 1;

 mutex_lock(&rtlpriv->locks.conf_mutex);
 if (changed & IEEE80211_CONF_CHANGE_LISTEN_INTERVAL) {
  RT_TRACE(rtlpriv, COMP_MAC80211, DBG_LOUD,
    "IEEE80211_CONF_CHANGE_LISTEN_INTERVAL\n");
 }


 if (changed & IEEE80211_CONF_CHANGE_IDLE) {
  if (hw->conf.flags & IEEE80211_CONF_IDLE)
   rtl_ips_nic_off(hw);
  else
   rtl_ips_nic_on(hw);
 } else {




  if (unlikely(ppsc->rfpwr_state == ERFOFF))
   rtl_ips_nic_on(hw);
 }


 if ((changed & IEEE80211_CONF_CHANGE_PS) &&
     rtlpriv->psc.swctrl_lps && !rtlpriv->psc.fwctrl_lps) {
  cancel_delayed_work(&rtlpriv->works.ps_work);
  cancel_delayed_work(&rtlpriv->works.ps_rfon_wq);
  if (conf->flags & IEEE80211_CONF_PS) {
   rtlpriv->psc.sw_ps_enabled = 1;







   if (!rtlpriv->psc.multi_buffered)
    queue_delayed_work(rtlpriv->works.rtl_wq,
         &rtlpriv->works.ps_work,
         MSECS(5));
  } else {
   rtl_swlps_rf_awake(hw);
   rtlpriv->psc.sw_ps_enabled = 0;
  }
 }

 if (changed & IEEE80211_CONF_CHANGE_RETRY_LIMITS) {
  RT_TRACE(rtlpriv, COMP_MAC80211, DBG_LOUD,
    "IEEE80211_CONF_CHANGE_RETRY_LIMITS %x\n",
    hw->conf.long_frame_max_tx_count);



  if (changed != ~0) {
   mac->retry_long = hw->conf.long_frame_max_tx_count;
   mac->retry_short = hw->conf.long_frame_max_tx_count;
   rtlpriv->cfg->ops->set_hw_reg(hw, HW_VAR_RETRY_LIMIT,
    (u8 *)(&hw->conf.long_frame_max_tx_count));
  }
 }

 if (changed & IEEE80211_CONF_CHANGE_CHANNEL &&
     !rtlpriv->proximity.proxim_on) {
  struct ieee80211_channel *channel = hw->conf.chandef.chan;
  enum nl80211_chan_width width = hw->conf.chandef.width;
  enum nl80211_channel_type channel_type = 128;
  u8 wide_chan = (u8) channel->hw_value;


  if (width < NL80211_CHAN_WIDTH_80)
   channel_type =
    cfg80211_get_chandef_type(&hw->conf.chandef);
  if (mac->act_scanning)
   mac->n_channels++;

  if (rtlpriv->dm.supp_phymode_switch &&
   mac->link_state < MAC80211_LINKED &&
   !mac->act_scanning) {
   if (rtlpriv->cfg->ops->chk_switch_dmdp)
    rtlpriv->cfg->ops->chk_switch_dmdp(hw);
  }
  if (width >= NL80211_CHAN_WIDTH_80) {
   if (width == NL80211_CHAN_WIDTH_80) {
    u32 center = hw->conf.chandef.center_freq1;
    u32 primary =
    (u32)hw->conf.chandef.chan->center_freq;

    rtlphy->current_chan_bw =
     HT_CHANNEL_WIDTH_80;
    mac->bw_80 = 1;
    mac->bw_40 = 1;
    if (center > primary) {
     mac->cur_80_prime_sc =
     PRIME_CHNL_OFFSET_LOWER;
     if (center - primary == 10) {
      mac->cur_40_prime_sc =
      PRIME_CHNL_OFFSET_UPPER;

      wide_chan += 2;
     } else if (center - primary == 30) {
      mac->cur_40_prime_sc =
      PRIME_CHNL_OFFSET_LOWER;

      wide_chan += 6;
     }
    } else {
     mac->cur_80_prime_sc =
     PRIME_CHNL_OFFSET_UPPER;
     if (primary - center == 10) {
      mac->cur_40_prime_sc =
      PRIME_CHNL_OFFSET_LOWER;

      wide_chan -= 2;
     } else if (primary - center == 30) {
      mac->cur_40_prime_sc =
      PRIME_CHNL_OFFSET_UPPER;

      wide_chan -= 6;
     }
    }
   }
  } else {
   switch (channel_type) {
   case 131:
   case 128:

     mac->cur_40_prime_sc =
      PRIME_CHNL_OFFSET_DONT_CARE;
     rtlphy->current_chan_bw =
      HT_CHANNEL_WIDTH_20;
     mac->bw_40 = 0;
     mac->bw_80 = 0;
     break;
   case 130:

     mac->cur_40_prime_sc =
      PRIME_CHNL_OFFSET_UPPER;
     rtlphy->current_chan_bw =
      HT_CHANNEL_WIDTH_20_40;
     mac->bw_40 = 1;
     mac->bw_80 = 0;


     wide_chan -= 2;

     break;
   case 129:

     mac->cur_40_prime_sc =
      PRIME_CHNL_OFFSET_LOWER;
     rtlphy->current_chan_bw =
      HT_CHANNEL_WIDTH_20_40;
     mac->bw_40 = 1;
     mac->bw_80 = 0;


     wide_chan += 2;

     break;
   default:
     mac->bw_40 = 0;
     mac->bw_80 = 0;
     pr_err("switch case %#x not processed\n",
            channel_type);
     break;
   }
  }

  if (wide_chan <= 0)
   wide_chan = 1;
  if (rtlpriv->mac80211.offchan_delay) {
   rtlpriv->mac80211.offchan_delay = 0;
   mdelay(50);
  }

  rtlphy->current_channel = wide_chan;

  rtlpriv->cfg->ops->switch_channel(hw);
  rtlpriv->cfg->ops->set_channel_access(hw);
  rtlpriv->cfg->ops->set_bw_mode(hw, channel_type);
 }

 mutex_unlock(&rtlpriv->locks.conf_mutex);

 return 0;
}

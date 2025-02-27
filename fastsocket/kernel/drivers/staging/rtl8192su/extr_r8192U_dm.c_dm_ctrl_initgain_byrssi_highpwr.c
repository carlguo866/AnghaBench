
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct r8192_priv {scalar_t__ undecorated_smoothed_pwdb; scalar_t__ reset_count; scalar_t__ CurrentChannelBW; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ rssi_high_power_lowthresh; scalar_t__ rssi_high_power_highthresh; scalar_t__ dig_highpwr_state; scalar_t__ rssi_high_thresh; } ;


 scalar_t__ DM_STA_DIG_OFF ;
 scalar_t__ DM_STA_DIG_ON ;
 scalar_t__ HT_CHANNEL_WIDTH_20 ;
 int bMaskByte0 ;
 TYPE_1__ dm_digtable ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 scalar_t__ rOFDM0_RxDetector1 ;
 scalar_t__ rOFDM0_XATxAFE ;
 int rtl8192_setBBreg (struct net_device*,scalar_t__,int ,int) ;
 int write_nic_byte (struct net_device*,scalar_t__,int) ;

__attribute__((used)) static void dm_ctrl_initgain_byrssi_highpwr(
 struct net_device * dev)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 static u32 reset_cnt_highpwr = 0;


 if ((priv->undecorated_smoothed_pwdb > dm_digtable.rssi_high_power_lowthresh) &&
  (priv->undecorated_smoothed_pwdb < dm_digtable.rssi_high_power_highthresh))
 {
  return;
 }




 if (priv->undecorated_smoothed_pwdb >= dm_digtable.rssi_high_power_highthresh)
 {
  if (dm_digtable.dig_highpwr_state == DM_STA_DIG_ON &&
   (priv->reset_count == reset_cnt_highpwr))
   return;
  else
   dm_digtable.dig_highpwr_state = DM_STA_DIG_ON;


  if (priv->CurrentChannelBW != HT_CHANNEL_WIDTH_20)
  {
   rtl8192_setBBreg(dev, (rOFDM0_XATxAFE+3), bMaskByte0, 0x10);




  }
  else
   write_nic_byte(dev, rOFDM0_RxDetector1, 0x43);
 }
 else
 {
  if (dm_digtable.dig_highpwr_state == DM_STA_DIG_OFF&&
   (priv->reset_count == reset_cnt_highpwr))
   return;
  else
   dm_digtable.dig_highpwr_state = DM_STA_DIG_OFF;

  if (priv->undecorated_smoothed_pwdb < dm_digtable.rssi_high_power_lowthresh &&
    priv->undecorated_smoothed_pwdb >= dm_digtable.rssi_high_thresh)
  {

   if (priv->CurrentChannelBW != HT_CHANNEL_WIDTH_20)
   {



     write_nic_byte(dev, (rOFDM0_XATxAFE+3), 0x20);





   }
   else
    write_nic_byte(dev, rOFDM0_RxDetector1, 0x44);
  }
 }

 reset_cnt_highpwr = priv->reset_count;

}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef scalar_t__ u32 ;
struct ieee80211_channel {scalar_t__ center_freq; int hw_value; } ;
struct ath5k_rate_pcal_info {scalar_t__ freq; void* target_power_54; void* target_power_48; void* target_power_36; void* target_power_6to24; } ;
struct ath5k_eeprom_info {size_t* ee_rate_target_pwr_num; struct ath5k_rate_pcal_info* ee_rate_tpwr_g; struct ath5k_rate_pcal_info* ee_rate_tpwr_b; struct ath5k_rate_pcal_info* ee_rate_tpwr_a; } ;
struct TYPE_2__ {struct ath5k_eeprom_info cap_eeprom; } ;
struct ath5k_hw {TYPE_1__ ah_capabilities; } ;


 size_t AR5K_EEPROM_MODE_11A ;
 size_t AR5K_EEPROM_MODE_11B ;
 size_t AR5K_EEPROM_MODE_11G ;



 void* ath5k_get_interpolated_value (scalar_t__,scalar_t__,scalar_t__,void*,void*) ;

__attribute__((used)) static void
ath5k_get_rate_pcal_data(struct ath5k_hw *ah,
   struct ieee80211_channel *channel,
   struct ath5k_rate_pcal_info *rates)
{
 struct ath5k_eeprom_info *ee = &ah->ah_capabilities.cap_eeprom;
 struct ath5k_rate_pcal_info *rpinfo;
 u8 idx_l, idx_r;
 u8 mode, max, i;
 u32 target = channel->center_freq;

 idx_l = 0;
 idx_r = 0;

 switch (channel->hw_value) {
 case 130:
  rpinfo = ee->ee_rate_tpwr_a;
  mode = AR5K_EEPROM_MODE_11A;
  break;
 case 129:
  rpinfo = ee->ee_rate_tpwr_b;
  mode = AR5K_EEPROM_MODE_11B;
  break;
 case 128:
 default:
  rpinfo = ee->ee_rate_tpwr_g;
  mode = AR5K_EEPROM_MODE_11G;
  break;
 }
 max = ee->ee_rate_target_pwr_num[mode] - 1;



 if (target < rpinfo[0].freq) {
  idx_l = idx_r = 0;
  goto done;
 }

 if (target > rpinfo[max].freq) {
  idx_l = idx_r = max;
  goto done;
 }

 for (i = 0; i <= max; i++) {

  if (rpinfo[i].freq == target) {
   idx_l = idx_r = i;
   goto done;
  }

  if (target < rpinfo[i].freq) {
   idx_r = i;
   idx_l = idx_r - 1;
   goto done;
  }
 }

done:

 rates->freq = target;

 rates->target_power_6to24 =
  ath5k_get_interpolated_value(target, rpinfo[idx_l].freq,
     rpinfo[idx_r].freq,
     rpinfo[idx_l].target_power_6to24,
     rpinfo[idx_r].target_power_6to24);

 rates->target_power_36 =
  ath5k_get_interpolated_value(target, rpinfo[idx_l].freq,
     rpinfo[idx_r].freq,
     rpinfo[idx_l].target_power_36,
     rpinfo[idx_r].target_power_36);

 rates->target_power_48 =
  ath5k_get_interpolated_value(target, rpinfo[idx_l].freq,
     rpinfo[idx_r].freq,
     rpinfo[idx_l].target_power_48,
     rpinfo[idx_r].target_power_48);

 rates->target_power_54 =
  ath5k_get_interpolated_value(target, rpinfo[idx_l].freq,
     rpinfo[idx_r].freq,
     rpinfo[idx_l].target_power_54,
     rpinfo[idx_r].target_power_54);
}

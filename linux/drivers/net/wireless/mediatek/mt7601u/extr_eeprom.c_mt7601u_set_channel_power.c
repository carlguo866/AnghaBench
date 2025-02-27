
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct mt7601u_dev {TYPE_1__* ee; } ;
typedef scalar_t__ s8 ;
struct TYPE_2__ {scalar_t__* chan_pwr; } ;


 scalar_t__ FIELD_GET (int ,int) ;
 scalar_t__ MT7601U_DEFAULT_TX_POWER ;
 int MT_EE_TX_POWER_OFFSET ;
 int MT_TX_ALC_CFG_0 ;
 int MT_TX_ALC_CFG_0_LIMIT_0 ;
 scalar_t__ field_validate (scalar_t__) ;
 scalar_t__ mt7601u_has_tssi (struct mt7601u_dev*,scalar_t__*) ;
 int mt7601u_rr (struct mt7601u_dev*,int ) ;
 int mt7601u_set_channel_target_power (struct mt7601u_dev*,scalar_t__*,scalar_t__) ;

__attribute__((used)) static void
mt7601u_set_channel_power(struct mt7601u_dev *dev, u8 *eeprom)
{
 u32 i, val;
 u8 max_pwr;

 val = mt7601u_rr(dev, MT_TX_ALC_CFG_0);
 max_pwr = FIELD_GET(MT_TX_ALC_CFG_0_LIMIT_0, val);

 if (mt7601u_has_tssi(dev, eeprom)) {
  mt7601u_set_channel_target_power(dev, eeprom, max_pwr);
  return;
 }

 for (i = 0; i < 14; i++) {
  s8 power = field_validate(eeprom[MT_EE_TX_POWER_OFFSET + i]);

  if (power > max_pwr || power < 0)
   power = MT7601U_DEFAULT_TX_POWER;

  dev->ee->chan_pwr[i] = power;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mt7615_channel_group { ____Placeholder_mt7615_channel_group } mt7615_channel_group ;


 int MT_CH_5G_JAPAN ;
 int MT_CH_5G_UNII_1 ;
 int MT_CH_5G_UNII_2A ;
 int MT_CH_5G_UNII_2E_1 ;
 int MT_CH_5G_UNII_2E_2 ;
 int MT_CH_5G_UNII_2E_3 ;
 int MT_CH_5G_UNII_3 ;

__attribute__((used)) static inline enum mt7615_channel_group
mt7615_get_channel_group(int channel)
{
 if (channel >= 184 && channel <= 196)
  return MT_CH_5G_JAPAN;
 if (channel <= 48)
  return MT_CH_5G_UNII_1;
 if (channel <= 64)
  return MT_CH_5G_UNII_2A;
 if (channel <= 114)
  return MT_CH_5G_UNII_2E_1;
 if (channel <= 144)
  return MT_CH_5G_UNII_2E_2;
 if (channel <= 161)
  return MT_CH_5G_UNII_2E_3;
 return MT_CH_5G_UNII_3;
}

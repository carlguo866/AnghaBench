
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
typedef size_t u32 ;
struct ieee80211_device {int dummy; } ;
struct TYPE_3__ {scalar_t__* channel_map; } ;
typedef TYPE_1__* PRT_DOT11D_INFO ;


 TYPE_1__* GET_DOT11D_INFO (struct ieee80211_device*) ;
 size_t MAX_CHANNEL_NUMBER ;
 int printk (char*) ;

int ToLegalChannel(
 struct ieee80211_device * dev,
 u8 channel
)
{
 PRT_DOT11D_INFO pDot11dInfo = GET_DOT11D_INFO(dev);
 u8 default_chn = 0;
 u32 i = 0;

 for (i=1; i<= MAX_CHANNEL_NUMBER; i++)
 {
  if(pDot11dInfo->channel_map[i] > 0)
  {
   default_chn = i;
   break;
  }
 }

 if(MAX_CHANNEL_NUMBER < channel)
 {
  printk("IsLegalChannel(): Invalid Channel\n");
  return default_chn;
 }

 if(pDot11dInfo->channel_map[channel] > 0)
  return channel;

 return default_chn;
}

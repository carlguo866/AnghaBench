
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iw_point {int flags; scalar_t__ length; } ;
union iwreq_data {struct iw_point encoding; } ;
typedef int u32 ;
struct r8180_priv {int* key0; TYPE_1__* ieee80211; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_2__ {scalar_t__ bHwRadioOff; } ;


 int DMESG (char*,int,int,int,int) ;
 int IW_ENCODE_DISABLED ;
 struct r8180_priv* ieee80211_priv (struct net_device*) ;
 int rtl8180_set_hw_wep (struct net_device*) ;

int r8180_wx_set_key(struct net_device *dev, struct iw_request_info *info,
       union iwreq_data *wrqu, char *key)
{
 struct r8180_priv *priv = ieee80211_priv(dev);
 struct iw_point *erq = &(wrqu->encoding);

 if(priv->ieee80211->bHwRadioOff)
  return 0;

 if (erq->flags & IW_ENCODE_DISABLED) {
 }






 if (erq->length > 0) {



  u32* tkey= (u32*) key;
  priv->key0[0] = tkey[0];
  priv->key0[1] = tkey[1];
  priv->key0[2] = tkey[2];
  priv->key0[3] = tkey[3] &0xff;
  DMESG("Setting wep key to %x %x %x %x",
        tkey[0],tkey[1],tkey[2],tkey[3]);
  rtl8180_set_hw_wep(dev);
 }
 return 0;
}

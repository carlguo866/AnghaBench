
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_security {int auth_mode; int flags; } ;
struct ieee80211_device {int open_wep; int dev; int (* set_security ) (int ,struct ieee80211_security*) ;} ;


 int AUTH_ALG_SHARED_KEY ;
 int EOPNOTSUPP ;
 int SEC_AUTH_MODE ;
 int WLAN_AUTH_OPEN ;
 int WLAN_AUTH_SHARED_KEY ;
 int stub1 (int ,struct ieee80211_security*) ;

__attribute__((used)) static int ieee80211_wpa_set_auth_algs(struct ieee80211_device *ieee, int value)
{

 struct ieee80211_security sec = {
  .flags = SEC_AUTH_MODE,
 };
 int ret = 0;

 if (value & AUTH_ALG_SHARED_KEY) {
  sec.auth_mode = WLAN_AUTH_SHARED_KEY;
  ieee->open_wep = 0;
 } else {
  sec.auth_mode = WLAN_AUTH_OPEN;
  ieee->open_wep = 1;
 }

 if (ieee->set_security)
  ieee->set_security(ieee->dev, &sec);
 else
  ret = -EOPNOTSUPP;

 return ret;
}

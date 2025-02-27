
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ value; int fixed; scalar_t__ disabled; } ;
union iwreq_data {TYPE_1__ rts; } ;
struct iw_request_info {int dummy; } ;
struct ieee80211_device {scalar_t__ rts; } ;


 scalar_t__ DEFAULT_RTS_THRESHOLD ;
 int EINVAL ;
 scalar_t__ MAX_RTS_THRESHOLD ;
 scalar_t__ MIN_RTS_THRESHOLD ;

int ieee80211_wx_set_rts(struct ieee80211_device *ieee,
        struct iw_request_info *info,
        union iwreq_data *wrqu, char *extra)
{
 if (wrqu->rts.disabled || !wrqu->rts.fixed) {
  ieee->rts = DEFAULT_RTS_THRESHOLD;
 } else {
  if (wrqu->rts.value < MIN_RTS_THRESHOLD ||
    wrqu->rts.value > MAX_RTS_THRESHOLD)
   return -EINVAL;
  ieee->rts = wrqu->rts.value;
 }
 return 0;
}

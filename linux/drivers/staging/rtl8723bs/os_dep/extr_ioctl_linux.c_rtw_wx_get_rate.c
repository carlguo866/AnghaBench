
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; scalar_t__ fixed; } ;
union iwreq_data {TYPE_1__ bitrate; } ;
typedef int u16 ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct adapter {int dummy; } ;


 int EPERM ;
 int rtw_get_cur_max_rate (struct adapter*) ;
 scalar_t__ rtw_netdev_priv (struct net_device*) ;

__attribute__((used)) static int rtw_wx_get_rate(struct net_device *dev,
        struct iw_request_info *info,
        union iwreq_data *wrqu, char *extra)
{
 u16 max_rate = 0;

 max_rate = rtw_get_cur_max_rate((struct adapter *)rtw_netdev_priv(dev));

 if (max_rate == 0)
  return -EPERM;

 wrqu->bitrate.fixed = 0;
 wrqu->bitrate.value = max_rate * 100000;

 return 0;
}

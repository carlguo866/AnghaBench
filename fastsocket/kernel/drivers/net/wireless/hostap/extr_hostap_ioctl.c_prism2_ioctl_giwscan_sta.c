
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int length; } ;
struct hostap_interface {TYPE_1__* local; } ;
struct TYPE_3__ {scalar_t__ scan_timestamp; } ;
typedef TYPE_1__ local_info_t ;


 int EAGAIN ;
 int EOPNOTSUPP ;
 int HZ ;
 int jiffies ;
 struct hostap_interface* netdev_priv (struct net_device*) ;
 int prism2_translate_scan (TYPE_1__*,struct iw_request_info*,char*,int) ;
 scalar_t__ time_before (int ,scalar_t__) ;

__attribute__((used)) static inline int prism2_ioctl_giwscan_sta(struct net_device *dev,
        struct iw_request_info *info,
        struct iw_point *data, char *extra)
{



 struct hostap_interface *iface;
 local_info_t *local;
 int res;

 iface = netdev_priv(dev);
 local = iface->local;



 if (local->scan_timestamp &&
     time_before(jiffies, local->scan_timestamp + 3 * HZ)) {
  return -EAGAIN;
 }
 local->scan_timestamp = 0;

 res = prism2_translate_scan(local, info, extra, data->length);

 if (res >= 0) {
  data->length = res;
  return 0;
 } else {
  data->length = 0;
  return res;
 }

}

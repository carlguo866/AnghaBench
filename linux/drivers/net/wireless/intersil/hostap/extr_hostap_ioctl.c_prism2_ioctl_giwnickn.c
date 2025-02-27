
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int length; } ;
struct hostap_interface {TYPE_2__* local; } ;
struct TYPE_4__ {TYPE_1__* func; } ;
typedef TYPE_2__ local_info_t ;
typedef int __le16 ;
struct TYPE_3__ {int (* get_rid ) (struct net_device*,int ,char**,int,int ) ;} ;


 int EOPNOTSUPP ;
 int HFA384X_RID_CNFOWNNAME ;
 int MAX_NAME_LEN ;
 int le16_to_cpu (int ) ;
 int memcpy (char*,char*,int) ;
 struct hostap_interface* netdev_priv (struct net_device*) ;
 int stub1 (struct net_device*,int ,char**,int,int ) ;

__attribute__((used)) static int prism2_ioctl_giwnickn(struct net_device *dev,
     struct iw_request_info *info,
     struct iw_point *data, char *nickname)
{
 struct hostap_interface *iface;
 local_info_t *local;
 int len;
 char name[MAX_NAME_LEN + 3];
 u16 val;

 iface = netdev_priv(dev);
 local = iface->local;

 len = local->func->get_rid(dev, HFA384X_RID_CNFOWNNAME,
       &name, MAX_NAME_LEN + 2, 0);
 val = le16_to_cpu(*(__le16 *) name);
 if (len > MAX_NAME_LEN + 2 || len < 0 || val > MAX_NAME_LEN)
  return -EOPNOTSUPP;

 name[val + 2] = '\0';
 data->length = val + 1;
 memcpy(nickname, name + 2, val + 1);

 return 0;
}

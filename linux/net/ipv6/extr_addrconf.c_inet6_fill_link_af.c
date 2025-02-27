
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct inet6_dev {int dummy; } ;


 int EMSGSIZE ;
 int ENODATA ;
 struct inet6_dev* __in6_dev_get (struct net_device const*) ;
 scalar_t__ inet6_fill_ifla6_attrs (struct sk_buff*,struct inet6_dev*,int ) ;

__attribute__((used)) static int inet6_fill_link_af(struct sk_buff *skb, const struct net_device *dev,
         u32 ext_filter_mask)
{
 struct inet6_dev *idev = __in6_dev_get(dev);

 if (!idev)
  return -ENODATA;

 if (inet6_fill_ifla6_attrs(skb, idev, ext_filter_mask) < 0)
  return -EMSGSIZE;

 return 0;
}

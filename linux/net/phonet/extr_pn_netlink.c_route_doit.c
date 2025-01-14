
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int sk; } ;
struct rtmsg {scalar_t__ rtm_table; scalar_t__ rtm_type; } ;
struct nlmsghdr {scalar_t__ nlmsg_type; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;


 int ASSERT_RTNL () ;
 int CAP_NET_ADMIN ;
 int CAP_SYS_ADMIN ;
 int EINVAL ;
 int ENODEV ;
 int EPERM ;
 size_t RTA_DST ;
 int RTA_MAX ;
 size_t RTA_OIF ;
 scalar_t__ RTM_NEWROUTE ;
 scalar_t__ RTN_UNICAST ;
 scalar_t__ RT_TABLE_MAIN ;
 struct net_device* __dev_get_by_index (struct net*,int ) ;
 int netlink_capable (struct sk_buff*,int ) ;
 int nla_get_u32 (struct nlattr*) ;
 int nla_get_u8 (struct nlattr*) ;
 struct rtmsg* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_parse_deprecated (struct nlmsghdr*,int,struct nlattr**,int ,int ,struct netlink_ext_ack*) ;
 int phonet_route_add (struct net_device*,int) ;
 int phonet_route_del (struct net_device*,int) ;
 int rtm_phonet_notify (scalar_t__,struct net_device*,int) ;
 int rtm_phonet_policy ;
 struct net* sock_net (int ) ;

__attribute__((used)) static int route_doit(struct sk_buff *skb, struct nlmsghdr *nlh,
        struct netlink_ext_ack *extack)
{
 struct net *net = sock_net(skb->sk);
 struct nlattr *tb[RTA_MAX+1];
 struct net_device *dev;
 struct rtmsg *rtm;
 int err;
 u8 dst;

 if (!netlink_capable(skb, CAP_NET_ADMIN))
  return -EPERM;

 if (!netlink_capable(skb, CAP_SYS_ADMIN))
  return -EPERM;

 ASSERT_RTNL();

 err = nlmsg_parse_deprecated(nlh, sizeof(*rtm), tb, RTA_MAX,
         rtm_phonet_policy, extack);
 if (err < 0)
  return err;

 rtm = nlmsg_data(nlh);
 if (rtm->rtm_table != RT_TABLE_MAIN || rtm->rtm_type != RTN_UNICAST)
  return -EINVAL;
 if (tb[RTA_DST] == ((void*)0) || tb[RTA_OIF] == ((void*)0))
  return -EINVAL;
 dst = nla_get_u8(tb[RTA_DST]);
 if (dst & 3)
  return -EINVAL;

 dev = __dev_get_by_index(net, nla_get_u32(tb[RTA_OIF]));
 if (dev == ((void*)0))
  return -ENODEV;

 if (nlh->nlmsg_type == RTM_NEWROUTE)
  err = phonet_route_add(dev, dst);
 else
  err = phonet_route_del(dev, dst);
 if (!err)
  rtm_phonet_notify(nlh->nlmsg_type, dev, dst);
 return err;
}

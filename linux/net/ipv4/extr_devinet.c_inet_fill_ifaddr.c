
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct inet_fill_args {scalar_t__ netnsid; int flags; int event; int seq; int portid; } ;
struct in_ifaddr {int ifa_flags; scalar_t__ ifa_preferred_lft; scalar_t__ ifa_valid_lft; long ifa_tstamp; int ifa_rt_priority; int ifa_cstamp; scalar_t__* ifa_label; scalar_t__ ifa_broadcast; scalar_t__ ifa_local; scalar_t__ ifa_address; TYPE_2__* ifa_dev; int ifa_scope; int ifa_prefixlen; } ;
struct ifaddrmsg {int ifa_flags; int ifa_index; int ifa_scope; int ifa_prefixlen; int ifa_family; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {int ifindex; } ;


 int AF_INET ;
 int EMSGSIZE ;
 long HZ ;
 int IFA_ADDRESS ;
 int IFA_BROADCAST ;
 int IFA_FLAGS ;
 int IFA_F_PERMANENT ;
 int IFA_LABEL ;
 int IFA_LOCAL ;
 int IFA_RT_PRIORITY ;
 int IFA_TARGET_NETNSID ;
 scalar_t__ INFINITY_LIFE_TIME ;
 long jiffies ;
 scalar_t__ nla_put_in_addr (struct sk_buff*,int ,scalar_t__) ;
 scalar_t__ nla_put_s32 (struct sk_buff*,int ,scalar_t__) ;
 scalar_t__ nla_put_string (struct sk_buff*,int ,scalar_t__*) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int) ;
 int nlmsg_cancel (struct sk_buff*,struct nlmsghdr*) ;
 struct ifaddrmsg* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int ,int,int ) ;
 scalar_t__ put_cacheinfo (struct sk_buff*,int ,long,scalar_t__,scalar_t__) ;

__attribute__((used)) static int inet_fill_ifaddr(struct sk_buff *skb, struct in_ifaddr *ifa,
       struct inet_fill_args *args)
{
 struct ifaddrmsg *ifm;
 struct nlmsghdr *nlh;
 u32 preferred, valid;

 nlh = nlmsg_put(skb, args->portid, args->seq, args->event, sizeof(*ifm),
   args->flags);
 if (!nlh)
  return -EMSGSIZE;

 ifm = nlmsg_data(nlh);
 ifm->ifa_family = AF_INET;
 ifm->ifa_prefixlen = ifa->ifa_prefixlen;
 ifm->ifa_flags = ifa->ifa_flags;
 ifm->ifa_scope = ifa->ifa_scope;
 ifm->ifa_index = ifa->ifa_dev->dev->ifindex;

 if (args->netnsid >= 0 &&
     nla_put_s32(skb, IFA_TARGET_NETNSID, args->netnsid))
  goto nla_put_failure;

 if (!(ifm->ifa_flags & IFA_F_PERMANENT)) {
  preferred = ifa->ifa_preferred_lft;
  valid = ifa->ifa_valid_lft;
  if (preferred != INFINITY_LIFE_TIME) {
   long tval = (jiffies - ifa->ifa_tstamp) / HZ;

   if (preferred > tval)
    preferred -= tval;
   else
    preferred = 0;
   if (valid != INFINITY_LIFE_TIME) {
    if (valid > tval)
     valid -= tval;
    else
     valid = 0;
   }
  }
 } else {
  preferred = INFINITY_LIFE_TIME;
  valid = INFINITY_LIFE_TIME;
 }
 if ((ifa->ifa_address &&
      nla_put_in_addr(skb, IFA_ADDRESS, ifa->ifa_address)) ||
     (ifa->ifa_local &&
      nla_put_in_addr(skb, IFA_LOCAL, ifa->ifa_local)) ||
     (ifa->ifa_broadcast &&
      nla_put_in_addr(skb, IFA_BROADCAST, ifa->ifa_broadcast)) ||
     (ifa->ifa_label[0] &&
      nla_put_string(skb, IFA_LABEL, ifa->ifa_label)) ||
     nla_put_u32(skb, IFA_FLAGS, ifa->ifa_flags) ||
     (ifa->ifa_rt_priority &&
      nla_put_u32(skb, IFA_RT_PRIORITY, ifa->ifa_rt_priority)) ||
     put_cacheinfo(skb, ifa->ifa_cstamp, ifa->ifa_tstamp,
     preferred, valid))
  goto nla_put_failure;

 nlmsg_end(skb, nlh);
 return 0;

nla_put_failure:
 nlmsg_cancel(skb, nlh);
 return -EMSGSIZE;
}

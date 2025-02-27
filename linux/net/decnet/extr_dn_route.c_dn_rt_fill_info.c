
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct rtmsg {int rtm_dst_len; int rtm_src_len; int rtm_flags; int rtm_protocol; int rtm_scope; int rtm_type; int rtm_table; scalar_t__ rtm_tos; int rtm_family; } ;
struct nlmsghdr {int dummy; } ;
struct TYPE_6__ {scalar_t__ saddr; int flowidn_iif; } ;
struct TYPE_7__ {long expires; int error; TYPE_1__* dev; } ;
struct dn_route {int rt_flags; scalar_t__ rt_daddr; scalar_t__ rt_local_src; scalar_t__ rt_gateway; TYPE_2__ fld; TYPE_3__ dst; int rt_type; } ;
struct TYPE_5__ {int ifindex; } ;


 int AF_DECnet ;
 int EMSGSIZE ;
 int RTA_DST ;
 int RTA_GATEWAY ;
 int RTA_IIF ;
 int RTA_OIF ;
 int RTA_PREFSRC ;
 int RTA_SRC ;
 int RTA_TABLE ;
 int RTCF_NOTIFY ;
 int RTM_F_CLONED ;
 int RTM_F_NOTIFY ;
 int RTPROT_UNSPEC ;
 int RT_SCOPE_UNIVERSE ;
 int RT_TABLE_MAIN ;
 scalar_t__ dn_is_input_route (struct dn_route*) ;
 int dst_metrics_ptr (TYPE_3__*) ;
 long jiffies ;
 scalar_t__ nla_put_le16 (struct sk_buff*,int ,scalar_t__) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 int nlmsg_cancel (struct sk_buff*,struct nlmsghdr*) ;
 struct rtmsg* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_end (struct sk_buff*,struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_put (struct sk_buff*,int ,int ,int,int,unsigned int) ;
 scalar_t__ rtnetlink_put_metrics (struct sk_buff*,int ) ;
 scalar_t__ rtnl_put_cacheinfo (struct sk_buff*,TYPE_3__*,int ,long,int ) ;
 scalar_t__ skb_dst (struct sk_buff*) ;

__attribute__((used)) static int dn_rt_fill_info(struct sk_buff *skb, u32 portid, u32 seq,
      int event, int nowait, unsigned int flags)
{
 struct dn_route *rt = (struct dn_route *)skb_dst(skb);
 struct rtmsg *r;
 struct nlmsghdr *nlh;
 long expires;

 nlh = nlmsg_put(skb, portid, seq, event, sizeof(*r), flags);
 if (!nlh)
  return -EMSGSIZE;

 r = nlmsg_data(nlh);
 r->rtm_family = AF_DECnet;
 r->rtm_dst_len = 16;
 r->rtm_src_len = 0;
 r->rtm_tos = 0;
 r->rtm_table = RT_TABLE_MAIN;
 r->rtm_type = rt->rt_type;
 r->rtm_flags = (rt->rt_flags & ~0xFFFF) | RTM_F_CLONED;
 r->rtm_scope = RT_SCOPE_UNIVERSE;
 r->rtm_protocol = RTPROT_UNSPEC;

 if (rt->rt_flags & RTCF_NOTIFY)
  r->rtm_flags |= RTM_F_NOTIFY;

 if (nla_put_u32(skb, RTA_TABLE, RT_TABLE_MAIN) < 0 ||
     nla_put_le16(skb, RTA_DST, rt->rt_daddr) < 0)
  goto errout;

 if (rt->fld.saddr) {
  r->rtm_src_len = 16;
  if (nla_put_le16(skb, RTA_SRC, rt->fld.saddr) < 0)
   goto errout;
 }
 if (rt->dst.dev &&
     nla_put_u32(skb, RTA_OIF, rt->dst.dev->ifindex) < 0)
  goto errout;






 if (nla_put_le16(skb, RTA_PREFSRC, rt->rt_local_src) < 0)
  goto errout;

 if (rt->rt_daddr != rt->rt_gateway &&
     nla_put_le16(skb, RTA_GATEWAY, rt->rt_gateway) < 0)
  goto errout;

 if (rtnetlink_put_metrics(skb, dst_metrics_ptr(&rt->dst)) < 0)
  goto errout;

 expires = rt->dst.expires ? rt->dst.expires - jiffies : 0;
 if (rtnl_put_cacheinfo(skb, &rt->dst, 0, expires,
          rt->dst.error) < 0)
  goto errout;

 if (dn_is_input_route(rt) &&
     nla_put_u32(skb, RTA_IIF, rt->fld.flowidn_iif) < 0)
  goto errout;

 nlmsg_end(skb, nlh);
 return 0;

errout:
 nlmsg_cancel(skb, nlh);
 return -EMSGSIZE;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {struct net_device* dev; int protocol; int sk; } ;
struct rtmsg {int rtm_flags; } ;
struct rtattr {int dummy; } ;
struct nlmsghdr {int nlmsg_seq; } ;
struct net_device {int dn_ptr; } ;
struct net {int dummy; } ;
struct flowi {int fld_src; int fld_dst; int iif; int src; int dst; int oif; int proto; } ;
struct dst_entry {int dummy; } ;
struct dn_skb_cb {int fld_src; int fld_dst; int iif; int src; int dst; int oif; int proto; } ;
struct TYPE_5__ {int error; } ;
struct TYPE_4__ {TYPE_2__ dst; } ;
struct dn_route {int rt_flags; TYPE_1__ u; } ;
typedef int fl ;
struct TYPE_6__ {int pid; } ;


 int DNPROTO_NSP ;
 struct flowi* DN_SKB_CB (struct sk_buff*) ;
 int EINVAL ;
 int EMSGSIZE ;
 int ENOBUFS ;
 int ENODEV ;
 int ETH_P_DNA_RT ;
 int GFP_KERNEL ;
 TYPE_3__ NETLINK_CB (struct sk_buff*) ;
 struct rtmsg* NLMSG_DATA (struct nlmsghdr*) ;
 int NLMSG_GOODSIZE ;
 int RTA_DATA (struct rtattr*) ;
 int RTA_DST ;
 int RTA_IIF ;
 int RTA_OIF ;
 int RTA_SRC ;
 int RTCF_NOTIFY ;
 int RTM_F_NOTIFY ;
 int RTM_NEWROUTE ;
 struct sk_buff* alloc_skb (int ,int ) ;
 struct net_device* dev_get_by_index (struct net*,int) ;
 int dev_put (struct net_device*) ;
 int dn_route_input (struct sk_buff*) ;
 int dn_route_output_key (struct dst_entry**,struct flowi*,int ) ;
 int dn_rt_fill_info (struct sk_buff*,int ,int ,int ,int ,int ) ;
 int htons (int ) ;
 struct net init_net ;
 int kfree_skb (struct sk_buff*) ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int memcpy (int*,int ,int) ;
 int memset (struct flowi*,int ,int) ;
 int rtnl_unicast (struct sk_buff*,struct net*,int ) ;
 scalar_t__ skb_dst (struct sk_buff*) ;
 int skb_dst_set (struct sk_buff*,TYPE_2__*) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 struct net* sock_net (int ) ;

__attribute__((used)) static int dn_cache_getroute(struct sk_buff *in_skb, struct nlmsghdr *nlh, void *arg)
{
 struct net *net = sock_net(in_skb->sk);
 struct rtattr **rta = arg;
 struct rtmsg *rtm = NLMSG_DATA(nlh);
 struct dn_route *rt = ((void*)0);
 struct dn_skb_cb *cb;
 int err;
 struct sk_buff *skb;
 struct flowi fl;

 if (net != &init_net)
  return -EINVAL;

 memset(&fl, 0, sizeof(fl));
 fl.proto = DNPROTO_NSP;

 skb = alloc_skb(NLMSG_GOODSIZE, GFP_KERNEL);
 if (skb == ((void*)0))
  return -ENOBUFS;
 skb_reset_mac_header(skb);
 cb = DN_SKB_CB(skb);

 if (rta[RTA_SRC-1])
  memcpy(&fl.fld_src, RTA_DATA(rta[RTA_SRC-1]), 2);
 if (rta[RTA_DST-1])
  memcpy(&fl.fld_dst, RTA_DATA(rta[RTA_DST-1]), 2);
 if (rta[RTA_IIF-1])
  memcpy(&fl.iif, RTA_DATA(rta[RTA_IIF-1]), sizeof(int));

 if (fl.iif) {
  struct net_device *dev;
  if ((dev = dev_get_by_index(&init_net, fl.iif)) == ((void*)0)) {
   kfree_skb(skb);
   return -ENODEV;
  }
  if (!dev->dn_ptr) {
   dev_put(dev);
   kfree_skb(skb);
   return -ENODEV;
  }
  skb->protocol = htons(ETH_P_DNA_RT);
  skb->dev = dev;
  cb->src = fl.fld_src;
  cb->dst = fl.fld_dst;
  local_bh_disable();
  err = dn_route_input(skb);
  local_bh_enable();
  memset(cb, 0, sizeof(struct dn_skb_cb));
  rt = (struct dn_route *)skb_dst(skb);
  if (!err && -rt->u.dst.error)
   err = rt->u.dst.error;
 } else {
  int oif = 0;
  if (rta[RTA_OIF - 1])
   memcpy(&oif, RTA_DATA(rta[RTA_OIF - 1]), sizeof(int));
  fl.oif = oif;
  err = dn_route_output_key((struct dst_entry **)&rt, &fl, 0);
 }

 if (skb->dev)
  dev_put(skb->dev);
 skb->dev = ((void*)0);
 if (err)
  goto out_free;
 skb_dst_set(skb, &rt->u.dst);
 if (rtm->rtm_flags & RTM_F_NOTIFY)
  rt->rt_flags |= RTCF_NOTIFY;

 err = dn_rt_fill_info(skb, NETLINK_CB(in_skb).pid, nlh->nlmsg_seq, RTM_NEWROUTE, 0, 0);

 if (err == 0)
  goto out_free;
 if (err < 0) {
  err = -EMSGSIZE;
  goto out_free;
 }

 return rtnl_unicast(skb, &init_net, NETLINK_CB(in_skb).pid);

out_free:
 kfree_skb(skb);
 return err;
}

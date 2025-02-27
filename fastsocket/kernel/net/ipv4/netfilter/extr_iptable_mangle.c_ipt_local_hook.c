
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int8_t ;
typedef scalar_t__ u_int32_t ;
struct sk_buff {int len; scalar_t__ mark; } ;
struct net_device {int dummy; } ;
struct iphdr {scalar_t__ saddr; scalar_t__ daddr; scalar_t__ tos; } ;
typedef scalar_t__ __be32 ;
struct TYPE_3__ {int iptable_mangle; } ;
struct TYPE_4__ {TYPE_1__ ipv4; } ;


 unsigned int NF_ACCEPT ;
 unsigned int NF_DROP ;
 unsigned int NF_QUEUE ;
 unsigned int NF_STOLEN ;
 int RTN_UNSPEC ;
 TYPE_2__* dev_net (struct net_device const*) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int ip_hdrlen (struct sk_buff*) ;
 scalar_t__ ip_route_me_harder (struct sk_buff*,int ) ;
 unsigned int ipt_do_table (struct sk_buff*,unsigned int,struct net_device const*,struct net_device const*,int ) ;

__attribute__((used)) static unsigned int
ipt_local_hook(unsigned int hook,
     struct sk_buff *skb,
     const struct net_device *in,
     const struct net_device *out,
     int (*okfn)(struct sk_buff *))
{
 unsigned int ret;
 const struct iphdr *iph;
 u_int8_t tos;
 __be32 saddr, daddr;
 u_int32_t mark;


 if (skb->len < sizeof(struct iphdr)
     || ip_hdrlen(skb) < sizeof(struct iphdr))
  return NF_ACCEPT;


 mark = skb->mark;
 iph = ip_hdr(skb);
 saddr = iph->saddr;
 daddr = iph->daddr;
 tos = iph->tos;

 ret = ipt_do_table(skb, hook, in, out,
      dev_net(out)->ipv4.iptable_mangle);

 if (ret != NF_DROP && ret != NF_STOLEN && ret != NF_QUEUE) {
  iph = ip_hdr(skb);

  if (iph->saddr != saddr ||
      iph->daddr != daddr ||
      skb->mark != mark ||
      iph->tos != tos)
   if (ip_route_me_harder(skb, RTN_UNSPEC))
    ret = NF_DROP;
 }

 return ret;
}

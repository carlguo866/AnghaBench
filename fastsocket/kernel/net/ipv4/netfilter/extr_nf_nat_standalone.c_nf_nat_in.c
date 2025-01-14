
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
typedef scalar_t__ __be32 ;
struct TYPE_2__ {scalar_t__ daddr; } ;


 unsigned int NF_DROP ;
 unsigned int NF_STOLEN ;
 TYPE_1__* ip_hdr (struct sk_buff*) ;
 unsigned int nf_nat_fn (unsigned int,struct sk_buff*,struct net_device const*,struct net_device const*,int (*) (struct sk_buff*)) ;
 int skb_dst_drop (struct sk_buff*) ;

__attribute__((used)) static unsigned int
nf_nat_in(unsigned int hooknum,
   struct sk_buff *skb,
   const struct net_device *in,
   const struct net_device *out,
   int (*okfn)(struct sk_buff *))
{
 unsigned int ret;
 __be32 daddr = ip_hdr(skb)->daddr;

 ret = nf_nat_fn(hooknum, skb, in, out, okfn);
 if (ret != NF_DROP && ret != NF_STOLEN &&
     daddr != ip_hdr(skb)->daddr)
  skb_dst_drop(skb);

 return ret;
}

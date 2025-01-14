
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {struct net_device* dev; } ;
struct packet_type {int dummy; } ;
struct net_device {scalar_t__ type; } ;
struct elapaarp {scalar_t__ hw_len; scalar_t__ pa_len; int pa_src_node; scalar_t__ pa_src_net; scalar_t__ pa_dst_node; scalar_t__ pa_dst_net; int hw_src; scalar_t__ pa_dst_zero; scalar_t__ pa_src_zero; int function; } ;
struct atalk_addr {int s_node; scalar_t__ s_net; } ;
struct atalk_iface {int status; struct atalk_addr address; } ;
struct aarp_entry {int status; int expires_at; int hwaddr; struct net_device* dev; } ;
typedef int __u16 ;


 int AARP_HASH_SIZE ;
 scalar_t__ AARP_PA_ALEN ;



 scalar_t__ ARPHRD_ETHER ;
 int ATIF_PROBE ;
 int ATIF_PROBE_FAIL ;
 scalar_t__ ETH_ALEN ;
 struct aarp_entry* __aarp_find_entry (int ,struct net_device*,struct atalk_addr*) ;
 struct atalk_addr* __aarp_proxy_find (struct net_device*,struct atalk_addr*) ;
 int __aarp_resolved (int *,struct aarp_entry*,int) ;
 struct elapaarp* aarp_hdr (struct sk_buff*) ;
 int aarp_lock ;
 int aarp_send_reply (struct net_device*,struct atalk_addr*,struct atalk_addr*,int ) ;
 int aarp_timer ;
 struct atalk_iface* atalk_find_dev (struct net_device*) ;
 int dev_net (struct net_device*) ;
 int init_net ;
 scalar_t__ jiffies ;
 int kfree_skb (struct sk_buff*) ;
 int memcpy (int ,int ,scalar_t__) ;
 int mod_timer (int *,scalar_t__) ;
 int net_eq (int ,int *) ;
 int ntohs (int ) ;
 int * proxies ;
 int * resolved ;
 int skb_pull (struct sk_buff*,int) ;
 scalar_t__ sysctl_aarp_expiry_time ;
 scalar_t__ sysctl_aarp_tick_time ;
 int * unresolved ;
 int unresolved_count ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static int aarp_rcv(struct sk_buff *skb, struct net_device *dev,
      struct packet_type *pt, struct net_device *orig_dev)
{
 struct elapaarp *ea = aarp_hdr(skb);
 int hash, ret = 0;
 __u16 function;
 struct aarp_entry *a;
 struct atalk_addr sa, *ma, da;
 struct atalk_iface *ifa;

 if (!net_eq(dev_net(dev), &init_net))
  goto out0;


 if (dev->type != ARPHRD_ETHER)
  goto out0;


 if (!skb_pull(skb, sizeof(*ea)))
  goto out0;

 function = ntohs(ea->function);


 if (function < 128 || function > 130 ||
     ea->hw_len != ETH_ALEN || ea->pa_len != AARP_PA_ALEN ||
     ea->pa_src_zero || ea->pa_dst_zero)
  goto out0;


 hash = ea->pa_src_node % (AARP_HASH_SIZE - 1);


 sa.s_node = ea->pa_src_node;
 sa.s_net = ea->pa_src_net;


 ifa = atalk_find_dev(dev);
 if (!ifa)
  goto out1;

 if (ifa->status & ATIF_PROBE &&
     ifa->address.s_node == ea->pa_dst_node &&
     ifa->address.s_net == ea->pa_dst_net) {
  ifa->status |= ATIF_PROBE_FAIL;
  goto out1;
 }


 da.s_node = ea->pa_dst_node;
 da.s_net = ea->pa_dst_net;

 write_lock_bh(&aarp_lock);
 a = __aarp_find_entry(proxies[hash], dev, &da);

 if (a && a->status & ATIF_PROBE) {
  a->status |= ATIF_PROBE_FAIL;




  goto unlock;
 }

 switch (function) {
  case 129:
   if (!unresolved_count)
    break;


   a = __aarp_find_entry(unresolved[hash], dev, &sa);
   if (!a || dev != a->dev)
    break;


   memcpy(a->hwaddr, ea->hw_src, ETH_ALEN);
   __aarp_resolved(&unresolved[hash], a, hash);
   if (!unresolved_count)
    mod_timer(&aarp_timer,
       jiffies + sysctl_aarp_expiry_time);
   break;

  case 128:
  case 130:
   sa.s_node = ea->pa_dst_node;
   sa.s_net = ea->pa_dst_net;


   ma = __aarp_proxy_find(dev, &sa);
   if (!ma)
    ma = &ifa->address;
   else {
    da.s_node = sa.s_node;
    da.s_net = da.s_net;
    ma = &da;
   }

   if (function == 130) {





    a = __aarp_find_entry(resolved[sa.s_node %
         (AARP_HASH_SIZE - 1)],
            skb->dev, &sa);







    if (a) {
     a->expires_at = jiffies - 1;
     mod_timer(&aarp_timer, jiffies +
       sysctl_aarp_tick_time);
    }
   }

   if (sa.s_node != ma->s_node)
    break;

   if (sa.s_net && ma->s_net && sa.s_net != ma->s_net)
    break;

   sa.s_node = ea->pa_src_node;
   sa.s_net = ea->pa_src_net;



   aarp_send_reply(dev, ma, &sa, ea->hw_src);
   break;
 }

unlock:
 write_unlock_bh(&aarp_lock);
out1:
 ret = 1;
out0:
 kfree_skb(skb);
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct dn_skb_cb {int rt_flags; int nsp_flags; } ;


 int DN_RT_F_RTS ;
 struct dn_skb_cb* DN_SKB_CB (struct sk_buff*) ;
 int NET_RX_DROP ;
 int NET_RX_SUCCESS ;
 int NSP_DISCCONF ;
 int NSP_DISCINIT ;
 unsigned short NSP_REASON_OK ;
 int dn_nsp_return_disc (struct sk_buff*,int ,unsigned short) ;
 int kfree_skb (struct sk_buff*) ;

__attribute__((used)) static int dn_nsp_no_socket(struct sk_buff *skb, unsigned short reason)
{
 struct dn_skb_cb *cb = DN_SKB_CB(skb);
 int ret = NET_RX_DROP;


 if (cb->rt_flags & DN_RT_F_RTS)
  goto out;

 if ((reason != NSP_REASON_OK) && ((cb->nsp_flags & 0x0c) == 0x08)) {
  switch(cb->nsp_flags & 0x70) {
   case 0x10:
   case 0x60:
    dn_nsp_return_disc(skb, NSP_DISCINIT, reason);
    ret = NET_RX_SUCCESS;
    break;
   case 0x20:
    dn_nsp_return_disc(skb, NSP_DISCCONF, reason);
    ret = NET_RX_SUCCESS;
    break;
  }
 }

out:
 kfree_skb(skb);
 return ret;
}

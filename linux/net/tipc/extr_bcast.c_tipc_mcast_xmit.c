
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct tipc_nlist {scalar_t__ local; scalar_t__ remote; } ;
struct tipc_msg {int dummy; } ;
struct tipc_mc_method {int rcast; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;


 int ENOMEM ;
 scalar_t__ MSG_FRAGMENTER ;
 int __skb_queue_head_init (struct sk_buff_head*) ;
 int __skb_queue_purge (struct sk_buff_head*) ;
 struct tipc_msg* buf_msg (struct sk_buff*) ;
 struct tipc_msg* msg_inner_hdr (struct tipc_msg*) ;
 int msg_set_is_rcast (struct tipc_msg*,int) ;
 scalar_t__ msg_user (struct tipc_msg*) ;
 struct sk_buff* skb_peek (struct sk_buff_head*) ;
 int skb_queue_head_init (struct sk_buff_head*) ;
 int tipc_bcast_select_xmit_method (struct net*,scalar_t__,struct tipc_mc_method*) ;
 int tipc_bcast_xmit (struct net*,struct sk_buff_head*,int *) ;
 int tipc_loopback_trace (struct net*,struct sk_buff_head*) ;
 int tipc_mcast_send_sync (struct net*,struct sk_buff*,struct tipc_mc_method*,struct tipc_nlist*,int *) ;
 int tipc_msg_reassemble (struct sk_buff_head*,struct sk_buff_head*) ;
 int tipc_rcast_xmit (struct net*,struct sk_buff_head*,struct tipc_nlist*,int *) ;
 int tipc_sk_mcast_rcv (struct net*,struct sk_buff_head*,struct sk_buff_head*) ;

int tipc_mcast_xmit(struct net *net, struct sk_buff_head *pkts,
      struct tipc_mc_method *method, struct tipc_nlist *dests,
      u16 *cong_link_cnt)
{
 struct sk_buff_head inputq, localq;
 bool rcast = method->rcast;
 struct tipc_msg *hdr;
 struct sk_buff *skb;
 int rc = 0;

 skb_queue_head_init(&inputq);
 __skb_queue_head_init(&localq);


 if (dests->local && !tipc_msg_reassemble(pkts, &localq)) {
  rc = -ENOMEM;
  goto exit;
 }

 if (dests->remote) {
  tipc_bcast_select_xmit_method(net, dests->remote, method);

  skb = skb_peek(pkts);
  hdr = buf_msg(skb);
  if (msg_user(hdr) == MSG_FRAGMENTER)
   hdr = msg_inner_hdr(hdr);
  msg_set_is_rcast(hdr, method->rcast);


  if (rcast != method->rcast)
   tipc_mcast_send_sync(net, skb, method,
          dests, cong_link_cnt);

  if (method->rcast)
   rc = tipc_rcast_xmit(net, pkts, dests, cong_link_cnt);
  else
   rc = tipc_bcast_xmit(net, pkts, cong_link_cnt);
 }

 if (dests->local) {
  tipc_loopback_trace(net, &localq);
  tipc_sk_mcast_rcv(net, &localq, &inputq);
 }
exit:

 __skb_queue_purge(pkts);
 return rc;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct sk_buff_head {int dummy; } ;
struct TYPE_3__ {struct sk_buff_head inputq1; struct sk_buff_head namedq; int link; } ;
struct tipc_node {scalar_t__ state; TYPE_1__ bc_entry; struct tipc_link_entry* links; } ;
struct tipc_msg {int dummy; } ;
struct tipc_link_entry {int maddr; struct sk_buff_head inputq; scalar_t__ link; int lock; } ;
struct tipc_bearer {int identity; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_4__ {int validated; } ;


 int LINK_CONFIG ;
 int LINK_PROTOCOL ;
 scalar_t__ SELF_UP_PEER_UP ;
 int TIPC_LINK_DOWN_EVT ;
 int TIPC_LINK_UP_EVT ;
 TYPE_2__* TIPC_SKB_CB (struct sk_buff*) ;
 int TUNNEL_PROTOCOL ;
 int __skb_queue_head_init (struct sk_buff_head*) ;
 struct tipc_msg* buf_msg (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 scalar_t__ likely (int) ;
 scalar_t__ msg_bcast_ack (struct tipc_msg*) ;
 scalar_t__ msg_destnode (struct tipc_msg*) ;
 int msg_non_seq (struct tipc_msg*) ;
 int msg_prevnode (struct tipc_msg*) ;
 int msg_short (struct tipc_msg*) ;
 int msg_user (struct tipc_msg*) ;
 int skb_linearize (struct sk_buff*) ;
 int skb_queue_empty (struct sk_buff_head*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tipc_bcast_ack_rcv (struct net*,int ,struct tipc_msg*) ;
 int tipc_bearer_xmit (struct net*,int,struct sk_buff_head*,int *) ;
 void tipc_disc_rcv (struct net*,struct sk_buff*,struct tipc_bearer*) ;
 scalar_t__ tipc_link_acked (int ) ;
 int tipc_link_rcv (scalar_t__,struct sk_buff*,struct sk_buff_head*) ;
 int tipc_msg_validate (struct sk_buff**) ;
 int tipc_named_rcv (struct net*,struct sk_buff_head*) ;
 void tipc_node_bc_rcv (struct net*,struct sk_buff*,int) ;
 int tipc_node_bc_sync_rcv (struct tipc_node*,struct tipc_msg*,int,struct sk_buff_head*) ;
 scalar_t__ tipc_node_check_state (struct tipc_node*,struct sk_buff*,int,struct sk_buff_head*) ;
 struct tipc_node* tipc_node_find (struct net*,int ) ;
 int tipc_node_link_down (struct tipc_node*,int,int) ;
 int tipc_node_link_up (struct tipc_node*,int,struct sk_buff_head*) ;
 int tipc_node_mcast_rcv (struct tipc_node*) ;
 int tipc_node_put (struct tipc_node*) ;
 int tipc_node_read_lock (struct tipc_node*) ;
 int tipc_node_read_unlock (struct tipc_node*) ;
 int tipc_node_write_lock (struct tipc_node*) ;
 int tipc_node_write_unlock (struct tipc_node*) ;
 scalar_t__ tipc_own_addr (struct net*) ;
 int tipc_sk_rcv (struct net*,struct sk_buff_head*) ;
 scalar_t__ unlikely (int) ;

void tipc_rcv(struct net *net, struct sk_buff *skb, struct tipc_bearer *b)
{
 struct sk_buff_head xmitq;
 struct tipc_node *n;
 struct tipc_msg *hdr;
 int bearer_id = b->identity;
 struct tipc_link_entry *le;
 u32 self = tipc_own_addr(net);
 int usr, rc = 0;
 u16 bc_ack;

 __skb_queue_head_init(&xmitq);


 TIPC_SKB_CB(skb)->validated = 0;
 if (unlikely(!tipc_msg_validate(&skb)))
  goto discard;
 hdr = buf_msg(skb);
 usr = msg_user(hdr);
 bc_ack = msg_bcast_ack(hdr);


 if (unlikely(msg_non_seq(hdr))) {
  if (unlikely(usr == LINK_CONFIG))
   return tipc_disc_rcv(net, skb, b);
  else
   return tipc_node_bc_rcv(net, skb, bearer_id);
 }


 if (unlikely(!msg_short(hdr) && (msg_destnode(hdr) != self)))
  goto discard;


 n = tipc_node_find(net, msg_prevnode(hdr));
 if (unlikely(!n))
  goto discard;
 le = &n->links[bearer_id];


 if (unlikely(usr == LINK_PROTOCOL))
  tipc_node_bc_sync_rcv(n, hdr, bearer_id, &xmitq);
 else if (unlikely(tipc_link_acked(n->bc_entry.link) != bc_ack))
  tipc_bcast_ack_rcv(net, n->bc_entry.link, hdr);


 tipc_node_read_lock(n);
 if (likely((n->state == SELF_UP_PEER_UP) && (usr != TUNNEL_PROTOCOL))) {
  spin_lock_bh(&le->lock);
  if (le->link) {
   rc = tipc_link_rcv(le->link, skb, &xmitq);
   skb = ((void*)0);
  }
  spin_unlock_bh(&le->lock);
 }
 tipc_node_read_unlock(n);


 if (unlikely(skb)) {
  if (unlikely(skb_linearize(skb)))
   goto discard;
  tipc_node_write_lock(n);
  if (tipc_node_check_state(n, skb, bearer_id, &xmitq)) {
   if (le->link) {
    rc = tipc_link_rcv(le->link, skb, &xmitq);
    skb = ((void*)0);
   }
  }
  tipc_node_write_unlock(n);
 }

 if (unlikely(rc & TIPC_LINK_UP_EVT))
  tipc_node_link_up(n, bearer_id, &xmitq);

 if (unlikely(rc & TIPC_LINK_DOWN_EVT))
  tipc_node_link_down(n, bearer_id, 0);

 if (unlikely(!skb_queue_empty(&n->bc_entry.namedq)))
  tipc_named_rcv(net, &n->bc_entry.namedq);

 if (unlikely(!skb_queue_empty(&n->bc_entry.inputq1)))
  tipc_node_mcast_rcv(n);

 if (!skb_queue_empty(&le->inputq))
  tipc_sk_rcv(net, &le->inputq);

 if (!skb_queue_empty(&xmitq))
  tipc_bearer_xmit(net, bearer_id, &xmitq, &le->maddr);

 tipc_node_put(n);
discard:
 kfree_skb(skb);
}

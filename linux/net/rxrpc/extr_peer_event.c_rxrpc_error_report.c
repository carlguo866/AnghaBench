
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_rxrpc {int dummy; } ;
struct TYPE_2__ {scalar_t__ ee_origin; scalar_t__ ee_type; scalar_t__ ee_code; } ;
struct sock_exterr_skb {TYPE_1__ ee; } ;
struct sock {int dummy; } ;
struct sk_buff {int len; } ;
struct rxrpc_peer {int dummy; } ;
struct rxrpc_local {int debug_id; } ;


 scalar_t__ ICMP_DEST_UNREACH ;
 scalar_t__ ICMP_FRAG_NEEDED ;
 struct sock_exterr_skb* SKB_EXT_ERR (struct sk_buff*) ;
 scalar_t__ SO_EE_ORIGIN_ICMP ;
 scalar_t__ SO_EE_ORIGIN_TIMESTAMPING ;
 int _enter (char*,struct sock*,int ) ;
 int _leave (char*) ;
 struct rxrpc_local* rcu_dereference_sk_user_data (struct sock*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int rxrpc_adjust_mtu (struct rxrpc_peer*,struct sock_exterr_skb*) ;
 int rxrpc_free_skb (struct sk_buff*,int ) ;
 int rxrpc_get_peer_maybe (struct rxrpc_peer*) ;
 struct rxrpc_peer* rxrpc_lookup_peer_icmp_rcu (struct rxrpc_local*,struct sk_buff*,struct sockaddr_rxrpc*) ;
 int rxrpc_new_skb (struct sk_buff*,int ) ;
 int rxrpc_put_peer (struct rxrpc_peer*) ;
 int rxrpc_skb_freed ;
 int rxrpc_skb_received ;
 int rxrpc_store_error (struct rxrpc_peer*,struct sock_exterr_skb*) ;
 struct sk_buff* sock_dequeue_err_skb (struct sock*) ;
 int sock_error (struct sock*) ;
 int trace_rxrpc_rx_icmp (struct rxrpc_peer*,TYPE_1__*,struct sockaddr_rxrpc*) ;
 scalar_t__ unlikely (int) ;

void rxrpc_error_report(struct sock *sk)
{
 struct sock_exterr_skb *serr;
 struct sockaddr_rxrpc srx;
 struct rxrpc_local *local;
 struct rxrpc_peer *peer;
 struct sk_buff *skb;

 rcu_read_lock();
 local = rcu_dereference_sk_user_data(sk);
 if (unlikely(!local)) {
  rcu_read_unlock();
  return;
 }
 _enter("%p{%d}", sk, local->debug_id);




 sock_error(sk);

 skb = sock_dequeue_err_skb(sk);
 if (!skb) {
  rcu_read_unlock();
  _leave("UDP socket errqueue empty");
  return;
 }
 rxrpc_new_skb(skb, rxrpc_skb_received);
 serr = SKB_EXT_ERR(skb);
 if (!skb->len && serr->ee.ee_origin == SO_EE_ORIGIN_TIMESTAMPING) {
  _leave("UDP empty message");
  rcu_read_unlock();
  rxrpc_free_skb(skb, rxrpc_skb_freed);
  return;
 }

 peer = rxrpc_lookup_peer_icmp_rcu(local, skb, &srx);
 if (peer && !rxrpc_get_peer_maybe(peer))
  peer = ((void*)0);
 if (!peer) {
  rcu_read_unlock();
  rxrpc_free_skb(skb, rxrpc_skb_freed);
  _leave(" [no peer]");
  return;
 }

 trace_rxrpc_rx_icmp(peer, &serr->ee, &srx);

 if ((serr->ee.ee_origin == SO_EE_ORIGIN_ICMP &&
      serr->ee.ee_type == ICMP_DEST_UNREACH &&
      serr->ee.ee_code == ICMP_FRAG_NEEDED)) {
  rxrpc_adjust_mtu(peer, serr);
  rcu_read_unlock();
  rxrpc_free_skb(skb, rxrpc_skb_freed);
  rxrpc_put_peer(peer);
  _leave(" [MTU update]");
  return;
 }

 rxrpc_store_error(peer, serr);
 rcu_read_unlock();
 rxrpc_free_skb(skb, rxrpc_skb_freed);
 rxrpc_put_peer(peer);

 _leave("");
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_state; } ;
struct sk_buff {scalar_t__* data; } ;
struct pppox_sock {int chan; } ;
struct pppol2tp_session {int sk; } ;
struct TYPE_2__ {int rx_errors; } ;
struct l2tp_session {int name; TYPE_1__ stats; } ;


 int L2TP_MSG_DATA ;
 int PPPOX_BOUND ;
 scalar_t__ PPP_ALLSTATIONS ;
 scalar_t__ PPP_UI ;
 int atomic_long_inc (int *) ;
 int kfree_skb (struct sk_buff*) ;
 int l2tp_dbg (struct l2tp_session*,int ,char*,int ,int) ;
 int l2tp_info (struct l2tp_session*,int ,char*,int ) ;
 struct pppol2tp_session* l2tp_session_priv (struct l2tp_session*) ;
 int ppp_input (int *,struct sk_buff*) ;
 struct pppox_sock* pppox_sk (struct sock*) ;
 scalar_t__ pskb_may_pull (struct sk_buff*,int) ;
 struct sock* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int skb_pull (struct sk_buff*,int) ;
 scalar_t__ sock_queue_rcv_skb (struct sock*,struct sk_buff*) ;

__attribute__((used)) static void pppol2tp_recv(struct l2tp_session *session, struct sk_buff *skb, int data_len)
{
 struct pppol2tp_session *ps = l2tp_session_priv(session);
 struct sock *sk = ((void*)0);




 rcu_read_lock();
 sk = rcu_dereference(ps->sk);
 if (sk == ((void*)0))
  goto no_sock;
 if (pskb_may_pull(skb, 2) && skb->data[0] == PPP_ALLSTATIONS &&
     skb->data[1] == PPP_UI)
  skb_pull(skb, 2);

 if (sk->sk_state & PPPOX_BOUND) {
  struct pppox_sock *po;

  l2tp_dbg(session, L2TP_MSG_DATA,
    "%s: recv %d byte data frame, passing to ppp\n",
    session->name, data_len);

  po = pppox_sk(sk);
  ppp_input(&po->chan, skb);
 } else {
  l2tp_dbg(session, L2TP_MSG_DATA,
    "%s: recv %d byte data frame, passing to L2TP socket\n",
    session->name, data_len);

  if (sock_queue_rcv_skb(sk, skb) < 0) {
   atomic_long_inc(&session->stats.rx_errors);
   kfree_skb(skb);
  }
 }
 rcu_read_unlock();

 return;

no_sock:
 rcu_read_unlock();
 l2tp_info(session, L2TP_MSG_DATA, "%s: no socket\n", session->name);
 kfree_skb(skb);
}

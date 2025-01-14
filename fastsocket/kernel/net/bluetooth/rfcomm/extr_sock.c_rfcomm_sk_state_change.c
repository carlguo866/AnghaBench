
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_err; scalar_t__ sk_state; int (* sk_state_change ) (struct sock*) ;int (* sk_data_ready ) (struct sock*,int ) ;} ;
struct rfcomm_dlc {scalar_t__ state; int session; struct sock* owner; } ;
struct TYPE_2__ {int src; struct sock* parent; } ;


 scalar_t__ BT_CLOSED ;
 scalar_t__ BT_CONNECTED ;
 int BT_DBG (char*,struct rfcomm_dlc*,scalar_t__,int) ;
 int SOCK_ZAPPED ;
 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 int bt_accept_unlink (struct sock*) ;
 TYPE_1__* bt_sk (struct sock*) ;
 int rfcomm_dlc_lock (struct rfcomm_dlc*) ;
 int rfcomm_dlc_unlock (struct rfcomm_dlc*) ;
 int rfcomm_session_getaddr (int ,int *,int *) ;
 int rfcomm_sock_kill (struct sock*) ;
 scalar_t__ sock_flag (struct sock*,int ) ;
 int sock_set_flag (struct sock*,int ) ;
 int stub1 (struct sock*,int ) ;
 int stub2 (struct sock*) ;

__attribute__((used)) static void rfcomm_sk_state_change(struct rfcomm_dlc *d, int err)
{
 struct sock *sk = d->owner, *parent;
 if (!sk)
  return;

 BT_DBG("dlc %p state %ld err %d", d, d->state, err);

 bh_lock_sock(sk);

 if (err)
  sk->sk_err = err;

 sk->sk_state = d->state;

 parent = bt_sk(sk)->parent;
 if (parent) {
  if (d->state == BT_CLOSED) {
   sock_set_flag(sk, SOCK_ZAPPED);
   bt_accept_unlink(sk);
  }
  parent->sk_data_ready(parent, 0);
 } else {
  if (d->state == BT_CONNECTED)
   rfcomm_session_getaddr(d->session, &bt_sk(sk)->src, ((void*)0));
  sk->sk_state_change(sk);
 }

 bh_unlock_sock(sk);

 if (parent && sock_flag(sk, SOCK_ZAPPED)) {


  rfcomm_dlc_unlock(d);
  rfcomm_sock_kill(sk);
  rfcomm_dlc_lock(d);
 }
}

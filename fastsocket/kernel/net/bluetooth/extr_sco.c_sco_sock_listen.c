
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {scalar_t__ type; struct sock* sk; } ;
struct sock {scalar_t__ sk_state; int sk_max_ack_backlog; scalar_t__ sk_ack_backlog; } ;


 scalar_t__ BT_BOUND ;
 int BT_DBG (char*,struct sock*,int) ;
 scalar_t__ BT_LISTEN ;
 int EBADFD ;
 scalar_t__ SOCK_SEQPACKET ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;

__attribute__((used)) static int sco_sock_listen(struct socket *sock, int backlog)
{
 struct sock *sk = sock->sk;
 int err = 0;

 BT_DBG("sk %p backlog %d", sk, backlog);

 lock_sock(sk);

 if (sk->sk_state != BT_BOUND || sock->type != SOCK_SEQPACKET) {
  err = -EBADFD;
  goto done;
 }

 sk->sk_max_ack_backlog = backlog;
 sk->sk_ack_backlog = 0;
 sk->sk_state = BT_LISTEN;

done:
 release_sock(sk);
 return err;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sock {int sk_userlocks; int sk_rcvbuf; int sk_rcvlowat; } ;
struct TYPE_4__ {int* sysctl_tcp_rmem; } ;
struct TYPE_6__ {TYPE_1__ ipv4; } ;
struct TYPE_5__ {int window_clamp; } ;


 int SOCK_RCVBUF_LOCK ;
 int WRITE_ONCE (int,int) ;
 int min (int,int) ;
 TYPE_3__* sock_net (struct sock*) ;
 int tcp_data_ready (struct sock*) ;
 TYPE_2__* tcp_sk (struct sock*) ;
 int tcp_win_from_space (struct sock*,int) ;

int tcp_set_rcvlowat(struct sock *sk, int val)
{
 int cap;

 if (sk->sk_userlocks & SOCK_RCVBUF_LOCK)
  cap = sk->sk_rcvbuf >> 1;
 else
  cap = sock_net(sk)->ipv4.sysctl_tcp_rmem[2] >> 1;
 val = min(val, cap);
 WRITE_ONCE(sk->sk_rcvlowat, val ? : 1);


 tcp_data_ready(sk);

 if (sk->sk_userlocks & SOCK_RCVBUF_LOCK)
  return 0;

 val <<= 1;
 if (val > sk->sk_rcvbuf) {
  WRITE_ONCE(sk->sk_rcvbuf, val);
  tcp_sk(sk)->window_clamp = tcp_win_from_space(sk, val);
 }
 return 0;
}

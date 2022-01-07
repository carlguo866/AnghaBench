
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tcp_sock {scalar_t__ window_clamp; unsigned int advmss; int rcv_ssthresh; } ;
struct sock {scalar_t__ sk_rcvbuf; int sk_userlocks; int sk_rmem_alloc; } ;
struct TYPE_4__ {scalar_t__* sysctl_tcp_rmem; } ;
struct net {TYPE_2__ ipv4; } ;
struct TYPE_3__ {scalar_t__ quick; } ;
struct inet_connection_sock {TYPE_1__ icsk_ack; } ;


 int SOCK_RCVBUF_LOCK ;
 int WRITE_ONCE (scalar_t__,int ) ;
 scalar_t__ atomic_read (int *) ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 int min (scalar_t__,unsigned int) ;
 scalar_t__ sk_memory_allocated (struct sock*) ;
 scalar_t__ sk_prot_mem_limits (struct sock*,int ) ;
 struct net* sock_net (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_under_memory_pressure (struct sock*) ;

__attribute__((used)) static void tcp_clamp_window(struct sock *sk)
{
 struct tcp_sock *tp = tcp_sk(sk);
 struct inet_connection_sock *icsk = inet_csk(sk);
 struct net *net = sock_net(sk);

 icsk->icsk_ack.quick = 0;

 if (sk->sk_rcvbuf < net->ipv4.sysctl_tcp_rmem[2] &&
     !(sk->sk_userlocks & SOCK_RCVBUF_LOCK) &&
     !tcp_under_memory_pressure(sk) &&
     sk_memory_allocated(sk) < sk_prot_mem_limits(sk, 0)) {
  WRITE_ONCE(sk->sk_rcvbuf,
      min(atomic_read(&sk->sk_rmem_alloc),
          net->ipv4.sysctl_tcp_rmem[2]));
 }
 if (atomic_read(&sk->sk_rmem_alloc) > sk->sk_rcvbuf)
  tp->rcv_ssthresh = min(tp->window_clamp, 2U * tp->advmss);
}

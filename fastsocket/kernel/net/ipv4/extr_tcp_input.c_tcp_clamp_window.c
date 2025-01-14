
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_sock {scalar_t__ window_clamp; unsigned int advmss; void* rcv_ssthresh; } ;
struct sock {scalar_t__ sk_rcvbuf; int sk_userlocks; int sk_rmem_alloc; } ;
struct TYPE_2__ {scalar_t__ quick; } ;
struct inet_connection_sock {TYPE_1__ icsk_ack; } ;


 int SOCK_RCVBUF_LOCK ;
 scalar_t__ atomic_read (int *) ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 void* min (scalar_t__,unsigned int) ;
 scalar_t__* sysctl_tcp_mem ;
 scalar_t__* sysctl_tcp_rmem ;
 int tcp_memory_allocated ;
 int tcp_memory_pressure ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static void tcp_clamp_window(struct sock *sk)
{
 struct tcp_sock *tp = tcp_sk(sk);
 struct inet_connection_sock *icsk = inet_csk(sk);

 icsk->icsk_ack.quick = 0;

 if (sk->sk_rcvbuf < sysctl_tcp_rmem[2] &&
     !(sk->sk_userlocks & SOCK_RCVBUF_LOCK) &&
     !tcp_memory_pressure &&
     atomic_read(&tcp_memory_allocated) < sysctl_tcp_mem[0]) {
  sk->sk_rcvbuf = min(atomic_read(&sk->sk_rmem_alloc),
        sysctl_tcp_rmem[2]);
 }
 if (atomic_read(&sk->sk_rmem_alloc) > sk->sk_rcvbuf)
  tp->rcv_ssthresh = min(tp->window_clamp, 2U * tp->advmss);
}

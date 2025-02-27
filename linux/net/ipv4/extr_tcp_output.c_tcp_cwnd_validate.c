
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tcp_sock {scalar_t__ packets_out; scalar_t__ max_packets_out; int is_cwnd_limited; scalar_t__ snd_cwnd_used; scalar_t__ snd_cwnd_stamp; int snd_nxt; int max_packets_seq; int snd_una; } ;
struct tcp_congestion_ops {int cong_control; } ;
struct sock {int sk_state; TYPE_2__* sk_socket; } ;
typedef scalar_t__ s32 ;
struct TYPE_8__ {scalar_t__ icsk_rto; struct tcp_congestion_ops* icsk_ca_ops; } ;
struct TYPE_5__ {scalar_t__ sysctl_tcp_slow_start_after_idle; } ;
struct TYPE_7__ {TYPE_1__ ipv4; } ;
struct TYPE_6__ {int flags; } ;


 int SOCK_NOSPACE ;
 int TCPF_CLOSE_WAIT ;
 int TCPF_ESTABLISHED ;
 int TCP_CHRONO_SNDBUF_LIMITED ;
 int before (int ,int ) ;
 TYPE_4__* inet_csk (struct sock*) ;
 TYPE_3__* sock_net (struct sock*) ;
 int tcp_chrono_start (struct sock*,int ) ;
 int tcp_cwnd_application_limited (struct sock*) ;
 scalar_t__ tcp_is_cwnd_limited (struct sock*) ;
 scalar_t__ tcp_jiffies32 ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 scalar_t__ tcp_write_queue_empty (struct sock*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void tcp_cwnd_validate(struct sock *sk, bool is_cwnd_limited)
{
 const struct tcp_congestion_ops *ca_ops = inet_csk(sk)->icsk_ca_ops;
 struct tcp_sock *tp = tcp_sk(sk);




 if (!before(tp->snd_una, tp->max_packets_seq) ||
     tp->packets_out > tp->max_packets_out) {
  tp->max_packets_out = tp->packets_out;
  tp->max_packets_seq = tp->snd_nxt;
  tp->is_cwnd_limited = is_cwnd_limited;
 }

 if (tcp_is_cwnd_limited(sk)) {

  tp->snd_cwnd_used = 0;
  tp->snd_cwnd_stamp = tcp_jiffies32;
 } else {

  if (tp->packets_out > tp->snd_cwnd_used)
   tp->snd_cwnd_used = tp->packets_out;

  if (sock_net(sk)->ipv4.sysctl_tcp_slow_start_after_idle &&
      (s32)(tcp_jiffies32 - tp->snd_cwnd_stamp) >= inet_csk(sk)->icsk_rto &&
      !ca_ops->cong_control)
   tcp_cwnd_application_limited(sk);
  if (tcp_write_queue_empty(sk) && sk->sk_socket &&
      test_bit(SOCK_NOSPACE, &sk->sk_socket->flags) &&
      (1 << sk->sk_state) & (TCPF_ESTABLISHED | TCPF_CLOSE_WAIT))
   tcp_chrono_start(sk, TCP_CHRONO_SNDBUF_LIMITED);
 }
}

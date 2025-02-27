
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* u32 ;
struct TYPE_6__ {int dsack; } ;
struct tcp_sock {TYPE_2__* duplicate_sack; TYPE_1__ rx_opt; int rcv_nxt; } ;
struct sock {int dummy; } ;
struct TYPE_8__ {scalar_t__ sysctl_tcp_dsack; } ;
struct TYPE_9__ {TYPE_3__ ipv4; } ;
struct TYPE_7__ {void* end_seq; void* start_seq; } ;


 int LINUX_MIB_TCPDSACKOFOSENT ;
 int LINUX_MIB_TCPDSACKOLDSENT ;
 int NET_INC_STATS (TYPE_4__*,int) ;
 scalar_t__ before (void*,int ) ;
 TYPE_4__* sock_net (struct sock*) ;
 scalar_t__ tcp_is_sack (struct tcp_sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static void tcp_dsack_set(struct sock *sk, u32 seq, u32 end_seq)
{
 struct tcp_sock *tp = tcp_sk(sk);

 if (tcp_is_sack(tp) && sock_net(sk)->ipv4.sysctl_tcp_dsack) {
  int mib_idx;

  if (before(seq, tp->rcv_nxt))
   mib_idx = LINUX_MIB_TCPDSACKOLDSENT;
  else
   mib_idx = LINUX_MIB_TCPDSACKOFOSENT;

  NET_INC_STATS(sock_net(sk), mib_idx);

  tp->rx_opt.dsack = 1;
  tp->duplicate_sack[0].start_seq = seq;
  tp->duplicate_sack[0].end_seq = end_seq;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rcv_wscale; scalar_t__ wscale_ok; } ;
struct tcp_sock {int snd_nxt; TYPE_1__ rx_opt; } ;
struct sock {int dummy; } ;
typedef int __u32 ;


 int before (int,int) ;
 struct tcp_sock* tcp_sk (struct sock const*) ;
 int tcp_wnd_end (struct tcp_sock const*) ;

__attribute__((used)) static inline __u32 tcp_acceptable_seq(const struct sock *sk)
{
 const struct tcp_sock *tp = tcp_sk(sk);

 if (!before(tcp_wnd_end(tp), tp->snd_nxt) ||
     (tp->rx_opt.wscale_ok &&
      ((tp->snd_nxt - tcp_wnd_end(tp)) < (1 << tp->rx_opt.rcv_wscale))))
  return tp->snd_nxt;
 else
  return tcp_wnd_end(tp);
}

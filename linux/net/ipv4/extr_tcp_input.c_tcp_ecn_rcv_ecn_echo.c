
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcphdr {int syn; scalar_t__ ece; } ;
struct tcp_sock {int ecn_flags; } ;


 int TCP_ECN_OK ;

__attribute__((used)) static bool tcp_ecn_rcv_ecn_echo(const struct tcp_sock *tp, const struct tcphdr *th)
{
 if (th->ece && !th->syn && (tp->ecn_flags & TCP_ECN_OK))
  return 1;
 return 0;
}

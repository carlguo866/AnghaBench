
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {scalar_t__ sk_family; int sk_bound_dev_if; } ;
struct net {int dummy; } ;
struct ipv6_pinfo {int rcv_saddr; } ;
struct in6_addr {int dummy; } ;
struct TYPE_2__ {unsigned short const num; } ;


 scalar_t__ PF_INET6 ;
 struct ipv6_pinfo* inet6_sk (struct sock*) ;
 TYPE_1__* inet_sk (struct sock*) ;
 int ipv6_addr_any (int *) ;
 int ipv6_addr_equal (int *,struct in6_addr const*) ;
 scalar_t__ net_eq (int ,struct net*) ;
 int sock_net (struct sock*) ;

__attribute__((used)) static int inline compute_score(struct sock *sk, struct net *net,
    const unsigned short hnum,
    const struct in6_addr *daddr,
    const int dif)
{
 int score = -1;

 if (net_eq(sock_net(sk), net) && inet_sk(sk)->num == hnum &&
     sk->sk_family == PF_INET6) {
  const struct ipv6_pinfo *np = inet6_sk(sk);

  score = 1;
  if (!ipv6_addr_any(&np->rcv_saddr)) {
   if (!ipv6_addr_equal(&np->rcv_saddr, daddr))
    return -1;
   score++;
  }
  if (sk->sk_bound_dev_if) {
   if (sk->sk_bound_dev_if != dif)
    return -1;
   score++;
  }
 }
 return score;
}

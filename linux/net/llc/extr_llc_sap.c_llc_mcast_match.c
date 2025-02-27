
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {scalar_t__ sk_type; } ;
struct sk_buff {scalar_t__ dev; } ;
struct TYPE_2__ {scalar_t__ lsap; } ;
struct llc_sock {scalar_t__ dev; TYPE_1__ laddr; } ;
struct llc_sap {int dummy; } ;
struct llc_addr {scalar_t__ lsap; } ;


 scalar_t__ SOCK_DGRAM ;
 struct llc_sock* llc_sk (struct sock const*) ;

__attribute__((used)) static inline bool llc_mcast_match(const struct llc_sap *sap,
       const struct llc_addr *laddr,
       const struct sk_buff *skb,
       const struct sock *sk)
{
     struct llc_sock *llc = llc_sk(sk);

     return sk->sk_type == SOCK_DGRAM &&
   llc->laddr.lsap == laddr->lsap &&
   llc->dev == skb->dev;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state; } ;
struct TYPE_4__ {TYPE_1__ u; } ;
struct pfkey_sock {TYPE_2__ dump; int sk; } ;
struct net {int dummy; } ;


 int dump_sa ;
 struct net* sock_net (int *) ;
 int xfrm_state_walk (struct net*,int *,int ,void*) ;

__attribute__((used)) static int pfkey_dump_sa(struct pfkey_sock *pfk)
{
 struct net *net = sock_net(&pfk->sk);
 return xfrm_state_walk(net, &pfk->dump.u.state, dump_sa, (void *) pfk);
}

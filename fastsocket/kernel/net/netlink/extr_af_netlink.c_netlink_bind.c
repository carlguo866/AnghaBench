
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct socket {struct sock* sk; } ;
struct sockaddr_nl {scalar_t__ nl_family; int nl_groups; scalar_t__ nl_pid; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;
struct netlink_sock {scalar_t__ pid; int* groups; scalar_t__ subscriptions; } ;
struct net {int dummy; } ;


 scalar_t__ AF_NETLINK ;
 int EINVAL ;
 int EPERM ;
 int NL_NONROOT_RECV ;
 scalar_t__ hweight32 (int) ;
 int netlink_autobind (struct socket*) ;
 int netlink_capable (struct socket*,int ) ;
 int netlink_insert (struct sock*,struct net*,scalar_t__) ;
 int netlink_realloc_groups (struct sock*) ;
 int netlink_table_grab () ;
 int netlink_table_ungrab () ;
 int netlink_update_listeners (struct sock*) ;
 int netlink_update_subscriptions (struct sock*,scalar_t__) ;
 struct netlink_sock* nlk_sk (struct sock*) ;
 struct net* sock_net (struct sock*) ;

__attribute__((used)) static int netlink_bind(struct socket *sock, struct sockaddr *addr,
   int addr_len)
{
 struct sock *sk = sock->sk;
 struct net *net = sock_net(sk);
 struct netlink_sock *nlk = nlk_sk(sk);
 struct sockaddr_nl *nladdr = (struct sockaddr_nl *)addr;
 int err;

 if (nladdr->nl_family != AF_NETLINK)
  return -EINVAL;


 if (nladdr->nl_groups) {
  if (!netlink_capable(sock, NL_NONROOT_RECV))
   return -EPERM;
  err = netlink_realloc_groups(sk);
  if (err)
   return err;
 }

 if (nlk->pid) {
  if (nladdr->nl_pid != nlk->pid)
   return -EINVAL;
 } else {
  err = nladdr->nl_pid ?
   netlink_insert(sk, net, nladdr->nl_pid) :
   netlink_autobind(sock);
  if (err)
   return err;
 }

 if (!nladdr->nl_groups && (nlk->groups == ((void*)0) || !(u32)nlk->groups[0]))
  return 0;

 netlink_table_grab();
 netlink_update_subscriptions(sk, nlk->subscriptions +
      hweight32(nladdr->nl_groups) -
      hweight32(nlk->groups[0]));
 nlk->groups[0] = (nlk->groups[0] & ~0xffffffffUL) | nladdr->nl_groups;
 netlink_update_listeners(sk);
 netlink_table_ungrab();

 return 0;
}

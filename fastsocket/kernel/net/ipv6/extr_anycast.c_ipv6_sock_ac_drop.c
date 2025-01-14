
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct ipv6_pinfo {struct ipv6_ac_socklist* ipv6_ac_list; } ;
struct ipv6_ac_socklist {int acl_ifindex; int acl_addr; struct ipv6_ac_socklist* acl_next; } ;
struct in6_addr {int dummy; } ;


 int ENOENT ;
 struct net_device* dev_get_by_index (struct net*,int) ;
 int dev_put (struct net_device*) ;
 struct ipv6_pinfo* inet6_sk (struct sock*) ;
 scalar_t__ ipv6_addr_equal (int *,struct in6_addr*) ;
 int ipv6_dev_ac_dec (struct net_device*,int *) ;
 int ipv6_sk_ac_lock ;
 int sock_kfree_s (struct sock*,struct ipv6_ac_socklist*,int) ;
 struct net* sock_net (struct sock*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

int ipv6_sock_ac_drop(struct sock *sk, int ifindex, struct in6_addr *addr)
{
 struct ipv6_pinfo *np = inet6_sk(sk);
 struct net_device *dev;
 struct ipv6_ac_socklist *pac, *prev_pac;
 struct net *net = sock_net(sk);

 write_lock_bh(&ipv6_sk_ac_lock);
 prev_pac = ((void*)0);
 for (pac = np->ipv6_ac_list; pac; pac = pac->acl_next) {
  if ((ifindex == 0 || pac->acl_ifindex == ifindex) &&
       ipv6_addr_equal(&pac->acl_addr, addr))
   break;
  prev_pac = pac;
 }
 if (!pac) {
  write_unlock_bh(&ipv6_sk_ac_lock);
  return -ENOENT;
 }
 if (prev_pac)
  prev_pac->acl_next = pac->acl_next;
 else
  np->ipv6_ac_list = pac->acl_next;

 write_unlock_bh(&ipv6_sk_ac_lock);

 dev = dev_get_by_index(net, pac->acl_ifindex);
 if (dev) {
  ipv6_dev_ac_dec(dev, &pac->acl_addr);
  dev_put(dev);
 }
 sock_kfree_s(sk, pac, sizeof(*pac));
 return 0;
}

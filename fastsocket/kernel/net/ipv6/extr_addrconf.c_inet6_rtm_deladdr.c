
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int sk; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct in6_addr {int dummy; } ;
struct ifaddrmsg {int ifa_prefixlen; int ifa_index; } ;


 int EINVAL ;
 size_t IFA_ADDRESS ;
 size_t IFA_LOCAL ;
 int IFA_MAX ;
 struct in6_addr* extract_addr (struct nlattr*,struct nlattr*) ;
 int ifa_ipv6_policy ;
 int inet6_addr_del (struct net*,int ,struct in6_addr*,int ) ;
 struct ifaddrmsg* nlmsg_data (struct nlmsghdr*) ;
 int nlmsg_parse (struct nlmsghdr*,int,struct nlattr**,int ,int ) ;
 struct net* sock_net (int ) ;

__attribute__((used)) static int
inet6_rtm_deladdr(struct sk_buff *skb, struct nlmsghdr *nlh, void *arg)
{
 struct net *net = sock_net(skb->sk);
 struct ifaddrmsg *ifm;
 struct nlattr *tb[IFA_MAX+1];
 struct in6_addr *pfx;
 int err;

 err = nlmsg_parse(nlh, sizeof(*ifm), tb, IFA_MAX, ifa_ipv6_policy);
 if (err < 0)
  return err;

 ifm = nlmsg_data(nlh);
 pfx = extract_addr(tb[IFA_ADDRESS], tb[IFA_LOCAL]);
 if (pfx == ((void*)0))
  return -EINVAL;

 return inet6_addr_del(net, ifm->ifa_index, pfx, ifm->ifa_prefixlen);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_7__ {int idgen_retries; int idgen_delay; } ;
struct TYPE_8__ {TYPE_2__ sysctl; } ;
struct net {TYPE_3__ ipv6; } ;
struct in6_addr {int dummy; } ;
struct inet6_ifaddr {int flags; int stable_privacy_retry; int lock; int state; struct inet6_dev* idev; struct in6_addr addr; int scope; int prefered_lft; int valid_lft; int prefix_len; } ;
struct TYPE_6__ {scalar_t__ max_addresses; } ;
struct inet6_dev {TYPE_5__* dev; TYPE_1__ cnf; } ;
struct ifa6_config {int ifa_flags; int scope; int preferred_lft; int valid_lft; int plen; struct in6_addr* pfx; } ;
struct TYPE_10__ {int name; } ;
struct TYPE_9__ {int h_source; } ;


 int IFA_F_STABLE_PRIVACY ;
 int INET6_IFADDR_STATE_ERRDAD ;
 int INET6_IFADDR_STATE_PREDAD ;
 scalar_t__ IS_ERR (struct inet6_ifaddr*) ;
 scalar_t__ addrconf_dad_end (struct inet6_ifaddr*) ;
 int addrconf_mod_dad_work (struct inet6_ifaddr*,int ) ;
 struct net* dev_net (TYPE_5__*) ;
 TYPE_4__* eth_hdr (struct sk_buff*) ;
 int in6_ifa_put (struct inet6_ifaddr*) ;
 struct inet6_ifaddr* ipv6_add_addr (struct inet6_dev*,struct ifa6_config*,int,int *) ;
 scalar_t__ ipv6_count_addresses (struct inet6_dev*) ;
 scalar_t__ ipv6_generate_stable_address (struct in6_addr*,int,struct inet6_dev*) ;
 int net_info_ratelimited (char*,int ,...) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void addrconf_dad_failure(struct sk_buff *skb, struct inet6_ifaddr *ifp)
{
 struct inet6_dev *idev = ifp->idev;
 struct net *net = dev_net(ifp->idev->dev);

 if (addrconf_dad_end(ifp)) {
  in6_ifa_put(ifp);
  return;
 }

 net_info_ratelimited("%s: IPv6 duplicate address %pI6c used by %pM detected!\n",
        ifp->idev->dev->name, &ifp->addr, eth_hdr(skb)->h_source);

 spin_lock_bh(&ifp->lock);

 if (ifp->flags & IFA_F_STABLE_PRIVACY) {
  struct in6_addr new_addr;
  struct inet6_ifaddr *ifp2;
  int retries = ifp->stable_privacy_retry + 1;
  struct ifa6_config cfg = {
   .pfx = &new_addr,
   .plen = ifp->prefix_len,
   .ifa_flags = ifp->flags,
   .valid_lft = ifp->valid_lft,
   .preferred_lft = ifp->prefered_lft,
   .scope = ifp->scope,
  };

  if (retries > net->ipv6.sysctl.idgen_retries) {
   net_info_ratelimited("%s: privacy stable address generation failed because of DAD conflicts!\n",
          ifp->idev->dev->name);
   goto errdad;
  }

  new_addr = ifp->addr;
  if (ipv6_generate_stable_address(&new_addr, retries,
       idev))
   goto errdad;

  spin_unlock_bh(&ifp->lock);

  if (idev->cnf.max_addresses &&
      ipv6_count_addresses(idev) >=
      idev->cnf.max_addresses)
   goto lock_errdad;

  net_info_ratelimited("%s: generating new stable privacy address because of DAD conflict\n",
         ifp->idev->dev->name);

  ifp2 = ipv6_add_addr(idev, &cfg, 0, ((void*)0));
  if (IS_ERR(ifp2))
   goto lock_errdad;

  spin_lock_bh(&ifp2->lock);
  ifp2->stable_privacy_retry = retries;
  ifp2->state = INET6_IFADDR_STATE_PREDAD;
  spin_unlock_bh(&ifp2->lock);

  addrconf_mod_dad_work(ifp2, net->ipv6.sysctl.idgen_delay);
  in6_ifa_put(ifp2);
lock_errdad:
  spin_lock_bh(&ifp->lock);
 }

errdad:

 ifp->state = INET6_IFADDR_STATE_ERRDAD;
 spin_unlock_bh(&ifp->lock);

 addrconf_mod_dad_work(ifp, 0);
 in6_ifa_put(ifp);
}

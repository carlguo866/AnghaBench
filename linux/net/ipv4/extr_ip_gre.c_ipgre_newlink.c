
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct ip_tunnel_parm {int dummy; } ;
struct ip_tunnel_encap {int dummy; } ;
struct ip_tunnel {int dummy; } ;
typedef int __u32 ;


 int ip_tunnel_encap_setup (struct ip_tunnel*,struct ip_tunnel_encap*) ;
 int ip_tunnel_newlink (struct net_device*,struct nlattr**,struct ip_tunnel_parm*,int ) ;
 scalar_t__ ipgre_netlink_encap_parms (struct nlattr**,struct ip_tunnel_encap*) ;
 int ipgre_netlink_parms (struct net_device*,struct nlattr**,struct nlattr**,struct ip_tunnel_parm*,int *) ;
 struct ip_tunnel* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ipgre_newlink(struct net *src_net, struct net_device *dev,
    struct nlattr *tb[], struct nlattr *data[],
    struct netlink_ext_ack *extack)
{
 struct ip_tunnel_parm p;
 struct ip_tunnel_encap ipencap;
 __u32 fwmark = 0;
 int err;

 if (ipgre_netlink_encap_parms(data, &ipencap)) {
  struct ip_tunnel *t = netdev_priv(dev);
  err = ip_tunnel_encap_setup(t, &ipencap);

  if (err < 0)
   return err;
 }

 err = ipgre_netlink_parms(dev, data, tb, &p, &fwmark);
 if (err < 0)
  return err;
 return ip_tunnel_newlink(dev, tb, &p, fwmark);
}

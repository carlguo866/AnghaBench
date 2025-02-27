
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct ipip_net {int dummy; } ;
struct TYPE_2__ {scalar_t__ daddr; scalar_t__ saddr; } ;
struct ip_tunnel_parm {scalar_t__* name; TYPE_1__ iph; } ;
struct ip_tunnel {struct ip_tunnel_parm parms; struct ip_tunnel* next; } ;
typedef scalar_t__ __be32 ;


 int IFNAMSIZ ;
 struct ip_tunnel** __ipip_bucket (struct ipip_net*,struct ip_tunnel_parm*) ;
 struct net_device* alloc_netdev (int,char*,int ) ;
 scalar_t__ dev_alloc_name (struct net_device*,char*) ;
 int dev_hold (struct net_device*) ;
 int dev_net_set (struct net_device*,struct net*) ;
 int free_netdev (struct net_device*) ;
 int ipip_net_id ;
 int ipip_tunnel_init (struct net_device*) ;
 int ipip_tunnel_link (struct ipip_net*,struct ip_tunnel*) ;
 int ipip_tunnel_setup ;
 struct ipip_net* net_generic (struct net*,int ) ;
 struct ip_tunnel* netdev_priv (struct net_device*) ;
 scalar_t__ register_netdevice (struct net_device*) ;
 int sprintf (char*,char*) ;
 scalar_t__ strchr (char*,char) ;
 int strlcpy (char*,scalar_t__*,int) ;

__attribute__((used)) static struct ip_tunnel * ipip_tunnel_locate(struct net *net,
  struct ip_tunnel_parm *parms, int create)
{
 __be32 remote = parms->iph.daddr;
 __be32 local = parms->iph.saddr;
 struct ip_tunnel *t, **tp, *nt;
 struct net_device *dev;
 char name[IFNAMSIZ];
 struct ipip_net *ipn = net_generic(net, ipip_net_id);

 for (tp = __ipip_bucket(ipn, parms); (t = *tp) != ((void*)0); tp = &t->next) {
  if (local == t->parms.iph.saddr && remote == t->parms.iph.daddr)
   return t;
 }
 if (!create)
  return ((void*)0);

 if (parms->name[0])
  strlcpy(name, parms->name, IFNAMSIZ);
 else
  sprintf(name, "tunl%%d");

 dev = alloc_netdev(sizeof(*t), name, ipip_tunnel_setup);
 if (dev == ((void*)0))
  return ((void*)0);

 dev_net_set(dev, net);

 if (strchr(name, '%')) {
  if (dev_alloc_name(dev, name) < 0)
   goto failed_free;
 }

 nt = netdev_priv(dev);
 nt->parms = *parms;

 ipip_tunnel_init(dev);

 if (register_netdevice(dev) < 0)
  goto failed_free;

 dev_hold(dev);
 ipip_tunnel_link(ipn, nt);
 return nt;

failed_free:
 free_netdev(dev);
 return ((void*)0);
}

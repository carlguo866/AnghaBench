
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int len; } ;
struct netlink_callback {int* args; int nlh; TYPE_3__* skb; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_4__ {struct batadv_hashtable* hash; } ;
struct batadv_priv {TYPE_1__ dat; } ;
struct batadv_hashtable {int size; } ;
struct batadv_hard_iface {scalar_t__ if_status; } ;
struct TYPE_6__ {int sk; } ;
struct TYPE_5__ {int portid; } ;


 int BATADV_ATTR_MESH_IFINDEX ;
 scalar_t__ BATADV_IF_ACTIVE ;
 int EINVAL ;
 int ENODEV ;
 int ENOENT ;
 TYPE_2__ NETLINK_CB (TYPE_3__*) ;
 scalar_t__ batadv_dat_cache_dump_bucket (struct sk_buff*,int,struct netlink_callback*,struct batadv_hashtable*,int,int*) ;
 int batadv_hardif_put (struct batadv_hard_iface*) ;
 int batadv_netlink_get_ifindex (int ,int ) ;
 struct batadv_hard_iface* batadv_primary_if_get_selected (struct batadv_priv*) ;
 int batadv_softif_is_valid (struct net_device*) ;
 struct net_device* dev_get_by_index (struct net*,int) ;
 int dev_put (struct net_device*) ;
 struct batadv_priv* netdev_priv (struct net_device*) ;
 struct net* sock_net (int ) ;

int batadv_dat_cache_dump(struct sk_buff *msg, struct netlink_callback *cb)
{
 struct batadv_hard_iface *primary_if = ((void*)0);
 int portid = NETLINK_CB(cb->skb).portid;
 struct net *net = sock_net(cb->skb->sk);
 struct net_device *soft_iface;
 struct batadv_hashtable *hash;
 struct batadv_priv *bat_priv;
 int bucket = cb->args[0];
 int idx = cb->args[1];
 int ifindex;
 int ret = 0;

 ifindex = batadv_netlink_get_ifindex(cb->nlh,
          BATADV_ATTR_MESH_IFINDEX);
 if (!ifindex)
  return -EINVAL;

 soft_iface = dev_get_by_index(net, ifindex);
 if (!soft_iface || !batadv_softif_is_valid(soft_iface)) {
  ret = -ENODEV;
  goto out;
 }

 bat_priv = netdev_priv(soft_iface);
 hash = bat_priv->dat.hash;

 primary_if = batadv_primary_if_get_selected(bat_priv);
 if (!primary_if || primary_if->if_status != BATADV_IF_ACTIVE) {
  ret = -ENOENT;
  goto out;
 }

 while (bucket < hash->size) {
  if (batadv_dat_cache_dump_bucket(msg, portid, cb, hash, bucket,
       &idx))
   break;

  bucket++;
  idx = 0;
 }

 cb->args[0] = bucket;
 cb->args[1] = idx;

 ret = msg->len;

out:
 if (primary_if)
  batadv_hardif_put(primary_if);

 if (soft_iface)
  dev_put(soft_iface);

 return ret;
}

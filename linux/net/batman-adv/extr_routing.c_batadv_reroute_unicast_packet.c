
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct sk_buff {int dummy; } ;
struct batadv_unicast_packet {scalar_t__ ttvn; int dest; } ;
struct TYPE_4__ {int vn; } ;
struct batadv_priv {TYPE_2__ tt; } ;
struct batadv_orig_node {int last_ttvn; scalar_t__* orig; } ;
struct batadv_hard_iface {TYPE_1__* net_dev; } ;
struct TYPE_3__ {scalar_t__* dev_addr; } ;


 scalar_t__ atomic_read (int *) ;
 scalar_t__ batadv_compare_eth (scalar_t__*,int ) ;
 int batadv_hardif_put (struct batadv_hard_iface*) ;
 scalar_t__ batadv_is_my_client (struct batadv_priv*,scalar_t__*,unsigned short) ;
 int batadv_orig_node_put (struct batadv_orig_node*) ;
 struct batadv_hard_iface* batadv_primary_if_get_selected (struct batadv_priv*) ;
 struct batadv_orig_node* batadv_transtable_search (struct batadv_priv*,int *,scalar_t__*,unsigned short) ;
 int ether_addr_copy (int ,scalar_t__*) ;
 int skb_postpull_rcsum (struct sk_buff*,struct batadv_unicast_packet*,int) ;
 int skb_postpush_rcsum (struct sk_buff*,struct batadv_unicast_packet*,int) ;

__attribute__((used)) static bool
batadv_reroute_unicast_packet(struct batadv_priv *bat_priv, struct sk_buff *skb,
         struct batadv_unicast_packet *unicast_packet,
         u8 *dst_addr, unsigned short vid)
{
 struct batadv_orig_node *orig_node = ((void*)0);
 struct batadv_hard_iface *primary_if = ((void*)0);
 bool ret = 0;
 u8 *orig_addr, orig_ttvn;

 if (batadv_is_my_client(bat_priv, dst_addr, vid)) {
  primary_if = batadv_primary_if_get_selected(bat_priv);
  if (!primary_if)
   goto out;
  orig_addr = primary_if->net_dev->dev_addr;
  orig_ttvn = (u8)atomic_read(&bat_priv->tt.vn);
 } else {
  orig_node = batadv_transtable_search(bat_priv, ((void*)0), dst_addr,
           vid);
  if (!orig_node)
   goto out;

  if (batadv_compare_eth(orig_node->orig, unicast_packet->dest))
   goto out;

  orig_addr = orig_node->orig;
  orig_ttvn = (u8)atomic_read(&orig_node->last_ttvn);
 }


 skb_postpull_rcsum(skb, unicast_packet, sizeof(*unicast_packet));
 ether_addr_copy(unicast_packet->dest, orig_addr);
 unicast_packet->ttvn = orig_ttvn;
 skb_postpush_rcsum(skb, unicast_packet, sizeof(*unicast_packet));

 ret = 1;
out:
 if (primary_if)
  batadv_hardif_put(primary_if);
 if (orig_node)
  batadv_orig_node_put(orig_node);

 return ret;
}

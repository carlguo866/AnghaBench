
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_bridge_vlan_group {int dummy; } ;
struct net_bridge_port {int dummy; } ;
struct net_bridge {int dummy; } ;



__attribute__((used)) static inline struct sk_buff *br_handle_vlan(struct net_bridge *br,
          const struct net_bridge_port *port,
          struct net_bridge_vlan_group *vg,
          struct sk_buff *skb)
{
 return skb;
}

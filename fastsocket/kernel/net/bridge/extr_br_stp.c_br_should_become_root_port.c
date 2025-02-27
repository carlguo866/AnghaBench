
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_bridge_port {scalar_t__ state; scalar_t__ designated_cost; scalar_t__ path_cost; scalar_t__ designated_port; scalar_t__ port_id; int designated_bridge; int designated_root; struct net_bridge* br; } ;
struct net_bridge {int bridge_id; } ;


 scalar_t__ BR_STATE_DISABLED ;
 struct net_bridge_port* br_get_port (struct net_bridge*,int ) ;
 scalar_t__ br_is_designated_port (struct net_bridge_port const*) ;
 int memcmp (int *,int *,int) ;

__attribute__((used)) static int br_should_become_root_port(const struct net_bridge_port *p,
          u16 root_port)
{
 struct net_bridge *br;
 struct net_bridge_port *rp;
 int t;

 br = p->br;
 if (p->state == BR_STATE_DISABLED ||
     br_is_designated_port(p))
  return 0;

 if (memcmp(&br->bridge_id, &p->designated_root, 8) <= 0)
  return 0;

 if (!root_port)
  return 1;

 rp = br_get_port(br, root_port);

 t = memcmp(&p->designated_root, &rp->designated_root, 8);
 if (t < 0)
  return 1;
 else if (t > 0)
  return 0;

 if (p->designated_cost + p->path_cost <
     rp->designated_cost + rp->path_cost)
  return 1;
 else if (p->designated_cost + p->path_cost >
   rp->designated_cost + rp->path_cost)
  return 0;

 t = memcmp(&p->designated_bridge, &rp->designated_bridge, 8);
 if (t < 0)
  return 1;
 else if (t > 0)
  return 0;

 if (p->designated_port < rp->designated_port)
  return 1;
 else if (p->designated_port > rp->designated_port)
  return 0;

 if (p->port_id < rp->port_id)
  return 1;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct gelic_port {struct net_device* netdev; } ;



__attribute__((used)) static inline struct net_device *port_to_netdev(struct gelic_port *p)
{
 return p->netdev;
}

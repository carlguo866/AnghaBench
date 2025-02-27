
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct hsr_priv {int ports; } ;
struct hsr_port {int type; struct net_device* dev; int port_list; struct hsr_priv* hsr; } ;
typedef enum hsr_port_type { ____Placeholder_hsr_port_type } hsr_port_type ;


 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HSR_PT_MASTER ;
 int dev_set_mtu (struct net_device*,int ) ;
 int hsr_check_dev_ok (struct net_device*) ;
 int hsr_get_max_mtu (struct hsr_priv*) ;
 struct hsr_port* hsr_port_get_hsr (struct hsr_priv*,int) ;
 int hsr_portdev_setup (struct net_device*,struct hsr_port*) ;
 int kfree (struct hsr_port*) ;
 struct hsr_port* kzalloc (int,int ) ;
 int list_add_tail_rcu (int *,int *) ;
 int netdev_update_features (struct net_device*) ;
 int synchronize_rcu () ;

int hsr_add_port(struct hsr_priv *hsr, struct net_device *dev,
   enum hsr_port_type type)
{
 struct hsr_port *port, *master;
 int res;

 if (type != HSR_PT_MASTER) {
  res = hsr_check_dev_ok(dev);
  if (res)
   return res;
 }

 port = hsr_port_get_hsr(hsr, type);
 if (port)
  return -EBUSY;

 port = kzalloc(sizeof(*port), GFP_KERNEL);
 if (!port)
  return -ENOMEM;

 if (type != HSR_PT_MASTER) {
  res = hsr_portdev_setup(dev, port);
  if (res)
   goto fail_dev_setup;
 }

 port->hsr = hsr;
 port->dev = dev;
 port->type = type;

 list_add_tail_rcu(&port->port_list, &hsr->ports);
 synchronize_rcu();

 master = hsr_port_get_hsr(hsr, HSR_PT_MASTER);
 netdev_update_features(master->dev);
 dev_set_mtu(master->dev, hsr_get_max_mtu(hsr));

 return 0;

fail_dev_setup:
 kfree(port);
 return res;
}

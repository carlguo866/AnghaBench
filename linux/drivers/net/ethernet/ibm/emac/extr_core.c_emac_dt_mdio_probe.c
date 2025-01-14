
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct emac_instance {TYPE_4__* mii_bus; TYPE_3__* ofdev; TYPE_2__* ndev; } ;
struct device_node {int dummy; } ;
struct TYPE_12__ {int of_node; } ;
struct TYPE_11__ {char* name; int id; int * reset; int * write; int * read; int parent; TYPE_2__* priv; } ;
struct TYPE_10__ {char* name; TYPE_6__ dev; } ;
struct TYPE_8__ {int parent; } ;
struct TYPE_9__ {TYPE_1__ dev; } ;


 int ENODEV ;
 int ENOMEM ;
 int MII_BUS_ID_SIZE ;
 int dev_err (TYPE_6__*,char*,...) ;
 TYPE_4__* devm_mdiobus_alloc (TYPE_6__*) ;
 int emac_mii_bus_read ;
 int emac_mii_bus_reset ;
 int emac_mii_bus_write ;
 int of_device_is_available (struct device_node*) ;
 struct device_node* of_get_child_by_name (int ,char*) ;
 int of_mdiobus_register (TYPE_4__*,struct device_node*) ;
 int of_node_put (struct device_node*) ;
 int snprintf (int ,int ,char*,char*) ;

__attribute__((used)) static int emac_dt_mdio_probe(struct emac_instance *dev)
{
 struct device_node *mii_np;
 int res;

 mii_np = of_get_child_by_name(dev->ofdev->dev.of_node, "mdio");
 if (!mii_np) {
  dev_err(&dev->ofdev->dev, "no mdio definition found.");
  return -ENODEV;
 }

 if (!of_device_is_available(mii_np)) {
  res = -ENODEV;
  goto put_node;
 }

 dev->mii_bus = devm_mdiobus_alloc(&dev->ofdev->dev);
 if (!dev->mii_bus) {
  res = -ENOMEM;
  goto put_node;
 }

 dev->mii_bus->priv = dev->ndev;
 dev->mii_bus->parent = dev->ndev->dev.parent;
 dev->mii_bus->name = "emac_mdio";
 dev->mii_bus->read = &emac_mii_bus_read;
 dev->mii_bus->write = &emac_mii_bus_write;
 dev->mii_bus->reset = &emac_mii_bus_reset;
 snprintf(dev->mii_bus->id, MII_BUS_ID_SIZE, "%s", dev->ofdev->name);
 res = of_mdiobus_register(dev->mii_bus, mii_np);
 if (res) {
  dev_err(&dev->ofdev->dev, "cannot register MDIO bus %s (%d)",
   dev->mii_bus->name, res);
 }

 put_node:
 of_node_put(mii_np);
 return res;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct switch_dev {char* alias; int name; int devname; int ports; } ;
struct of_device_id {scalar_t__ data; } ;
struct TYPE_10__ {int of_node; } ;
struct mdio_device {TYPE_3__ dev; TYPE_1__* bus; } ;
struct device_node {int dummy; } ;
struct ar8xxx_priv {int port4_phy; struct switch_dev dev; scalar_t__ use_count; int list; TYPE_1__* mii_bus; int chip_rev; TYPE_3__* pdev; TYPE_2__* sw_mii_bus; struct ar8xxx_chip const* chip; scalar_t__ mib_poll_interval; } ;
struct ar8xxx_chip {scalar_t__ phy_write; scalar_t__ phy_read; } ;
struct TYPE_9__ {char* name; int id; TYPE_3__* parent; struct ar8xxx_priv* priv; int write; int read; } ;
struct TYPE_8__ {TYPE_3__ dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int MII_BUS_ID_SIZE ;
 struct ar8xxx_priv* ar8xxx_create () ;
 int ar8xxx_dev_list ;
 int ar8xxx_dev_list_lock ;
 int ar8xxx_free (struct ar8xxx_priv*) ;
 int ar8xxx_mdiodev_of_match ;
 int ar8xxx_phy_read ;
 int ar8xxx_phy_write ;
 int ar8xxx_probe_switch (struct ar8xxx_priv*) ;
 int ar8xxx_read_id (struct ar8xxx_priv*) ;
 int ar8xxx_start (struct ar8xxx_priv*) ;
 char* dev_name (TYPE_3__*) ;
 int dev_set_drvdata (TYPE_3__*,struct ar8xxx_priv*) ;
 TYPE_2__* devm_mdiobus_alloc (TYPE_3__*) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct device_node* of_get_child_by_name (int ,char*) ;
 struct of_device_id* of_match_device (int ,TYPE_3__*) ;
 int of_mdiobus_register (TYPE_2__*,struct device_node*) ;
 scalar_t__ of_property_read_bool (int ,char*) ;
 int of_property_read_u32 (int ,char*,scalar_t__*) ;
 int pr_info (char*,int ,int ,int ,char*) ;
 int register_switch (struct switch_dev*,int *) ;
 int snprintf (int ,int ,char*,char*) ;
 int unregister_switch (struct switch_dev*) ;

__attribute__((used)) static int
ar8xxx_mdiodev_probe(struct mdio_device *mdiodev)
{
 const struct of_device_id *match;
 struct ar8xxx_priv *priv;
 struct switch_dev *swdev;
 struct device_node *mdio_node;
 int ret;

 match = of_match_device(ar8xxx_mdiodev_of_match, &mdiodev->dev);
 if (!match)
  return -EINVAL;

 priv = ar8xxx_create();
 if (priv == ((void*)0))
  return -ENOMEM;

 priv->mii_bus = mdiodev->bus;
 priv->pdev = &mdiodev->dev;
 priv->chip = (const struct ar8xxx_chip *) match->data;

 ret = of_property_read_u32(priv->pdev->of_node, "qca,mib-poll-interval",
       &priv->mib_poll_interval);
 if (ret)
  priv->mib_poll_interval = 0;

 ret = ar8xxx_read_id(priv);
 if (ret)
  goto free_priv;

 ret = ar8xxx_probe_switch(priv);
 if (ret)
  goto free_priv;

 if (priv->chip->phy_read && priv->chip->phy_write) {
  priv->sw_mii_bus = devm_mdiobus_alloc(&mdiodev->dev);
  priv->sw_mii_bus->name = "ar8xxx-mdio";
  priv->sw_mii_bus->read = ar8xxx_phy_read;
  priv->sw_mii_bus->write = ar8xxx_phy_write;
  priv->sw_mii_bus->priv = priv;
  priv->sw_mii_bus->parent = &mdiodev->dev;
  snprintf(priv->sw_mii_bus->id, MII_BUS_ID_SIZE, "%s",
    dev_name(&mdiodev->dev));
  mdio_node = of_get_child_by_name(priv->pdev->of_node, "mdio-bus");
  ret = of_mdiobus_register(priv->sw_mii_bus, mdio_node);
  if (ret)
   goto free_priv;
 }

 swdev = &priv->dev;
 swdev->alias = dev_name(&mdiodev->dev);

 if (of_property_read_bool(priv->pdev->of_node, "qca,phy4-mii-enable")) {
  priv->port4_phy = 1;
  swdev->ports--;
 }

 ret = register_switch(swdev, ((void*)0));
 if (ret)
  goto free_priv;

 pr_info("%s: %s rev. %u switch registered on %s\n",
  swdev->devname, swdev->name, priv->chip_rev,
  dev_name(&priv->mii_bus->dev));

 mutex_lock(&ar8xxx_dev_list_lock);
 list_add(&priv->list, &ar8xxx_dev_list);
 mutex_unlock(&ar8xxx_dev_list_lock);

 priv->use_count++;

 ret = ar8xxx_start(priv);
 if (ret)
  goto err_unregister_switch;

 dev_set_drvdata(&mdiodev->dev, priv);

 return 0;

err_unregister_switch:
 if (--priv->use_count)
  return ret;

 unregister_switch(&priv->dev);

free_priv:
 ar8xxx_free(priv);
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netdev_adjacent {int ref_nr; int master; int ignore; int list; void* private; struct net_device* dev; } ;
struct TYPE_2__ {int kobj; } ;
struct net_device {int name; TYPE_1__ dev; } ;
struct list_head {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct netdev_adjacent* __netdev_find_adj (struct net_device*,struct list_head*) ;
 int dev_hold (struct net_device*) ;
 int dev_put (struct net_device*) ;
 int kfree (struct netdev_adjacent*) ;
 struct netdev_adjacent* kmalloc (int,int ) ;
 int list_add_rcu (int *,struct list_head*) ;
 int list_add_tail_rcu (int *,struct list_head*) ;
 scalar_t__ netdev_adjacent_is_neigh_list (struct net_device*,struct net_device*,struct list_head*) ;
 int netdev_adjacent_sysfs_add (struct net_device*,struct net_device*,struct list_head*) ;
 int netdev_adjacent_sysfs_del (struct net_device*,int ,struct list_head*) ;
 int pr_debug (char*,int ,int ,int,...) ;
 int sysfs_create_link (int *,int *,char*) ;

__attribute__((used)) static int __netdev_adjacent_dev_insert(struct net_device *dev,
     struct net_device *adj_dev,
     struct list_head *dev_list,
     void *private, bool master)
{
 struct netdev_adjacent *adj;
 int ret;

 adj = __netdev_find_adj(adj_dev, dev_list);

 if (adj) {
  adj->ref_nr += 1;
  pr_debug("Insert adjacency: dev %s adj_dev %s adj->ref_nr %d\n",
    dev->name, adj_dev->name, adj->ref_nr);

  return 0;
 }

 adj = kmalloc(sizeof(*adj), GFP_KERNEL);
 if (!adj)
  return -ENOMEM;

 adj->dev = adj_dev;
 adj->master = master;
 adj->ref_nr = 1;
 adj->private = private;
 adj->ignore = 0;
 dev_hold(adj_dev);

 pr_debug("Insert adjacency: dev %s adj_dev %s adj->ref_nr %d; dev_hold on %s\n",
   dev->name, adj_dev->name, adj->ref_nr, adj_dev->name);

 if (netdev_adjacent_is_neigh_list(dev, adj_dev, dev_list)) {
  ret = netdev_adjacent_sysfs_add(dev, adj_dev, dev_list);
  if (ret)
   goto free_adj;
 }


 if (master) {
  ret = sysfs_create_link(&(dev->dev.kobj),
     &(adj_dev->dev.kobj), "master");
  if (ret)
   goto remove_symlinks;

  list_add_rcu(&adj->list, dev_list);
 } else {
  list_add_tail_rcu(&adj->list, dev_list);
 }

 return 0;

remove_symlinks:
 if (netdev_adjacent_is_neigh_list(dev, adj_dev, dev_list))
  netdev_adjacent_sysfs_del(dev, adj_dev->name, dev_list);
free_adj:
 kfree(adj);
 dev_put(adj_dev);

 return ret;
}

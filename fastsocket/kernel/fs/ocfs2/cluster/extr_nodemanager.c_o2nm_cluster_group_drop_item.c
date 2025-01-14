
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__** default_groups; } ;
struct o2nm_cluster {TYPE_2__ cl_group; } ;
struct config_item {int dummy; } ;
struct config_group {int dummy; } ;
struct TYPE_3__ {struct config_item cg_item; } ;


 int BUG_ON (int) ;
 int config_item_put (struct config_item*) ;
 struct o2nm_cluster* o2nm_single_cluster ;
 struct o2nm_cluster* to_o2nm_cluster (struct config_item*) ;

__attribute__((used)) static void o2nm_cluster_group_drop_item(struct config_group *group, struct config_item *item)
{
 struct o2nm_cluster *cluster = to_o2nm_cluster(item);
 int i;
 struct config_item *killme;

 BUG_ON(o2nm_single_cluster != cluster);
 o2nm_single_cluster = ((void*)0);

 for (i = 0; cluster->cl_group.default_groups[i]; i++) {
  killme = &cluster->cl_group.default_groups[i]->cg_item;
  cluster->cl_group.default_groups[i] = ((void*)0);
  config_item_put(killme);
 }

 config_item_put(item);
}

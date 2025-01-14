
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pohmelfs_config_group {unsigned int idx; int group_entry; scalar_t__ num_entry; int config_list; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct pohmelfs_config_group* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int pohmelfs_config_list ;
 struct pohmelfs_config_group* pohmelfs_find_config_group (unsigned int) ;

__attribute__((used)) static struct pohmelfs_config_group *pohmelfs_find_create_config_group(unsigned int idx)
{
 struct pohmelfs_config_group *g;

 g = pohmelfs_find_config_group(idx);
 if (g)
  return g;

 g = kzalloc(sizeof(struct pohmelfs_config_group), GFP_KERNEL);
 if (!g)
  return ((void*)0);

 INIT_LIST_HEAD(&g->config_list);
 g->idx = idx;
 g->num_entry = 0;

 list_add_tail(&g->group_entry, &pohmelfs_config_list);

 return g;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* pmap_t ;
struct TYPE_3__ {int pm_slb_tree_root; } ;


 int free_slb_tree_node (int ) ;

void
slb_free_tree(pmap_t pm)
{

 free_slb_tree_node(pm->pm_slb_tree_root);
}

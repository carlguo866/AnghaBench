
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {int rt_root; } ;
typedef TYPE_1__ range_tree_t ;
typedef int range_seg_t ;


 int rs_get_start (int *,TYPE_1__*) ;
 int * zfs_btree_first (int *,int *) ;

uint64_t
range_tree_min(range_tree_t *rt)
{
 range_seg_t *rs = zfs_btree_first(&rt->rt_root, ((void*)0));
 return (rs != ((void*)0) ? rs_get_start(rs, rt) : 0);
}

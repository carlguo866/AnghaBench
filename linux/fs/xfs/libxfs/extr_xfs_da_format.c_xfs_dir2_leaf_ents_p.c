
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_dir2_leaf_entry {int dummy; } ;
struct xfs_dir2_leaf {struct xfs_dir2_leaf_entry* __ents; } ;



__attribute__((used)) static struct xfs_dir2_leaf_entry *
xfs_dir2_leaf_ents_p(struct xfs_dir2_leaf *lp)
{
 return lp->__ents;
}

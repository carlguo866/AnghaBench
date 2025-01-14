
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfs_rmap_irec {scalar_t__ rm_startblock; scalar_t__ rm_owner; } ;
typedef scalar_t__ __u64 ;


 scalar_t__ xfs_rmap_irec_offset_pack (struct xfs_rmap_irec const*) ;

int
xfs_rmap_compare(
 const struct xfs_rmap_irec *a,
 const struct xfs_rmap_irec *b)
{
 __u64 oa;
 __u64 ob;

 oa = xfs_rmap_irec_offset_pack(a);
 ob = xfs_rmap_irec_offset_pack(b);

 if (a->rm_startblock < b->rm_startblock)
  return -1;
 else if (a->rm_startblock > b->rm_startblock)
  return 1;
 else if (a->rm_owner < b->rm_owner)
  return -1;
 else if (a->rm_owner > b->rm_owner)
  return 1;
 else if (oa < ob)
  return -1;
 else if (oa > ob)
  return 1;
 else
  return 0;
}

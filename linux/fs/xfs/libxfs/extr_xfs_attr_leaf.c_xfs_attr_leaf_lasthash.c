
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfs_dahash_t ;
struct xfs_mount {int m_attr_geo; } ;
struct xfs_buf {int b_addr; struct xfs_mount* b_mount; } ;
struct xfs_attr_leaf_entry {int hashval; } ;
struct xfs_attr3_icleaf_hdr {int count; } ;


 int be32_to_cpu (int ) ;
 struct xfs_attr_leaf_entry* xfs_attr3_leaf_entryp (int ) ;
 int xfs_attr3_leaf_hdr_from_disk (int ,struct xfs_attr3_icleaf_hdr*,int ) ;

xfs_dahash_t
xfs_attr_leaf_lasthash(
 struct xfs_buf *bp,
 int *count)
{
 struct xfs_attr3_icleaf_hdr ichdr;
 struct xfs_attr_leaf_entry *entries;
 struct xfs_mount *mp = bp->b_mount;

 xfs_attr3_leaf_hdr_from_disk(mp->m_attr_geo, &ichdr, bp->b_addr);
 entries = xfs_attr3_leaf_entryp(bp->b_addr);
 if (count)
  *count = ichdr.count;
 if (!ichdr.count)
  return 0;
 return be32_to_cpu(entries[ichdr.count - 1].hashval);
}

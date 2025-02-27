
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int * xfs_failaddr_t ;
typedef int xfs_btnum_t ;
struct TYPE_8__ {int sb_meta_uuid; } ;
struct xfs_mount {TYPE_4__ m_sb; } ;
struct xfs_buf {int b_bn; } ;
struct xfs_btree_cur {TYPE_1__* bc_ops; int bc_btnum; struct xfs_mount* bc_mp; } ;
struct TYPE_6__ {scalar_t__ bb_blkno; scalar_t__ bb_pad; scalar_t__ bb_leftsib; scalar_t__ bb_rightsib; int bb_uuid; } ;
struct TYPE_7__ {TYPE_2__ l; } ;
struct xfs_btree_block {TYPE_3__ bb_u; int bb_numrecs; int bb_level; int bb_magic; } ;
struct TYPE_5__ {int (* get_maxrecs ) (struct xfs_btree_cur*,int) ;} ;


 int NULLFSBLOCK ;
 int XFS_BUF_DADDR_NULL ;
 int * __this_address ;
 int be16_to_cpu (int ) ;
 scalar_t__ be32_to_cpu (int ) ;
 int be64_to_cpu (scalar_t__) ;
 scalar_t__ cpu_to_be32 (int ) ;
 scalar_t__ cpu_to_be64 (int ) ;
 int stub1 (struct xfs_btree_cur*,int) ;
 int uuid_equal (int *,int *) ;
 int xfs_btree_check_lptr (struct xfs_btree_cur*,int ,int) ;
 scalar_t__ xfs_btree_magic (int,int ) ;
 int xfs_sb_version_hascrc (TYPE_4__*) ;

xfs_failaddr_t
__xfs_btree_check_lblock(
 struct xfs_btree_cur *cur,
 struct xfs_btree_block *block,
 int level,
 struct xfs_buf *bp)
{
 struct xfs_mount *mp = cur->bc_mp;
 xfs_btnum_t btnum = cur->bc_btnum;
 int crc = xfs_sb_version_hascrc(&mp->m_sb);

 if (crc) {
  if (!uuid_equal(&block->bb_u.l.bb_uuid, &mp->m_sb.sb_meta_uuid))
   return __this_address;
  if (block->bb_u.l.bb_blkno !=
      cpu_to_be64(bp ? bp->b_bn : XFS_BUF_DADDR_NULL))
   return __this_address;
  if (block->bb_u.l.bb_pad != cpu_to_be32(0))
   return __this_address;
 }

 if (be32_to_cpu(block->bb_magic) != xfs_btree_magic(crc, btnum))
  return __this_address;
 if (be16_to_cpu(block->bb_level) != level)
  return __this_address;
 if (be16_to_cpu(block->bb_numrecs) >
     cur->bc_ops->get_maxrecs(cur, level))
  return __this_address;
 if (block->bb_u.l.bb_leftsib != cpu_to_be64(NULLFSBLOCK) &&
     !xfs_btree_check_lptr(cur, be64_to_cpu(block->bb_u.l.bb_leftsib),
   level + 1))
  return __this_address;
 if (block->bb_u.l.bb_rightsib != cpu_to_be64(NULLFSBLOCK) &&
     !xfs_btree_check_lptr(cur, be64_to_cpu(block->bb_u.l.bb_rightsib),
   level + 1))
  return __this_address;

 return ((void*)0);
}

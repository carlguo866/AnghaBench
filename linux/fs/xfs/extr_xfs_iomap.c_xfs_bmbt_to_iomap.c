
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_mount {int dummy; } ;
struct xfs_inode {TYPE_1__* i_itemp; struct xfs_mount* i_mount; } ;
struct xfs_bmbt_irec {scalar_t__ br_startblock; scalar_t__ br_state; int br_blockcount; int br_startoff; } ;
struct iomap {int flags; int dax_dev; int bdev; void* length; void* offset; int type; void* addr; } ;
struct TYPE_2__ {int ili_fsync_fields; } ;


 void* BBTOB (int ) ;
 scalar_t__ DELAYSTARTBLOCK ;
 scalar_t__ HOLESTARTBLOCK ;
 int IOMAP_DELALLOC ;
 int IOMAP_F_DIRTY ;
 int IOMAP_F_SHARED ;
 int IOMAP_HOLE ;
 int IOMAP_MAPPED ;
 void* IOMAP_NULL_ADDR ;
 int IOMAP_UNWRITTEN ;
 int VFS_I (struct xfs_inode*) ;
 scalar_t__ XFS_EXT_UNWRITTEN ;
 void* XFS_FSB_TO_B (struct xfs_mount*,int ) ;
 int XFS_ILOG_TIMESTAMP ;
 scalar_t__ isnullstartblock (scalar_t__) ;
 scalar_t__ unlikely (int) ;
 int xfs_alert_fsblock_zero (struct xfs_inode*,struct xfs_bmbt_irec*) ;
 int xfs_find_bdev_for_inode (int ) ;
 int xfs_find_daxdev_for_inode (int ) ;
 int xfs_fsb_to_db (struct xfs_inode*,scalar_t__) ;
 scalar_t__ xfs_ipincount (struct xfs_inode*) ;
 int xfs_valid_startblock (struct xfs_inode*,scalar_t__) ;

int
xfs_bmbt_to_iomap(
 struct xfs_inode *ip,
 struct iomap *iomap,
 struct xfs_bmbt_irec *imap,
 bool shared)
{
 struct xfs_mount *mp = ip->i_mount;

 if (unlikely(!xfs_valid_startblock(ip, imap->br_startblock)))
  return xfs_alert_fsblock_zero(ip, imap);

 if (imap->br_startblock == HOLESTARTBLOCK) {
  iomap->addr = IOMAP_NULL_ADDR;
  iomap->type = IOMAP_HOLE;
 } else if (imap->br_startblock == DELAYSTARTBLOCK ||
     isnullstartblock(imap->br_startblock)) {
  iomap->addr = IOMAP_NULL_ADDR;
  iomap->type = IOMAP_DELALLOC;
 } else {
  iomap->addr = BBTOB(xfs_fsb_to_db(ip, imap->br_startblock));
  if (imap->br_state == XFS_EXT_UNWRITTEN)
   iomap->type = IOMAP_UNWRITTEN;
  else
   iomap->type = IOMAP_MAPPED;
 }
 iomap->offset = XFS_FSB_TO_B(mp, imap->br_startoff);
 iomap->length = XFS_FSB_TO_B(mp, imap->br_blockcount);
 iomap->bdev = xfs_find_bdev_for_inode(VFS_I(ip));
 iomap->dax_dev = xfs_find_daxdev_for_inode(VFS_I(ip));

 if (xfs_ipincount(ip) &&
     (ip->i_itemp->ili_fsync_fields & ~XFS_ILOG_TIMESTAMP))
  iomap->flags |= IOMAP_F_DIRTY;
 if (shared)
  iomap->flags |= IOMAP_F_SHARED;
 return 0;
}

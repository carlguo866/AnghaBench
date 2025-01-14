
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_37__ TYPE_4__ ;
typedef struct TYPE_36__ TYPE_3__ ;
typedef struct TYPE_35__ TYPE_30__ ;
typedef struct TYPE_34__ TYPE_2__ ;
typedef struct TYPE_33__ TYPE_24__ ;
typedef struct TYPE_32__ TYPE_1__ ;


typedef int xfs_ufsize_t ;
typedef int xfs_trans_t ;
typedef scalar_t__ xfs_off_t ;
struct TYPE_32__ {int sb_rextsize; } ;
struct TYPE_34__ {TYPE_1__ m_sb; } ;
typedef TYPE_2__ xfs_mount_t ;
struct TYPE_36__ {TYPE_2__* i_mount; } ;
typedef TYPE_3__ xfs_inode_t ;
typedef scalar_t__ xfs_fileoff_t ;
typedef scalar_t__ xfs_filblks_t ;
typedef int xfs_extlen_t ;
struct TYPE_37__ {scalar_t__ br_startblock; scalar_t__ br_startoff; scalar_t__ br_state; scalar_t__ br_blockcount; } ;
typedef TYPE_4__ xfs_bmbt_irec_t ;
typedef int uint ;
struct TYPE_35__ {int tr_write; } ;
struct TYPE_33__ {int if_flags; } ;


 int ASSERT (int) ;
 int ENOSPC ;
 scalar_t__ HOLESTARTBLOCK ;
 scalar_t__ IS_DAX (int ) ;
 TYPE_30__* M_RES (TYPE_2__*) ;
 int VFS_I (TYPE_3__*) ;
 int XFS_BMAPI_CONVERT ;
 int XFS_BMAPI_PREALLOC ;
 int XFS_BMAPI_ZERO ;
 scalar_t__ XFS_B_TO_FSB (TYPE_2__*,int ) ;
 scalar_t__ XFS_B_TO_FSBT (TYPE_2__*,scalar_t__) ;
 int XFS_DATA_FORK ;
 int XFS_DIOSTRAT_SPACE_RES (TYPE_2__*,scalar_t__) ;
 scalar_t__ XFS_EXT_UNWRITTEN ;
 int XFS_IFEXTENTS ;
 TYPE_24__* XFS_IFORK_PTR (TYPE_3__*,int ) ;
 int XFS_ILOCK_EXCL ;
 int XFS_ILOCK_SHARED ;
 scalar_t__ XFS_ISIZE (TYPE_3__*) ;
 int XFS_IS_REALTIME_INODE (TYPE_3__*) ;
 int XFS_QMOPT_RES_REGBLKS ;
 int XFS_QMOPT_RES_RTBLKS ;
 int XFS_TRANS_RESERVE ;
 scalar_t__ min (scalar_t__,scalar_t__) ;
 scalar_t__ unlikely (int) ;
 int xfs_alert_fsblock_zero (TYPE_3__*,TYPE_4__*) ;
 scalar_t__ xfs_aligned_fsb_count (scalar_t__,scalar_t__,int ) ;
 int xfs_bmapi_write (int *,TYPE_3__*,scalar_t__,scalar_t__,int,int,TYPE_4__*,int*) ;
 int xfs_get_extsz_hint (TYPE_3__*) ;
 int xfs_ilock (TYPE_3__*,int) ;
 int xfs_iomap_eof_align_last_fsb (TYPE_3__*,int ,scalar_t__*) ;
 int xfs_isilocked (TYPE_3__*,int) ;
 int xfs_iunlock (TYPE_3__*,int) ;
 int xfs_qm_dqattach (TYPE_3__*) ;
 int xfs_trans_alloc (TYPE_2__*,int *,int,int,int,int **) ;
 int xfs_trans_cancel (int *) ;
 int xfs_trans_commit (int *) ;
 int xfs_trans_ijoin (int *,TYPE_3__*,int ) ;
 int xfs_trans_reserve_quota_nblks (int *,TYPE_3__*,int,int ,int) ;
 int xfs_trans_unreserve_quota_nblks (int *,TYPE_3__*,long,int ,int) ;
 int xfs_valid_startblock (TYPE_3__*,scalar_t__) ;

int
xfs_iomap_write_direct(
 xfs_inode_t *ip,
 xfs_off_t offset,
 size_t count,
 xfs_bmbt_irec_t *imap,
 int nmaps)
{
 xfs_mount_t *mp = ip->i_mount;
 xfs_fileoff_t offset_fsb;
 xfs_fileoff_t last_fsb;
 xfs_filblks_t count_fsb, resaligned;
 xfs_extlen_t extsz;
 int nimaps;
 int quota_flag;
 int rt;
 xfs_trans_t *tp;
 uint qblocks, resblks, resrtextents;
 int error;
 int lockmode;
 int bmapi_flags = XFS_BMAPI_PREALLOC;
 uint tflags = 0;

 rt = XFS_IS_REALTIME_INODE(ip);
 extsz = xfs_get_extsz_hint(ip);
 lockmode = XFS_ILOCK_SHARED;

 ASSERT(xfs_isilocked(ip, lockmode));

 offset_fsb = XFS_B_TO_FSBT(mp, offset);
 last_fsb = XFS_B_TO_FSB(mp, ((xfs_ufsize_t)(offset + count)));
 if ((offset + count) > XFS_ISIZE(ip)) {







  ASSERT(XFS_IFORK_PTR(ip, XFS_DATA_FORK)->if_flags &
        XFS_IFEXTENTS);
  error = xfs_iomap_eof_align_last_fsb(ip, extsz, &last_fsb);
  if (error)
   goto out_unlock;
 } else {
  if (nmaps && (imap->br_startblock == HOLESTARTBLOCK))
   last_fsb = min(last_fsb, (xfs_fileoff_t)
     imap->br_blockcount +
     imap->br_startoff);
 }
 count_fsb = last_fsb - offset_fsb;
 ASSERT(count_fsb > 0);
 resaligned = xfs_aligned_fsb_count(offset_fsb, count_fsb, extsz);

 if (unlikely(rt)) {
  resrtextents = qblocks = resaligned;
  resrtextents /= mp->m_sb.sb_rextsize;
  resblks = XFS_DIOSTRAT_SPACE_RES(mp, 0);
  quota_flag = XFS_QMOPT_RES_RTBLKS;
 } else {
  resrtextents = 0;
  resblks = qblocks = XFS_DIOSTRAT_SPACE_RES(mp, resaligned);
  quota_flag = XFS_QMOPT_RES_REGBLKS;
 }





 xfs_iunlock(ip, lockmode);
 error = xfs_qm_dqattach(ip);
 if (error)
  return error;
 if (IS_DAX(VFS_I(ip))) {
  bmapi_flags = XFS_BMAPI_CONVERT | XFS_BMAPI_ZERO;
  if (imap->br_state == XFS_EXT_UNWRITTEN) {
   tflags |= XFS_TRANS_RESERVE;
   resblks = XFS_DIOSTRAT_SPACE_RES(mp, 0) << 1;
  }
 }
 error = xfs_trans_alloc(mp, &M_RES(mp)->tr_write, resblks, resrtextents,
   tflags, &tp);
 if (error)
  return error;

 lockmode = XFS_ILOCK_EXCL;
 xfs_ilock(ip, lockmode);

 error = xfs_trans_reserve_quota_nblks(tp, ip, qblocks, 0, quota_flag);
 if (error)
  goto out_trans_cancel;

 xfs_trans_ijoin(tp, ip, 0);





 nimaps = 1;
 error = xfs_bmapi_write(tp, ip, offset_fsb, count_fsb,
    bmapi_flags, resblks, imap, &nimaps);
 if (error)
  goto out_res_cancel;




 error = xfs_trans_commit(tp);
 if (error)
  goto out_unlock;




 if (nimaps == 0) {
  error = -ENOSPC;
  goto out_unlock;
 }

 if (unlikely(!xfs_valid_startblock(ip, imap->br_startblock)))
  error = xfs_alert_fsblock_zero(ip, imap);

out_unlock:
 xfs_iunlock(ip, lockmode);
 return error;

out_res_cancel:
 xfs_trans_unreserve_quota_nblks(tp, ip, (long)qblocks, 0, quota_flag);
out_trans_cancel:
 xfs_trans_cancel(tp);
 goto out_unlock;
}

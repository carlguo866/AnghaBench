
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_14__ ;


struct TYPE_19__ {scalar_t__ t_frextents_delta; TYPE_4__* t_mountp; } ;
typedef TYPE_3__ xfs_trans_t ;
typedef int xfs_rtblock_t ;
struct TYPE_17__ {scalar_t__ sb_frextents; scalar_t__ sb_rextents; } ;
struct TYPE_20__ {TYPE_7__* m_rbmip; TYPE_1__ m_sb; } ;
typedef TYPE_4__ xfs_mount_t ;
typedef int xfs_fsblock_t ;
typedef scalar_t__ xfs_extlen_t ;
typedef int xfs_buf_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_18__ {int di_flags; } ;
struct TYPE_21__ {TYPE_2__ i_d; int * i_itemp; } ;
struct TYPE_16__ {int i_atime; } ;


 int ASSERT (int ) ;
 TYPE_14__* VFS_I (TYPE_7__*) ;
 int XFS_DIFLAG_NEWRTBM ;
 int XFS_ILOCK_EXCL ;
 int XFS_ILOG_CORE ;
 int XFS_TRANS_SB_FREXTENTS ;
 int xfs_isilocked (TYPE_7__*,int ) ;
 int xfs_rtcheck_alloc_range (TYPE_4__*,TYPE_3__*,int ,scalar_t__) ;
 int xfs_rtfree_range (TYPE_4__*,TYPE_3__*,int ,scalar_t__,int **,int *) ;
 int xfs_trans_log_inode (TYPE_3__*,TYPE_7__*,int ) ;
 int xfs_trans_mod_sb (TYPE_3__*,int ,long) ;

int
xfs_rtfree_extent(
 xfs_trans_t *tp,
 xfs_rtblock_t bno,
 xfs_extlen_t len)
{
 int error;
 xfs_mount_t *mp;
 xfs_fsblock_t sb;
 xfs_buf_t *sumbp = ((void*)0);

 mp = tp->t_mountp;

 ASSERT(mp->m_rbmip->i_itemp != ((void*)0));
 ASSERT(xfs_isilocked(mp->m_rbmip, XFS_ILOCK_EXCL));

 error = xfs_rtcheck_alloc_range(mp, tp, bno, len);
 if (error)
  return error;




 error = xfs_rtfree_range(mp, tp, bno, len, &sumbp, &sb);
 if (error) {
  return error;
 }



 xfs_trans_mod_sb(tp, XFS_TRANS_SB_FREXTENTS, (long)len);




 if (tp->t_frextents_delta + mp->m_sb.sb_frextents ==
     mp->m_sb.sb_rextents) {
  if (!(mp->m_rbmip->i_d.di_flags & XFS_DIFLAG_NEWRTBM))
   mp->m_rbmip->i_d.di_flags |= XFS_DIFLAG_NEWRTBM;
  *(uint64_t *)&VFS_I(mp->m_rbmip)->i_atime = 0;
  xfs_trans_log_inode(tp, mp->m_rbmip, XFS_ILOG_CORE);
 }
 return 0;
}

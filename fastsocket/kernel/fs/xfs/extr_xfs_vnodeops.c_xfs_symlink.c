
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_42__ TYPE_6__ ;
typedef struct TYPE_41__ TYPE_5__ ;
typedef struct TYPE_40__ TYPE_4__ ;
typedef struct TYPE_39__ TYPE_3__ ;
typedef struct TYPE_38__ TYPE_2__ ;
typedef struct TYPE_37__ TYPE_1__ ;


typedef int xfs_trans_t ;
struct TYPE_40__ {int m_flags; int m_ddev_targp; } ;
typedef TYPE_4__ xfs_mount_t ;
struct TYPE_39__ {int di_flags; int di_size; int di_format; } ;
struct TYPE_37__ {int if_data; } ;
struct TYPE_38__ {int if_flags; TYPE_1__ if_u1; } ;
struct TYPE_41__ {int i_ino; TYPE_3__ i_d; TYPE_2__ i_df; TYPE_4__* i_mount; } ;
typedef TYPE_5__ xfs_inode_t ;
typedef int xfs_fsblock_t ;
typedef scalar_t__ xfs_fileoff_t ;
typedef scalar_t__ xfs_filblks_t ;
typedef int xfs_daddr_t ;
typedef int xfs_buf_t ;
struct TYPE_42__ {int br_blockcount; int br_startblock; } ;
typedef TYPE_6__ xfs_bmbt_irec_t ;
typedef int xfs_bmap_free_t ;
typedef scalar_t__ uint ;
struct xfs_name {int len; } ;
struct xfs_dquot {int dummy; } ;
typedef int prid_t ;
typedef int mode_t ;
typedef scalar_t__ boolean_t ;


 int BTOBB (int) ;
 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int EIO ;
 int ENAMETOOLONG ;
 int ENOMEM ;
 int ENOSPC ;
 int EPERM ;
 int IRELE (TYPE_5__*) ;
 int MAXPATHLEN ;
 int SYMLINK_MAPS ;
 int S_IFLNK ;
 int S_IFMT ;
 int XFS_BMAPI_METADATA ;
 int XFS_BMAPI_WRITE ;
 int XFS_BUF_PTR (int *) ;
 scalar_t__ XFS_B_TO_FSB (TYPE_4__*,int) ;
 int XFS_DATA_FORK ;
 int XFS_DIFLAG_NOSYMLINKS ;
 int XFS_DIFLAG_PROJINHERIT ;
 int XFS_DINODE_FMT_LOCAL ;
 int XFS_ERROR (int ) ;
 scalar_t__ XFS_FORCED_SHUTDOWN (TYPE_4__*) ;
 int XFS_FSB_TO_B (TYPE_4__*,int ) ;
 int XFS_FSB_TO_DADDR (TYPE_4__*,int ) ;
 scalar_t__ XFS_IALLOC_SPACE_RES (TYPE_4__*) ;
 int XFS_ICHGTIME_CHG ;
 int XFS_ICHGTIME_MOD ;
 int XFS_IFBROOT ;
 int XFS_IFEXTENTS ;
 int XFS_IFINLINE ;
 int XFS_IFORK_DSIZE (TYPE_5__*) ;
 int XFS_ILOCK_EXCL ;
 int XFS_ILOCK_PARENT ;
 int XFS_ILOG_CORE ;
 int XFS_ILOG_DDATA ;
 int XFS_LITINO (TYPE_4__*) ;
 int XFS_MOUNT_DIRSYNC ;
 int XFS_MOUNT_WSYNC ;
 int XFS_PROJID_DEFAULT ;
 int XFS_QMOPT_INHERIT ;
 int XFS_QMOPT_QUOTALL ;
 int XFS_SYMLINK_LOG_COUNT ;
 int XFS_SYMLINK_LOG_RES (TYPE_4__*) ;
 scalar_t__ XFS_SYMLINK_SPACE_RES (TYPE_4__*,int ,scalar_t__) ;
 scalar_t__ XFS_TRANS_ABORT ;
 int XFS_TRANS_PERM_LOG_RES ;
 scalar_t__ XFS_TRANS_RELEASE_LOG_RES ;
 int XFS_TRANS_SYMLINK ;
 int current_fsgid () ;
 int current_fsuid () ;
 int memcpy (int ,char const*,int) ;
 int strlen (char const*) ;
 int trace_xfs_symlink (TYPE_5__*,struct xfs_name*) ;
 int xfs_bmap_cancel (int *) ;
 int xfs_bmap_finish (int **,int *,int*) ;
 int xfs_bmap_init (int *,int *) ;
 int xfs_bmapi (int *,TYPE_5__*,scalar_t__,scalar_t__,int,int *,scalar_t__,TYPE_6__*,int*,int *) ;
 int xfs_dir_canenter (int *,TYPE_5__*,struct xfs_name*,scalar_t__) ;
 int xfs_dir_createname (int *,TYPE_5__*,struct xfs_name*,int ,int *,int *,scalar_t__) ;
 int xfs_dir_ialloc (int **,TYPE_5__*,int,int,int ,int ,int,TYPE_5__**,int *) ;
 int xfs_get_projid (TYPE_5__*) ;
 int xfs_idata_realloc (TYPE_5__*,int,int ) ;
 int xfs_ilock (TYPE_5__*,int) ;
 int xfs_iunlock (TYPE_5__*,int) ;
 int xfs_qm_dqrele (struct xfs_dquot*) ;
 int xfs_qm_vop_create_dqattach (int *,TYPE_5__*,struct xfs_dquot*,struct xfs_dquot*) ;
 int xfs_qm_vop_dqalloc (TYPE_5__*,int ,int ,int ,int,struct xfs_dquot**,struct xfs_dquot**) ;
 int * xfs_trans_alloc (TYPE_4__*,int ) ;
 int xfs_trans_cancel (int *,scalar_t__) ;
 int xfs_trans_commit (int *,scalar_t__) ;
 int * xfs_trans_get_buf (int *,int ,int ,int ,int ) ;
 int xfs_trans_ichgtime (int *,TYPE_5__*,int) ;
 int xfs_trans_ijoin_ref (int *,TYPE_5__*,int) ;
 int xfs_trans_log_buf (int *,int *,int ,int) ;
 int xfs_trans_log_inode (int *,TYPE_5__*,int) ;
 int xfs_trans_reserve (int *,scalar_t__,int ,int ,int ,int ) ;
 int xfs_trans_reserve_quota (int *,TYPE_4__*,struct xfs_dquot*,struct xfs_dquot*,scalar_t__,int,int ) ;
 int xfs_trans_set_sync (int *) ;

int
xfs_symlink(
 xfs_inode_t *dp,
 struct xfs_name *link_name,
 const char *target_path,
 mode_t mode,
 xfs_inode_t **ipp)
{
 xfs_mount_t *mp = dp->i_mount;
 xfs_trans_t *tp;
 xfs_inode_t *ip;
 int error;
 int pathlen;
 xfs_bmap_free_t free_list;
 xfs_fsblock_t first_block;
 boolean_t unlock_dp_on_error = B_FALSE;
 uint cancel_flags;
 int committed;
 xfs_fileoff_t first_fsb;
 xfs_filblks_t fs_blocks;
 int nmaps;
 xfs_bmbt_irec_t mval[SYMLINK_MAPS];
 xfs_daddr_t d;
 const char *cur_chunk;
 int byte_cnt;
 int n;
 xfs_buf_t *bp;
 prid_t prid;
 struct xfs_dquot *udqp, *gdqp;
 uint resblks;

 *ipp = ((void*)0);
 error = 0;
 ip = ((void*)0);
 tp = ((void*)0);

 trace_xfs_symlink(dp, link_name);

 if (XFS_FORCED_SHUTDOWN(mp))
  return XFS_ERROR(EIO);




 pathlen = strlen(target_path);
 if (pathlen >= MAXPATHLEN)
  return XFS_ERROR(ENAMETOOLONG);

 udqp = gdqp = ((void*)0);
 if (dp->i_d.di_flags & XFS_DIFLAG_PROJINHERIT)
  prid = xfs_get_projid(dp);
 else
  prid = XFS_PROJID_DEFAULT;




 error = xfs_qm_vop_dqalloc(dp, current_fsuid(), current_fsgid(), prid,
   XFS_QMOPT_QUOTALL | XFS_QMOPT_INHERIT, &udqp, &gdqp);
 if (error)
  goto std_return;

 tp = xfs_trans_alloc(mp, XFS_TRANS_SYMLINK);
 cancel_flags = XFS_TRANS_RELEASE_LOG_RES;




 if (pathlen <= XFS_LITINO(mp))
  fs_blocks = 0;
 else
  fs_blocks = XFS_B_TO_FSB(mp, pathlen);
 resblks = XFS_SYMLINK_SPACE_RES(mp, link_name->len, fs_blocks);
 error = xfs_trans_reserve(tp, resblks, XFS_SYMLINK_LOG_RES(mp), 0,
   XFS_TRANS_PERM_LOG_RES, XFS_SYMLINK_LOG_COUNT);
 if (error == ENOSPC && fs_blocks == 0) {
  resblks = 0;
  error = xfs_trans_reserve(tp, 0, XFS_SYMLINK_LOG_RES(mp), 0,
    XFS_TRANS_PERM_LOG_RES, XFS_SYMLINK_LOG_COUNT);
 }
 if (error) {
  cancel_flags = 0;
  goto error_return;
 }

 xfs_ilock(dp, XFS_ILOCK_EXCL | XFS_ILOCK_PARENT);
 unlock_dp_on_error = B_TRUE;




 if (dp->i_d.di_flags & XFS_DIFLAG_NOSYMLINKS) {
  error = XFS_ERROR(EPERM);
  goto error_return;
 }




 error = xfs_trans_reserve_quota(tp, mp, udqp, gdqp, resblks, 1, 0);
 if (error)
  goto error_return;




 error = xfs_dir_canenter(tp, dp, link_name, resblks);
 if (error)
  goto error_return;




 xfs_bmap_init(&free_list, &first_block);




 error = xfs_dir_ialloc(&tp, dp, S_IFLNK | (mode & ~S_IFMT), 1, 0,
          prid, resblks > 0, &ip, ((void*)0));
 if (error) {
  if (error == ENOSPC)
   goto error_return;
  goto error1;
 }






 xfs_trans_ijoin_ref(tp, dp, XFS_ILOCK_EXCL);
 unlock_dp_on_error = B_FALSE;




 xfs_qm_vop_create_dqattach(tp, ip, udqp, gdqp);

 if (resblks)
  resblks -= XFS_IALLOC_SPACE_RES(mp);



 if (pathlen <= XFS_IFORK_DSIZE(ip)) {
  xfs_idata_realloc(ip, pathlen, XFS_DATA_FORK);
  memcpy(ip->i_df.if_u1.if_data, target_path, pathlen);
  ip->i_d.di_size = pathlen;




  ip->i_df.if_flags &= ~(XFS_IFEXTENTS | XFS_IFBROOT);
  ip->i_df.if_flags |= XFS_IFINLINE;

  ip->i_d.di_format = XFS_DINODE_FMT_LOCAL;
  xfs_trans_log_inode(tp, ip, XFS_ILOG_DDATA | XFS_ILOG_CORE);

 } else {
  first_fsb = 0;
  nmaps = SYMLINK_MAPS;

  error = xfs_bmapi(tp, ip, first_fsb, fs_blocks,
      XFS_BMAPI_WRITE | XFS_BMAPI_METADATA,
      &first_block, resblks, mval, &nmaps,
      &free_list);
  if (error)
   goto error2;

  if (resblks)
   resblks -= fs_blocks;
  ip->i_d.di_size = pathlen;
  xfs_trans_log_inode(tp, ip, XFS_ILOG_CORE);

  cur_chunk = target_path;
  for (n = 0; n < nmaps; n++) {
   d = XFS_FSB_TO_DADDR(mp, mval[n].br_startblock);
   byte_cnt = XFS_FSB_TO_B(mp, mval[n].br_blockcount);
   bp = xfs_trans_get_buf(tp, mp->m_ddev_targp, d,
            BTOBB(byte_cnt), 0);
   if (!bp) {
    error = ENOMEM;
    goto error2;
   }
   if (pathlen < byte_cnt) {
    byte_cnt = pathlen;
   }
   pathlen -= byte_cnt;

   memcpy(XFS_BUF_PTR(bp), cur_chunk, byte_cnt);
   cur_chunk += byte_cnt;

   xfs_trans_log_buf(tp, bp, 0, byte_cnt - 1);
  }
 }




 error = xfs_dir_createname(tp, dp, link_name, ip->i_ino,
     &first_block, &free_list, resblks);
 if (error)
  goto error2;
 xfs_trans_ichgtime(tp, dp, XFS_ICHGTIME_MOD | XFS_ICHGTIME_CHG);
 xfs_trans_log_inode(tp, dp, XFS_ILOG_CORE);






 if (mp->m_flags & (XFS_MOUNT_WSYNC|XFS_MOUNT_DIRSYNC)) {
  xfs_trans_set_sync(tp);
 }

 error = xfs_bmap_finish(&tp, &free_list, &committed);
 if (error) {
  goto error2;
 }
 error = xfs_trans_commit(tp, XFS_TRANS_RELEASE_LOG_RES);
 xfs_qm_dqrele(udqp);
 xfs_qm_dqrele(gdqp);

 *ipp = ip;
 return 0;

 error2:
 IRELE(ip);
 error1:
 xfs_bmap_cancel(&free_list);
 cancel_flags |= XFS_TRANS_ABORT;
 error_return:
 xfs_trans_cancel(tp, cancel_flags);
 xfs_qm_dqrele(udqp);
 xfs_qm_dqrele(gdqp);

 if (unlock_dp_on_error)
  xfs_iunlock(dp, XFS_ILOCK_EXCL);
 std_return:
 return error;
}

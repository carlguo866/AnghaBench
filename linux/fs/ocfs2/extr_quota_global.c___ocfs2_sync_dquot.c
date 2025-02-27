
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ time64_t ;
struct super_block {TYPE_1__* s_op; } ;
struct ocfs2_mem_dqinfo {int dqi_gi; } ;
struct ocfs2_global_disk_dqblk {int dummy; } ;
struct TYPE_10__ {int type; } ;
struct TYPE_8__ {scalar_t__ dqb_curspace; scalar_t__ dqb_curinodes; scalar_t__ dqb_itime; scalar_t__ dqb_btime; scalar_t__ dqb_bsoftlimit; scalar_t__ dqb_isoftlimit; } ;
struct dquot {TYPE_5__ dq_id; int dq_dqb_lock; TYPE_2__ dq_dqb; int dq_flags; int dq_off; struct super_block* dq_sb; } ;
typedef scalar_t__ s64 ;
struct TYPE_11__ {scalar_t__ dq_origspace; scalar_t__ dq_originodes; int dq_use_count; } ;
struct TYPE_9__ {struct ocfs2_mem_dqinfo* dqi_priv; } ;
struct TYPE_7__ {int (* quota_read ) (struct super_block*,int,char*,int,int ) ;} ;


 int DQ_BLKS_B ;
 int DQ_INODES_B ;
 scalar_t__ DQ_LASTSET_B ;
 int EIO ;
 int ML_ERROR ;
 TYPE_6__* OCFS2_DQUOT (struct dquot*) ;
 scalar_t__ QIF_BLIMITS_B ;
 scalar_t__ QIF_BTIME_B ;
 scalar_t__ QIF_ILIMITS_B ;
 scalar_t__ QIF_INODES_B ;
 scalar_t__ QIF_ITIME_B ;
 scalar_t__ QIF_SPACE_B ;
 int __clear_bit (scalar_t__,int *) ;
 int __ocfs2_global_write_info (struct super_block*,int) ;
 int clear_bit (int ,int *) ;
 scalar_t__ from_kqid (int *,TYPE_5__) ;
 scalar_t__ info_dirty (TYPE_3__*) ;
 int init_user_ns ;
 void* min (scalar_t__,scalar_t__) ;
 int mlog (int ,char*,int,...) ;
 int mlog_errno (int) ;
 int ocfs2_global_disk2memdqb (struct dquot*,struct ocfs2_global_disk_dqblk*) ;
 int ocfs2_qinfo_lock (struct ocfs2_mem_dqinfo*,int) ;
 int ocfs2_qinfo_unlock (struct ocfs2_mem_dqinfo*,int) ;
 int qtree_release_dquot (int *,struct dquot*) ;
 int qtree_write_dquot (int *,struct dquot*) ;
 TYPE_3__* sb_dqinfo (struct super_block*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct super_block*,int,char*,int,int ) ;
 int test_bit (scalar_t__,int *) ;
 int trace_ocfs2_sync_dquot (scalar_t__,scalar_t__,long long,scalar_t__,long long) ;

int __ocfs2_sync_dquot(struct dquot *dquot, int freeing)
{
 int err, err2;
 struct super_block *sb = dquot->dq_sb;
 int type = dquot->dq_id.type;
 struct ocfs2_mem_dqinfo *info = sb_dqinfo(sb, type)->dqi_priv;
 struct ocfs2_global_disk_dqblk dqblk;
 s64 spacechange, inodechange;
 time64_t olditime, oldbtime;

 err = sb->s_op->quota_read(sb, type, (char *)&dqblk,
       sizeof(struct ocfs2_global_disk_dqblk),
       dquot->dq_off);
 if (err != sizeof(struct ocfs2_global_disk_dqblk)) {
  if (err >= 0) {
   mlog(ML_ERROR, "Short read from global quota file "
           "(%u read)\n", err);
   err = -EIO;
  }
  goto out;
 }




 spin_lock(&dquot->dq_dqb_lock);
 spacechange = dquot->dq_dqb.dqb_curspace -
     OCFS2_DQUOT(dquot)->dq_origspace;
 inodechange = dquot->dq_dqb.dqb_curinodes -
     OCFS2_DQUOT(dquot)->dq_originodes;
 olditime = dquot->dq_dqb.dqb_itime;
 oldbtime = dquot->dq_dqb.dqb_btime;
 ocfs2_global_disk2memdqb(dquot, &dqblk);
 trace_ocfs2_sync_dquot(from_kqid(&init_user_ns, dquot->dq_id),
          dquot->dq_dqb.dqb_curspace,
          (long long)spacechange,
          dquot->dq_dqb.dqb_curinodes,
          (long long)inodechange);
 if (!test_bit(DQ_LASTSET_B + QIF_SPACE_B, &dquot->dq_flags))
  dquot->dq_dqb.dqb_curspace += spacechange;
 if (!test_bit(DQ_LASTSET_B + QIF_INODES_B, &dquot->dq_flags))
  dquot->dq_dqb.dqb_curinodes += inodechange;

 if (dquot->dq_dqb.dqb_bsoftlimit &&
     dquot->dq_dqb.dqb_curspace > dquot->dq_dqb.dqb_bsoftlimit) {
  if (!test_bit(DQ_LASTSET_B + QIF_BTIME_B, &dquot->dq_flags) &&
      oldbtime > 0) {
   if (dquot->dq_dqb.dqb_btime > 0)
    dquot->dq_dqb.dqb_btime =
     min(dquot->dq_dqb.dqb_btime, oldbtime);
   else
    dquot->dq_dqb.dqb_btime = oldbtime;
  }
 } else {
  dquot->dq_dqb.dqb_btime = 0;
  clear_bit(DQ_BLKS_B, &dquot->dq_flags);
 }

 if (dquot->dq_dqb.dqb_isoftlimit &&
     dquot->dq_dqb.dqb_curinodes > dquot->dq_dqb.dqb_isoftlimit) {
  if (!test_bit(DQ_LASTSET_B + QIF_ITIME_B, &dquot->dq_flags) &&
      olditime > 0) {
   if (dquot->dq_dqb.dqb_itime > 0)
    dquot->dq_dqb.dqb_itime =
     min(dquot->dq_dqb.dqb_itime, olditime);
   else
    dquot->dq_dqb.dqb_itime = olditime;
  }
 } else {
  dquot->dq_dqb.dqb_itime = 0;
  clear_bit(DQ_INODES_B, &dquot->dq_flags);
 }

 __clear_bit(DQ_LASTSET_B + QIF_SPACE_B, &dquot->dq_flags);
 __clear_bit(DQ_LASTSET_B + QIF_INODES_B, &dquot->dq_flags);
 __clear_bit(DQ_LASTSET_B + QIF_BLIMITS_B, &dquot->dq_flags);
 __clear_bit(DQ_LASTSET_B + QIF_ILIMITS_B, &dquot->dq_flags);
 __clear_bit(DQ_LASTSET_B + QIF_BTIME_B, &dquot->dq_flags);
 __clear_bit(DQ_LASTSET_B + QIF_ITIME_B, &dquot->dq_flags);
 OCFS2_DQUOT(dquot)->dq_origspace = dquot->dq_dqb.dqb_curspace;
 OCFS2_DQUOT(dquot)->dq_originodes = dquot->dq_dqb.dqb_curinodes;
 spin_unlock(&dquot->dq_dqb_lock);
 err = ocfs2_qinfo_lock(info, freeing);
 if (err < 0) {
  mlog(ML_ERROR, "Failed to lock quota info, losing quota write"
          " (type=%d, id=%u)\n", dquot->dq_id.type,
          (unsigned)from_kqid(&init_user_ns, dquot->dq_id));
  goto out;
 }
 if (freeing)
  OCFS2_DQUOT(dquot)->dq_use_count--;
 err = qtree_write_dquot(&info->dqi_gi, dquot);
 if (err < 0)
  goto out_qlock;
 if (freeing && !OCFS2_DQUOT(dquot)->dq_use_count) {
  err = qtree_release_dquot(&info->dqi_gi, dquot);
  if (info_dirty(sb_dqinfo(sb, type))) {
   err2 = __ocfs2_global_write_info(sb, type);
   if (!err)
    err = err2;
  }
 }
out_qlock:
 ocfs2_qinfo_unlock(info, freeing);
out:
 if (err < 0)
  mlog_errno(err);
 return err;
}

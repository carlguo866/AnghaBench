
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ gh_gl; } ;
struct gfs2_trans {scalar_t__ tr_num_buf_new; scalar_t__ tr_num_databuf_new; scalar_t__ tr_num_buf_rm; scalar_t__ tr_num_databuf_rm; scalar_t__ tr_blocks; scalar_t__ tr_num_revoke; scalar_t__ tr_revokes; TYPE_2__ tr_t_gh; int tr_reserved; int tr_touched; } ;
struct gfs2_sbd {TYPE_1__* sd_vfs; } ;
typedef scalar_t__ s64 ;
struct TYPE_7__ {struct gfs2_trans* journal_info; } ;
struct TYPE_5__ {int s_flags; } ;


 int BUG_ON (int) ;
 int MS_SYNCHRONOUS ;
 TYPE_4__* current ;
 scalar_t__ gfs2_assert_withdraw (struct gfs2_sbd*,int) ;
 int gfs2_glock_dq (TYPE_2__*) ;
 int gfs2_holder_uninit (TYPE_2__*) ;
 int gfs2_log_commit (struct gfs2_sbd*,struct gfs2_trans*) ;
 int gfs2_log_flush (struct gfs2_sbd*,int *) ;
 int gfs2_log_release (struct gfs2_sbd*,int ) ;
 int gfs2_print_trans (struct gfs2_trans*) ;
 int kfree (struct gfs2_trans*) ;
 int sb_end_intwrite (TYPE_1__*) ;

void gfs2_trans_end(struct gfs2_sbd *sdp)
{
 struct gfs2_trans *tr = current->journal_info;
 s64 nbuf;
 BUG_ON(!tr);
 current->journal_info = ((void*)0);

 if (!tr->tr_touched) {
  gfs2_log_release(sdp, tr->tr_reserved);
  if (tr->tr_t_gh.gh_gl) {
   gfs2_glock_dq(&tr->tr_t_gh);
   gfs2_holder_uninit(&tr->tr_t_gh);
   kfree(tr);
  }
  sb_end_intwrite(sdp->sd_vfs);
  return;
 }

 nbuf = tr->tr_num_buf_new + tr->tr_num_databuf_new;
 nbuf -= tr->tr_num_buf_rm;
 nbuf -= tr->tr_num_databuf_rm;

 if (gfs2_assert_withdraw(sdp, (nbuf <= tr->tr_blocks) &&
           (tr->tr_num_revoke <= tr->tr_revokes)))
  gfs2_print_trans(tr);

 gfs2_log_commit(sdp, tr);
 if (tr->tr_t_gh.gh_gl) {
  gfs2_glock_dq(&tr->tr_t_gh);
  gfs2_holder_uninit(&tr->tr_t_gh);
  kfree(tr);
 }

 if (sdp->sd_vfs->s_flags & MS_SYNCHRONOUS)
  gfs2_log_flush(sdp, ((void*)0));
 sb_end_intwrite(sdp->sd_vfs);
}

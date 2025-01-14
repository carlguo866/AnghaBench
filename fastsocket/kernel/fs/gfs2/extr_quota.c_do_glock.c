
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gfs2_sbd {int sd_quota_inode; } ;
struct gfs2_quota_lvb {scalar_t__ qb_magic; } ;
struct gfs2_quota_data {TYPE_1__* qd_gl; struct gfs2_quota_lvb qd_qb; } ;
struct gfs2_inode {TYPE_1__* i_gl; } ;
struct gfs2_holder {int dummy; } ;
struct TYPE_2__ {scalar_t__ gl_lvb; struct gfs2_sbd* gl_sbd; } ;


 struct gfs2_inode* GFS2_I (int ) ;
 int GFS2_MAGIC ;
 int GL_NOCACHE ;
 int LM_ST_EXCLUSIVE ;
 int LM_ST_SHARED ;
 scalar_t__ cpu_to_be32 (int ) ;
 int gfs2_glock_dq_uninit (struct gfs2_holder*) ;
 int gfs2_glock_nq_init (TYPE_1__*,int ,int ,struct gfs2_holder*) ;
 int update_qd (struct gfs2_sbd*,struct gfs2_quota_data*) ;

__attribute__((used)) static int do_glock(struct gfs2_quota_data *qd, int force_refresh,
      struct gfs2_holder *q_gh)
{
 struct gfs2_sbd *sdp = qd->qd_gl->gl_sbd;
 struct gfs2_inode *ip = GFS2_I(sdp->sd_quota_inode);
 struct gfs2_holder i_gh;
 int error;

restart:
 error = gfs2_glock_nq_init(qd->qd_gl, LM_ST_SHARED, 0, q_gh);
 if (error)
  return error;

 qd->qd_qb = *(struct gfs2_quota_lvb *)qd->qd_gl->gl_lvb;

 if (force_refresh || qd->qd_qb.qb_magic != cpu_to_be32(GFS2_MAGIC)) {
  gfs2_glock_dq_uninit(q_gh);
  error = gfs2_glock_nq_init(qd->qd_gl, LM_ST_EXCLUSIVE,
        GL_NOCACHE, q_gh);
  if (error)
   return error;

  error = gfs2_glock_nq_init(ip->i_gl, LM_ST_SHARED, 0, &i_gh);
  if (error)
   goto fail;

  error = update_qd(sdp, qd);
  if (error)
   goto fail_gunlock;

  gfs2_glock_dq_uninit(&i_gh);
  gfs2_glock_dq_uninit(q_gh);
  force_refresh = 0;
  goto restart;
 }

 return 0;

fail_gunlock:
 gfs2_glock_dq_uninit(&i_gh);
fail:
 gfs2_glock_dq_uninit(q_gh);
 return error;
}

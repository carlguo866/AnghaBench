
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct gfs2_sbd {int sd_quota_inode; } ;
struct gfs2_quota_data {int qd_flags; int qd_change_sync; TYPE_2__* qd_gl; } ;
struct gfs2_quota {int dummy; } ;
struct TYPE_4__ {int i_mutex; } ;
struct gfs2_inode {TYPE_2__* i_gl; TYPE_1__ i_inode; } ;
struct gfs2_holder {int dummy; } ;
struct gfs2_alloc_parms {unsigned int target; int aflags; } ;
typedef int loff_t ;
struct TYPE_5__ {struct gfs2_sbd* gl_sbd; } ;


 int ENOMEM ;
 int GFP_NOFS ;
 struct gfs2_inode* GFS2_I (int ) ;
 int GL_NOCACHE ;
 int I_MUTEX_QUOTA ;
 int LM_ST_EXCLUSIVE ;
 int QDF_REFRESH ;
 unsigned int RES_DINODE ;
 scalar_t__ RES_STATFS ;
 int do_qc (struct gfs2_quota_data*,int ) ;
 int gfs2_adjust_quota (struct gfs2_inode*,int ,int ,struct gfs2_quota_data*,int *) ;
 int gfs2_glock_dq_uninit (struct gfs2_holder*) ;
 int gfs2_glock_nq_init (TYPE_2__*,int ,int ,struct gfs2_holder*) ;
 int gfs2_inplace_release (struct gfs2_inode*) ;
 int gfs2_inplace_reserve (struct gfs2_inode*,struct gfs2_alloc_parms*) ;
 int gfs2_log_flush (struct gfs2_sbd*,TYPE_2__*) ;
 scalar_t__ gfs2_rg_blocks (struct gfs2_inode*,unsigned int) ;
 int gfs2_rs_alloc (struct gfs2_inode*) ;
 int gfs2_trans_begin (struct gfs2_sbd*,unsigned int,int ) ;
 int gfs2_trans_end (struct gfs2_sbd*) ;
 int gfs2_write_alloc_required (struct gfs2_inode*,int ,int,int*) ;
 int gfs2_write_calc_reserv (struct gfs2_inode*,int,unsigned int*,unsigned int*) ;
 struct gfs2_holder* kcalloc (unsigned int,int,int ) ;
 int kfree (struct gfs2_holder*) ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 int qd2offset (struct gfs2_quota_data*) ;
 int set_bit (int ,int *) ;
 int sort (struct gfs2_quota_data**,unsigned int,int,int ,int *) ;
 int sort_qd ;

__attribute__((used)) static int do_sync(unsigned int num_qd, struct gfs2_quota_data **qda)
{
 struct gfs2_sbd *sdp = (*qda)->qd_gl->gl_sbd;
 struct gfs2_inode *ip = GFS2_I(sdp->sd_quota_inode);
 struct gfs2_alloc_parms ap = { .aflags = 0, };
 unsigned int data_blocks, ind_blocks;
 struct gfs2_holder *ghs, i_gh;
 unsigned int qx, x;
 struct gfs2_quota_data *qd;
 unsigned reserved;
 loff_t offset;
 unsigned int nalloc = 0, blocks;
 int error;

 error = gfs2_rs_alloc(ip);
 if (error)
  return error;

 gfs2_write_calc_reserv(ip, sizeof(struct gfs2_quota),
         &data_blocks, &ind_blocks);

 ghs = kcalloc(num_qd, sizeof(struct gfs2_holder), GFP_NOFS);
 if (!ghs)
  return -ENOMEM;

 sort(qda, num_qd, sizeof(struct gfs2_quota_data *), sort_qd, ((void*)0));
 mutex_lock_nested(&ip->i_inode.i_mutex, I_MUTEX_QUOTA);
 for (qx = 0; qx < num_qd; qx++) {
  error = gfs2_glock_nq_init(qda[qx]->qd_gl, LM_ST_EXCLUSIVE,
        GL_NOCACHE, &ghs[qx]);
  if (error)
   goto out;
 }

 error = gfs2_glock_nq_init(ip->i_gl, LM_ST_EXCLUSIVE, 0, &i_gh);
 if (error)
  goto out;

 for (x = 0; x < num_qd; x++) {
  int alloc_required;

  offset = qd2offset(qda[x]);
  error = gfs2_write_alloc_required(ip, offset,
        sizeof(struct gfs2_quota),
        &alloc_required);
  if (error)
   goto out_alloc;
  if (alloc_required)
   nalloc++;
 }
 blocks = num_qd * data_blocks + RES_DINODE + num_qd + 3;

 reserved = 1 + (nalloc * (data_blocks + ind_blocks));
 ap.target = reserved;
 error = gfs2_inplace_reserve(ip, &ap);
 if (error)
  goto out_alloc;

 if (nalloc)
  blocks += gfs2_rg_blocks(ip, reserved) + nalloc * ind_blocks + RES_STATFS;

 error = gfs2_trans_begin(sdp, blocks, 0);
 if (error)
  goto out_ipres;

 for (x = 0; x < num_qd; x++) {
  qd = qda[x];
  offset = qd2offset(qd);
  error = gfs2_adjust_quota(ip, offset, qd->qd_change_sync, qd, ((void*)0));
  if (error)
   goto out_end_trans;

  do_qc(qd, -qd->qd_change_sync);
  set_bit(QDF_REFRESH, &qd->qd_flags);
 }

 error = 0;

out_end_trans:
 gfs2_trans_end(sdp);
out_ipres:
 gfs2_inplace_release(ip);
out_alloc:
 gfs2_glock_dq_uninit(&i_gh);
out:
 while (qx--)
  gfs2_glock_dq_uninit(&ghs[qx]);
 mutex_unlock(&ip->i_inode.i_mutex);
 kfree(ghs);
 gfs2_log_flush(ip->i_gl->gl_sbd, ip->i_gl);
 return error;
}

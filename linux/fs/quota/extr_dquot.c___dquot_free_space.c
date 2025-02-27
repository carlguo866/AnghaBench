
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_lock; } ;
struct dquot_warn {int w_type; } ;
struct dquot {int dq_dqb_lock; } ;
typedef int qsize_t ;


 int DQUOT_SPACE_RESERVE ;
 int MAXQUOTAS ;
 int QUOTA_NL_NOWARN ;
 int __inode_sub_bytes (struct inode*,int ) ;
 int dquot_active (struct inode*) ;
 int dquot_decr_space (struct dquot*,int ) ;
 int dquot_free_reserved_space (struct dquot*,int ) ;
 int dquot_srcu ;
 int flush_warnings (struct dquot_warn*) ;
 struct dquot** i_dquot (struct inode*) ;
 int info_bdq_free (struct dquot*,int ) ;
 int * inode_reserved_space (struct inode*) ;
 int inode_sub_bytes (struct inode*,int ) ;
 int mark_all_dquot_dirty (struct dquot**) ;
 int prepare_warning (struct dquot_warn*,struct dquot*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int srcu_read_lock (int *) ;
 int srcu_read_unlock (int *,int) ;

void __dquot_free_space(struct inode *inode, qsize_t number, int flags)
{
 unsigned int cnt;
 struct dquot_warn warn[MAXQUOTAS];
 struct dquot **dquots;
 int reserve = flags & DQUOT_SPACE_RESERVE, index;

 if (!dquot_active(inode)) {
  if (reserve) {
   spin_lock(&inode->i_lock);
   *inode_reserved_space(inode) -= number;
   spin_unlock(&inode->i_lock);
  } else {
   inode_sub_bytes(inode, number);
  }
  return;
 }

 dquots = i_dquot(inode);
 index = srcu_read_lock(&dquot_srcu);
 spin_lock(&inode->i_lock);
 for (cnt = 0; cnt < MAXQUOTAS; cnt++) {
  int wtype;

  warn[cnt].w_type = QUOTA_NL_NOWARN;
  if (!dquots[cnt])
   continue;
  spin_lock(&dquots[cnt]->dq_dqb_lock);
  wtype = info_bdq_free(dquots[cnt], number);
  if (wtype != QUOTA_NL_NOWARN)
   prepare_warning(&warn[cnt], dquots[cnt], wtype);
  if (reserve)
   dquot_free_reserved_space(dquots[cnt], number);
  else
   dquot_decr_space(dquots[cnt], number);
  spin_unlock(&dquots[cnt]->dq_dqb_lock);
 }
 if (reserve)
  *inode_reserved_space(inode) -= number;
 else
  __inode_sub_bytes(inode, number);
 spin_unlock(&inode->i_lock);

 if (reserve)
  goto out_unlock;
 mark_all_dquot_dirty(dquots);
out_unlock:
 srcu_read_unlock(&dquot_srcu, index);
 flush_warnings(warn);
}

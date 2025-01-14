
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_lock; } ;
struct dquot_warn {int w_type; } ;
struct dquot {int dq_dqb_lock; } ;


 int MAXQUOTAS ;
 int QUOTA_NL_NOWARN ;
 int dquot_active (struct inode*) ;
 int dquot_add_inodes (struct dquot* const,int,struct dquot_warn*) ;
 int dquot_decr_inodes (struct dquot* const,int) ;
 int dquot_srcu ;
 int flush_warnings (struct dquot_warn*) ;
 struct dquot** i_dquot (struct inode*) ;
 int mark_all_dquot_dirty (struct dquot* const*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int srcu_read_lock (int *) ;
 int srcu_read_unlock (int *,int) ;

int dquot_alloc_inode(struct inode *inode)
{
 int cnt, ret = 0, index;
 struct dquot_warn warn[MAXQUOTAS];
 struct dquot * const *dquots;

 if (!dquot_active(inode))
  return 0;
 for (cnt = 0; cnt < MAXQUOTAS; cnt++)
  warn[cnt].w_type = QUOTA_NL_NOWARN;

 dquots = i_dquot(inode);
 index = srcu_read_lock(&dquot_srcu);
 spin_lock(&inode->i_lock);
 for (cnt = 0; cnt < MAXQUOTAS; cnt++) {
  if (!dquots[cnt])
   continue;
  ret = dquot_add_inodes(dquots[cnt], 1, &warn[cnt]);
  if (ret) {
   for (cnt--; cnt >= 0; cnt--) {
    if (!dquots[cnt])
     continue;

    spin_lock(&dquots[cnt]->dq_dqb_lock);
    dquot_decr_inodes(dquots[cnt], 1);
    spin_unlock(&dquots[cnt]->dq_dqb_lock);
   }
   goto warn_put_all;
  }
 }

warn_put_all:
 spin_unlock(&inode->i_lock);
 if (ret == 0)
  mark_all_dquot_dirty(dquots);
 srcu_read_unlock(&dquot_srcu, index);
 flush_warnings(warn);
 return ret;
}

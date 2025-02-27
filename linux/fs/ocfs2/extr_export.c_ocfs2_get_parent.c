
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct inode {int i_sb; } ;
struct TYPE_3__ {int name; int len; } ;
struct dentry {TYPE_1__ d_name; } ;
struct TYPE_4__ {scalar_t__ ip_blkno; } ;


 int EINVAL ;
 int ENOENT ;
 struct dentry* ERR_PTR (int) ;
 int ESTALE ;
 int ML_ERROR ;
 TYPE_2__* OCFS2_I (struct inode*) ;
 int OCFS2_SB (int ) ;
 struct inode* d_inode (struct dentry*) ;
 struct dentry* d_obtain_alias (int ) ;
 int mlog (int ,char*,int) ;
 int mlog_errno (int) ;
 int ocfs2_iget (int ,int ,int ,int ) ;
 int ocfs2_inode_lock (struct inode*,int *,int ) ;
 int ocfs2_inode_unlock (struct inode*,int ) ;
 int ocfs2_lookup_ino_from_name (struct inode*,char*,int,int *) ;
 int ocfs2_nfs_sync_lock (int ,int) ;
 int ocfs2_nfs_sync_unlock (int ,int) ;
 int ocfs2_test_inode_bit (int ,int ,int*) ;
 int trace_ocfs2_get_dentry_test_bit (int,int) ;
 int trace_ocfs2_get_parent (struct dentry*,int ,int ,unsigned long long) ;
 int trace_ocfs2_get_parent_end (struct dentry*) ;

__attribute__((used)) static struct dentry *ocfs2_get_parent(struct dentry *child)
{
 int status;
 u64 blkno;
 struct dentry *parent;
 struct inode *dir = d_inode(child);
 int set;

 trace_ocfs2_get_parent(child, child->d_name.len, child->d_name.name,
          (unsigned long long)OCFS2_I(dir)->ip_blkno);

 status = ocfs2_nfs_sync_lock(OCFS2_SB(dir->i_sb), 1);
 if (status < 0) {
  mlog(ML_ERROR, "getting nfs sync lock(EX) failed %d\n", status);
  parent = ERR_PTR(status);
  goto bail;
 }

 status = ocfs2_inode_lock(dir, ((void*)0), 0);
 if (status < 0) {
  if (status != -ENOENT)
   mlog_errno(status);
  parent = ERR_PTR(status);
  goto unlock_nfs_sync;
 }

 status = ocfs2_lookup_ino_from_name(dir, "..", 2, &blkno);
 if (status < 0) {
  parent = ERR_PTR(-ENOENT);
  goto bail_unlock;
 }

 status = ocfs2_test_inode_bit(OCFS2_SB(dir->i_sb), blkno, &set);
 if (status < 0) {
  if (status == -EINVAL) {
   status = -ESTALE;
  } else
   mlog(ML_ERROR, "test inode bit failed %d\n", status);
  parent = ERR_PTR(status);
  goto bail_unlock;
 }

 trace_ocfs2_get_dentry_test_bit(status, set);
 if (!set) {
  status = -ESTALE;
  parent = ERR_PTR(status);
  goto bail_unlock;
 }

 parent = d_obtain_alias(ocfs2_iget(OCFS2_SB(dir->i_sb), blkno, 0, 0));

bail_unlock:
 ocfs2_inode_unlock(dir, 0);

unlock_nfs_sync:
 ocfs2_nfs_sync_unlock(OCFS2_SB(dir->i_sb), 1);

bail:
 trace_ocfs2_get_parent_end(parent);

 return parent;
}

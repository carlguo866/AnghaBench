
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_2__ {int ip_flags; int ip_lock; scalar_t__ ip_blkno; } ;


 int ENOENT ;
 TYPE_1__* OCFS2_I (struct inode*) ;
 int OCFS2_INODE_DELETED ;
 int mlog (int ,char*) ;
 int mlog_entry (char*,struct inode*,unsigned long long) ;
 int mlog_errno (int) ;
 int mlog_exit (int) ;
 int ocfs2_inode_lock (struct inode*,int *,int ) ;
 int ocfs2_inode_unlock (struct inode*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int ocfs2_inode_revalidate(struct dentry *dentry)
{
 struct inode *inode = dentry->d_inode;
 int status = 0;

 mlog_entry("(inode = 0x%p, ino = %llu)\n", inode,
     inode ? (unsigned long long)OCFS2_I(inode)->ip_blkno : 0ULL);

 if (!inode) {
  mlog(0, "eep, no inode!\n");
  status = -ENOENT;
  goto bail;
 }

 spin_lock(&OCFS2_I(inode)->ip_lock);
 if (OCFS2_I(inode)->ip_flags & OCFS2_INODE_DELETED) {
  spin_unlock(&OCFS2_I(inode)->ip_lock);
  mlog(0, "inode deleted!\n");
  status = -ENOENT;
  goto bail;
 }
 spin_unlock(&OCFS2_I(inode)->ip_lock);



 status = ocfs2_inode_lock(inode, ((void*)0), 0);
 if (status < 0) {
  if (status != -ENOENT)
   mlog_errno(status);
  goto bail;
 }
 ocfs2_inode_unlock(inode, 0);
bail:
 mlog_exit(status);

 return status;
}

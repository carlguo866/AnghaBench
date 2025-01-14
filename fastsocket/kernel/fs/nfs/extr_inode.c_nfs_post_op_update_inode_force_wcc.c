
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_fattr {int valid; int pre_size; int pre_mtime; int pre_ctime; int pre_change_attr; } ;
struct inode {int i_lock; int i_mtime; int i_ctime; } ;
struct TYPE_2__ {int change_attr; } ;


 int NFS_ATTR_FATTR ;
 int NFS_ATTR_FATTR_CHANGE ;
 int NFS_ATTR_FATTR_CTIME ;
 int NFS_ATTR_FATTR_MTIME ;
 int NFS_ATTR_FATTR_PRECHANGE ;
 int NFS_ATTR_FATTR_PRECTIME ;
 int NFS_ATTR_FATTR_PREMTIME ;
 int NFS_ATTR_FATTR_PRESIZE ;
 int NFS_ATTR_FATTR_SIZE ;
 TYPE_1__* NFS_I (struct inode*) ;
 int i_size_read (struct inode*) ;
 int memcpy (int *,int *,int) ;
 int nfs_inode_attrs_need_update (struct inode*,struct nfs_fattr*) ;
 int nfs_post_op_update_inode_locked (struct inode*,struct nfs_fattr*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int nfs_post_op_update_inode_force_wcc(struct inode *inode, struct nfs_fattr *fattr)
{
 int status;

 spin_lock(&inode->i_lock);

 if ((fattr->valid & NFS_ATTR_FATTR) == 0 ||
   !nfs_inode_attrs_need_update(inode, fattr)) {
  fattr->valid &= ~(NFS_ATTR_FATTR_PRECHANGE
    | NFS_ATTR_FATTR_PRESIZE
    | NFS_ATTR_FATTR_PREMTIME
    | NFS_ATTR_FATTR_PRECTIME);
  goto out_noforce;
 }
 if ((fattr->valid & NFS_ATTR_FATTR_CHANGE) != 0 &&
   (fattr->valid & NFS_ATTR_FATTR_PRECHANGE) == 0) {
  fattr->pre_change_attr = NFS_I(inode)->change_attr;
  fattr->valid |= NFS_ATTR_FATTR_PRECHANGE;
 }
 if ((fattr->valid & NFS_ATTR_FATTR_CTIME) != 0 &&
   (fattr->valid & NFS_ATTR_FATTR_PRECTIME) == 0) {
  memcpy(&fattr->pre_ctime, &inode->i_ctime, sizeof(fattr->pre_ctime));
  fattr->valid |= NFS_ATTR_FATTR_PRECTIME;
 }
 if ((fattr->valid & NFS_ATTR_FATTR_MTIME) != 0 &&
   (fattr->valid & NFS_ATTR_FATTR_PREMTIME) == 0) {
  memcpy(&fattr->pre_mtime, &inode->i_mtime, sizeof(fattr->pre_mtime));
  fattr->valid |= NFS_ATTR_FATTR_PREMTIME;
 }
 if ((fattr->valid & NFS_ATTR_FATTR_SIZE) != 0 &&
   (fattr->valid & NFS_ATTR_FATTR_PRESIZE) == 0) {
  fattr->pre_size = i_size_read(inode);
  fattr->valid |= NFS_ATTR_FATTR_PRESIZE;
 }
out_noforce:
 status = nfs_post_op_update_inode_locked(inode, fattr);
 spin_unlock(&inode->i_lock);
 return status;
}

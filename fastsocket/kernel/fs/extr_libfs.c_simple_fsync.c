
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_state; int i_mapping; } ;
struct file {int dummy; } ;
struct dentry {struct inode* d_inode; } ;


 int I_DIRTY ;
 int I_DIRTY_DATASYNC ;
 int sync_inode_metadata (struct inode*,int) ;
 int sync_mapping_buffers (int ) ;

int simple_fsync(struct file *file, struct dentry *dentry, int datasync)
{
 struct inode *inode = dentry->d_inode;
 int err;
 int ret;

 ret = sync_mapping_buffers(inode->i_mapping);
 if (!(inode->i_state & I_DIRTY))
  return ret;
 if (datasync && !(inode->i_state & I_DIRTY_DATASYNC))
  return ret;

 err = sync_inode_metadata(inode, 1);
 if (ret == 0)
  ret = err;
 return ret;
}

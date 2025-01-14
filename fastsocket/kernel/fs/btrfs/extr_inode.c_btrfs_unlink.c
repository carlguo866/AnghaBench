
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {scalar_t__ i_nlink; } ;
struct TYPE_3__ {int len; int name; } ;
struct dentry {TYPE_1__ d_name; struct inode* d_inode; } ;
struct btrfs_trans_handle {unsigned long blocks_used; } ;
struct btrfs_root {int dummy; } ;
struct TYPE_4__ {struct btrfs_root* root; } ;


 TYPE_2__* BTRFS_I (struct inode*) ;
 scalar_t__ IS_ERR (struct btrfs_trans_handle*) ;
 int PTR_ERR (struct btrfs_trans_handle*) ;
 int __unlink_end_trans (struct btrfs_trans_handle*,struct btrfs_root*) ;
 struct btrfs_trans_handle* __unlink_start_trans (struct inode*,struct dentry*) ;
 int btrfs_btree_balance_dirty (struct btrfs_root*,unsigned long) ;
 int btrfs_orphan_add (struct btrfs_trans_handle*,struct inode*) ;
 int btrfs_record_unlink_dir (struct btrfs_trans_handle*,struct inode*,struct inode*,int ) ;
 int btrfs_unlink_inode (struct btrfs_trans_handle*,struct btrfs_root*,struct inode*,struct inode*,int ,int ) ;

__attribute__((used)) static int btrfs_unlink(struct inode *dir, struct dentry *dentry)
{
 struct btrfs_root *root = BTRFS_I(dir)->root;
 struct btrfs_trans_handle *trans;
 struct inode *inode = dentry->d_inode;
 int ret;
 unsigned long nr = 0;

 trans = __unlink_start_trans(dir, dentry);
 if (IS_ERR(trans))
  return PTR_ERR(trans);

 btrfs_record_unlink_dir(trans, dir, dentry->d_inode, 0);

 ret = btrfs_unlink_inode(trans, root, dir, dentry->d_inode,
     dentry->d_name.name, dentry->d_name.len);
 if (ret)
  goto out;

 if (inode->i_nlink == 0) {
  ret = btrfs_orphan_add(trans, inode);
  if (ret)
   goto out;
 }

out:
 nr = trans->blocks_used;
 __unlink_end_trans(trans, root);
 btrfs_btree_balance_dirty(root, nr);
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct super_block {int dummy; } ;
struct inode {int i_ino; int i_nlink; int i_count; struct super_block* i_sb; } ;
struct TYPE_4__ {int name; scalar_t__ len; } ;
struct dentry {void* d_fsdata; TYPE_1__ d_name; } ;
struct buffer_head {int b_blocknr; } ;
typedef int s32 ;
typedef void* __be32 ;
struct TYPE_6__ {void* key; void* ptype; } ;
struct TYPE_5__ {void* link_chain; void* original; void* parent; void* stype; int name; } ;


 TYPE_3__* AFFS_HEAD (struct buffer_head*) ;
 TYPE_2__* AFFS_TAIL (struct super_block*,struct buffer_head*) ;
 int EIO ;
 int ENOSPC ;


 int T_SHORT ;
 int affs_adjust_checksum (struct buffer_head*,scalar_t__) ;
 int affs_alloc_block (struct inode*,int) ;
 struct buffer_head* affs_bread (struct super_block*,int) ;
 int affs_brelse (struct buffer_head*) ;
 int affs_copy_name (int ,struct dentry*) ;
 int affs_fix_checksum (struct super_block*,struct buffer_head*) ;
 int affs_free_block (struct super_block*,int) ;
 struct buffer_head* affs_getzeroblk (struct super_block*,int) ;
 int affs_insert_hash (struct inode*,struct buffer_head*) ;
 int affs_lock_dir (struct inode*) ;
 int affs_lock_link (struct inode*) ;
 int affs_unlock_dir (struct inode*) ;
 int affs_unlock_link (struct inode*) ;
 int atomic_inc (int *) ;
 scalar_t__ be32_to_cpu (void*) ;
 void* cpu_to_be32 (int) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int mark_buffer_dirty_inode (struct buffer_head*,struct inode*) ;
 int pr_debug (char*,int,int,int,int ,int) ;

int
affs_add_entry(struct inode *dir, struct inode *inode, struct dentry *dentry, s32 type)
{
 struct super_block *sb = dir->i_sb;
 struct buffer_head *inode_bh = ((void*)0);
 struct buffer_head *bh = ((void*)0);
 u32 block = 0;
 int retval;

 pr_debug("AFFS: add_entry(dir=%u, inode=%u, \"%*s\", type=%d)\n", (u32)dir->i_ino,
          (u32)inode->i_ino, (int)dentry->d_name.len, dentry->d_name.name, type);

 retval = -EIO;
 bh = affs_bread(sb, inode->i_ino);
 if (!bh)
  goto done;

 affs_lock_link(inode);
 switch (type) {
 case 128:
 case 129:
  retval = -ENOSPC;
  block = affs_alloc_block(dir, dir->i_ino);
  if (!block)
   goto err;
  retval = -EIO;
  inode_bh = bh;
  bh = affs_getzeroblk(sb, block);
  if (!bh)
   goto err;
  break;
 default:
  break;
 }

 AFFS_HEAD(bh)->ptype = cpu_to_be32(T_SHORT);
 AFFS_HEAD(bh)->key = cpu_to_be32(bh->b_blocknr);
 affs_copy_name(AFFS_TAIL(sb, bh)->name, dentry);
 AFFS_TAIL(sb, bh)->stype = cpu_to_be32(type);
 AFFS_TAIL(sb, bh)->parent = cpu_to_be32(dir->i_ino);

 if (inode_bh) {
  __be32 chain;
         chain = AFFS_TAIL(sb, inode_bh)->link_chain;
  AFFS_TAIL(sb, bh)->original = cpu_to_be32(inode->i_ino);
  AFFS_TAIL(sb, bh)->link_chain = chain;
  AFFS_TAIL(sb, inode_bh)->link_chain = cpu_to_be32(block);
  affs_adjust_checksum(inode_bh, block - be32_to_cpu(chain));
  mark_buffer_dirty_inode(inode_bh, inode);
  inode->i_nlink = 2;
  atomic_inc(&inode->i_count);
 }
 affs_fix_checksum(sb, bh);
 mark_buffer_dirty_inode(bh, inode);
 dentry->d_fsdata = (void *)(long)bh->b_blocknr;

 affs_lock_dir(dir);
 retval = affs_insert_hash(dir, bh);
 mark_buffer_dirty_inode(bh, inode);
 affs_unlock_dir(dir);
 affs_unlock_link(inode);

 d_instantiate(dentry, inode);
done:
 affs_brelse(inode_bh);
 affs_brelse(bh);
 return retval;
err:
 if (block)
  affs_free_block(sb, block);
 affs_unlock_link(inode);
 goto done;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct qnx4_inode_info {struct inode vfs_inode; } ;


 int GFP_KERNEL ;
 struct qnx4_inode_info* kmem_cache_alloc (int ,int ) ;
 int qnx4_inode_cachep ;

__attribute__((used)) static struct inode *qnx4_alloc_inode(struct super_block *sb)
{
 struct qnx4_inode_info *ei;
 ei = kmem_cache_alloc(qnx4_inode_cachep, GFP_KERNEL);
 if (!ei)
  return ((void*)0);
 return &ei->vfs_inode;
}

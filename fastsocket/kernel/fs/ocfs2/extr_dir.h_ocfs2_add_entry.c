
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct ocfs2_dir_lookup_result {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {int len; int name; } ;
struct dentry {TYPE_2__ d_name; TYPE_1__* d_parent; } ;
struct buffer_head {int dummy; } ;
typedef int handle_t ;
struct TYPE_3__ {int d_inode; } ;


 int __ocfs2_add_entry (int *,int ,int ,int ,struct inode*,int ,struct buffer_head*,struct ocfs2_dir_lookup_result*) ;

__attribute__((used)) static inline int ocfs2_add_entry(handle_t *handle,
      struct dentry *dentry,
      struct inode *inode, u64 blkno,
      struct buffer_head *parent_fe_bh,
      struct ocfs2_dir_lookup_result *lookup)
{
 return __ocfs2_add_entry(handle, dentry->d_parent->d_inode,
     dentry->d_name.name, dentry->d_name.len,
     inode, blkno, parent_fe_bh, lookup);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct inode {int dummy; } ;
struct ext4_inode_info {int i_datasync_tid; int i_sync_tid; } ;
struct TYPE_6__ {TYPE_1__* h_transaction; } ;
typedef TYPE_2__ handle_t ;
struct TYPE_5__ {int t_tid; } ;


 struct ext4_inode_info* EXT4_I (struct inode*) ;
 scalar_t__ ext4_handle_valid (TYPE_2__*) ;

__attribute__((used)) static inline void ext4_update_inode_fsync_trans(handle_t *handle,
       struct inode *inode,
       int datasync)
{
 struct ext4_inode_info *ei = EXT4_I(inode);

 if (ext4_handle_valid(handle)) {
  ei->i_sync_tid = handle->h_transaction->t_tid;
  if (datasync)
   ei->i_datasync_tid = handle->h_transaction->t_tid;
 }
}

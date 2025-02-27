
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_inode {int dummy; } ;
struct TYPE_2__ {int i_mutex; } ;


 TYPE_1__* VFS_I (struct xfs_inode*) ;
 int XFS_IOLOCK_EXCL ;
 int mutex_unlock (int *) ;
 int xfs_ilock_demote (struct xfs_inode*,int) ;

__attribute__((used)) static inline void
xfs_rw_ilock_demote(
 struct xfs_inode *ip,
 int type)
{
 xfs_ilock_demote(ip, type);
 if (type & XFS_IOLOCK_EXCL)
  mutex_unlock(&VFS_I(ip)->i_mutex);
}

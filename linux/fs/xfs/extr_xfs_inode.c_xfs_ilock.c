
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int i_lock; int i_mmaplock; } ;
typedef TYPE_1__ xfs_inode_t ;
typedef int uint ;
struct TYPE_7__ {int i_rwsem; } ;


 int ASSERT (int) ;
 TYPE_4__* VFS_I (TYPE_1__*) ;
 int XFS_ILOCK_DEP (int) ;
 int XFS_ILOCK_EXCL ;
 int XFS_ILOCK_SHARED ;
 int XFS_IOLOCK_DEP (int) ;
 int XFS_IOLOCK_EXCL ;
 int XFS_IOLOCK_SHARED ;
 int XFS_LOCK_MASK ;
 int XFS_LOCK_SUBCLASS_MASK ;
 int XFS_MMAPLOCK_DEP (int) ;
 int XFS_MMAPLOCK_EXCL ;
 int XFS_MMAPLOCK_SHARED ;
 int _RET_IP_ ;
 int down_read_nested (int *,int ) ;
 int down_write_nested (int *,int ) ;
 int mraccess_nested (int *,int ) ;
 int mrupdate_nested (int *,int ) ;
 int trace_xfs_ilock (TYPE_1__*,int,int ) ;

void
xfs_ilock(
 xfs_inode_t *ip,
 uint lock_flags)
{
 trace_xfs_ilock(ip, lock_flags, _RET_IP_);






 ASSERT((lock_flags & (XFS_IOLOCK_SHARED | XFS_IOLOCK_EXCL)) !=
        (XFS_IOLOCK_SHARED | XFS_IOLOCK_EXCL));
 ASSERT((lock_flags & (XFS_MMAPLOCK_SHARED | XFS_MMAPLOCK_EXCL)) !=
        (XFS_MMAPLOCK_SHARED | XFS_MMAPLOCK_EXCL));
 ASSERT((lock_flags & (XFS_ILOCK_SHARED | XFS_ILOCK_EXCL)) !=
        (XFS_ILOCK_SHARED | XFS_ILOCK_EXCL));
 ASSERT((lock_flags & ~(XFS_LOCK_MASK | XFS_LOCK_SUBCLASS_MASK)) == 0);

 if (lock_flags & XFS_IOLOCK_EXCL) {
  down_write_nested(&VFS_I(ip)->i_rwsem,
      XFS_IOLOCK_DEP(lock_flags));
 } else if (lock_flags & XFS_IOLOCK_SHARED) {
  down_read_nested(&VFS_I(ip)->i_rwsem,
     XFS_IOLOCK_DEP(lock_flags));
 }

 if (lock_flags & XFS_MMAPLOCK_EXCL)
  mrupdate_nested(&ip->i_mmaplock, XFS_MMAPLOCK_DEP(lock_flags));
 else if (lock_flags & XFS_MMAPLOCK_SHARED)
  mraccess_nested(&ip->i_mmaplock, XFS_MMAPLOCK_DEP(lock_flags));

 if (lock_flags & XFS_ILOCK_EXCL)
  mrupdate_nested(&ip->i_lock, XFS_ILOCK_DEP(lock_flags));
 else if (lock_flags & XFS_ILOCK_SHARED)
  mraccess_nested(&ip->i_lock, XFS_ILOCK_DEP(lock_flags));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ z_is_sa; int z_xattr_lock; } ;
typedef TYPE_1__ znode_t ;
struct TYPE_7__ {scalar_t__ z_use_sa; } ;
typedef TYPE_2__ zfsvfs_t ;
struct inode {int dummy; } ;
typedef int cred_t ;


 int ASSERT (int ) ;
 int ENODATA ;
 int ENOENT ;
 TYPE_1__* ITOZ (struct inode*) ;
 int RW_LOCK_HELD (int *) ;
 TYPE_2__* ZTOZSB (TYPE_1__*) ;
 int zpl_xattr_get_dir (struct inode*,char const*,void*,size_t,int *) ;
 int zpl_xattr_get_sa (struct inode*,char const*,void*,size_t) ;

__attribute__((used)) static int
__zpl_xattr_get(struct inode *ip, const char *name, void *value, size_t size,
    cred_t *cr)
{
 znode_t *zp = ITOZ(ip);
 zfsvfs_t *zfsvfs = ZTOZSB(zp);
 int error;

 ASSERT(RW_LOCK_HELD(&zp->z_xattr_lock));

 if (zfsvfs->z_use_sa && zp->z_is_sa) {
  error = zpl_xattr_get_sa(ip, name, value, size);
  if (error != -ENOENT)
   goto out;
 }

 error = zpl_xattr_get_dir(ip, name, value, size, cr);
out:
 if (error == -ENOENT)
  error = -ENODATA;

 return (error);
}

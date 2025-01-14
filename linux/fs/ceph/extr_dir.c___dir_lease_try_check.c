
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int d_parent; } ;
struct ceph_inode_info {int i_ceph_lock; int i_shared_gen; } ;
struct ceph_dentry_info {scalar_t__ lease_shared_gen; } ;


 int CEPH_CAP_FILE_SHARED ;
 int EBUSY ;
 scalar_t__ IS_ROOT (struct dentry const*) ;
 scalar_t__ __ceph_caps_issued_mask (struct ceph_inode_info*,int ,int ) ;
 scalar_t__ atomic_read (int *) ;
 struct ceph_dentry_info* ceph_dentry (struct dentry const*) ;
 struct ceph_inode_info* ceph_inode (struct inode*) ;
 struct inode* d_inode (int ) ;
 scalar_t__ spin_trylock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int __dir_lease_try_check(const struct dentry *dentry)
{
 struct ceph_dentry_info *di = ceph_dentry(dentry);
 struct inode *dir;
 struct ceph_inode_info *ci;
 int valid = 0;

 if (!di->lease_shared_gen)
  return 0;
 if (IS_ROOT(dentry))
  return 0;

 dir = d_inode(dentry->d_parent);
 ci = ceph_inode(dir);

 if (spin_trylock(&ci->i_ceph_lock)) {
  if (atomic_read(&ci->i_shared_gen) == di->lease_shared_gen &&
      __ceph_caps_issued_mask(ci, CEPH_CAP_FILE_SHARED, 0))
   valid = 1;
  spin_unlock(&ci->i_ceph_lock);
 } else {
  valid = -EBUSY;
 }

 if (!valid)
  di->lease_shared_gen = 0;
 return valid;
}

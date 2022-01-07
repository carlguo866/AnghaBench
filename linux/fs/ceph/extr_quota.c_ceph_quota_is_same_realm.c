
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct ceph_snap_realm {int dummy; } ;
struct ceph_mds_client {int snap_rwsem; } ;
struct TYPE_2__ {struct ceph_mds_client* mdsc; } ;


 int EAGAIN ;
 int PTR_ERR (struct ceph_snap_realm*) ;
 TYPE_1__* ceph_inode_to_client (struct inode*) ;
 int ceph_put_snap_realm (struct ceph_mds_client*,struct ceph_snap_realm*) ;
 int down_read (int *) ;
 struct ceph_snap_realm* get_quota_realm (struct ceph_mds_client*,struct inode*,int) ;
 int up_read (int *) ;

bool ceph_quota_is_same_realm(struct inode *old, struct inode *new)
{
 struct ceph_mds_client *mdsc = ceph_inode_to_client(old)->mdsc;
 struct ceph_snap_realm *old_realm, *new_realm;
 bool is_same;

restart:






 down_read(&mdsc->snap_rwsem);
 old_realm = get_quota_realm(mdsc, old, 1);
 new_realm = get_quota_realm(mdsc, new, 0);
 if (PTR_ERR(new_realm) == -EAGAIN) {
  up_read(&mdsc->snap_rwsem);
  if (old_realm)
   ceph_put_snap_realm(mdsc, old_realm);
  goto restart;
 }
 is_same = (old_realm == new_realm);
 up_read(&mdsc->snap_rwsem);

 if (old_realm)
  ceph_put_snap_realm(mdsc, old_realm);
 if (new_realm)
  ceph_put_snap_realm(mdsc, new_realm);

 return is_same;
}

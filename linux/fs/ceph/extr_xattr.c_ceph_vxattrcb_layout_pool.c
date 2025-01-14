
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ceph_osd_client {int lock; int osdmap; } ;
struct TYPE_4__ {int pool_id; } ;
struct TYPE_5__ {int i_sb; } ;
struct ceph_inode_info {TYPE_1__ i_layout; TYPE_2__ vfs_inode; } ;
struct ceph_fs_client {TYPE_3__* client; } ;
typedef size_t ssize_t ;
typedef int s64 ;
struct TYPE_6__ {struct ceph_osd_client osdc; } ;


 size_t ceph_fmt_xattr (char*,size_t,char*,int ) ;
 char* ceph_pg_pool_name_by_id (int ,int ) ;
 struct ceph_fs_client* ceph_sb_to_client (int ) ;
 int down_read (int *) ;
 int memcpy (char*,char const*,size_t) ;
 size_t strlen (char const*) ;
 int up_read (int *) ;

__attribute__((used)) static ssize_t ceph_vxattrcb_layout_pool(struct ceph_inode_info *ci,
      char *val, size_t size)
{
 ssize_t ret;
 struct ceph_fs_client *fsc = ceph_sb_to_client(ci->vfs_inode.i_sb);
 struct ceph_osd_client *osdc = &fsc->client->osdc;
 s64 pool = ci->i_layout.pool_id;
 const char *pool_name;

 down_read(&osdc->lock);
 pool_name = ceph_pg_pool_name_by_id(osdc->osdmap, pool);
 if (pool_name) {
  ret = strlen(pool_name);
  if (ret <= size)
   memcpy(val, pool_name, ret);
 } else {
  ret = ceph_fmt_xattr(val, size, "%lld", pool);
 }
 up_read(&osdc->lock);
 return ret;
}

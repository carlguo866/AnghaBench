
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t z_allocsize; size_t z_size; int z_acldata; int z_allocdata; } ;
typedef TYPE_1__ zfs_acl_node_t ;


 int KM_SLEEP ;
 int kmem_alloc (size_t,int ) ;
 TYPE_1__* kmem_zalloc (int,int ) ;

zfs_acl_node_t *
zfs_acl_node_alloc(size_t bytes)
{
 zfs_acl_node_t *aclnode;

 aclnode = kmem_zalloc(sizeof (zfs_acl_node_t), KM_SLEEP);
 if (bytes) {
  aclnode->z_acldata = kmem_alloc(bytes, KM_SLEEP);
  aclnode->z_allocdata = aclnode->z_acldata;
  aclnode->z_allocsize = bytes;
  aclnode->z_size = bytes;
 }

 return (aclnode);
}

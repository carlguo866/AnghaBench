
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vdev_t ;
typedef int spa_t ;


 int FM_RESOURCE_REMOVED ;
 int FM_RSRC_CLASS ;
 int zfs_post_common (int *,int *,int ,int ,int *) ;

void
zfs_post_remove(spa_t *spa, vdev_t *vd)
{
 zfs_post_common(spa, vd, FM_RSRC_CLASS, FM_RESOURCE_REMOVED, ((void*)0));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_cmd_t ;
typedef int nvlist_t ;
typedef int cred_t ;


 int zfs_secpolicy_recv (int *,int *,int *) ;

__attribute__((used)) static int
zfs_secpolicy_recv_new(zfs_cmd_t *zc, nvlist_t *innvl, cred_t *cr)
{
 return (zfs_secpolicy_recv(zc, innvl, cr));
}

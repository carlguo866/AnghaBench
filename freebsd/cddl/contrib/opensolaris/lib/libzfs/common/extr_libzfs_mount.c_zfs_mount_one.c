
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zfs_handle_t ;
struct TYPE_2__ {int ms_mntstatus; int ms_mntflags; int ms_mntopts; } ;
typedef TYPE_1__ mount_state_t ;


 scalar_t__ zfs_mount (int *,int ,int ) ;

__attribute__((used)) static int
zfs_mount_one(zfs_handle_t *zhp, void *arg)
{
 mount_state_t *ms = arg;
 int ret = 0;

 if (zfs_mount(zhp, ms->ms_mntopts, ms->ms_mntflags) != 0)
  ret = ms->ms_mntstatus = -1;
 return (ret);
}

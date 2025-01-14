
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int zfs_hdl; } ;
typedef TYPE_1__ zfs_handle_t ;
struct TYPE_11__ {char* member_0; } ;
typedef TYPE_2__ zfs_cmd_t ;


 scalar_t__ get_stats_ioctl (TYPE_1__*,TYPE_2__*) ;
 scalar_t__ put_stats_zhdl (TYPE_1__*,TYPE_2__*) ;
 scalar_t__ zcmd_alloc_dst_nvlist (int ,TYPE_2__*,int ) ;
 int zcmd_free_nvlists (TYPE_2__*) ;

__attribute__((used)) static int
get_stats(zfs_handle_t *zhp)
{
 int rc = 0;
 zfs_cmd_t zc = {"\0"};

 if (zcmd_alloc_dst_nvlist(zhp->zfs_hdl, &zc, 0) != 0)
  return (-1);
 if (get_stats_ioctl(zhp, &zc) != 0)
  rc = -1;
 else if (put_stats_zhdl(zhp, &zc) != 0)
  rc = -1;
 zcmd_free_nvlists(&zc);
 return (rc);
}

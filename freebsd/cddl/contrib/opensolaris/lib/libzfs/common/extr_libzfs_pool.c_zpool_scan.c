
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int zpool_config; int zpool_name; int * zpool_hdl; } ;
typedef TYPE_1__ zpool_handle_t ;
struct TYPE_7__ {int zc_name; scalar_t__ zc_flags; scalar_t__ zc_cookie; int member_0; } ;
typedef TYPE_2__ zfs_cmd_t ;
typedef int uint_t ;
typedef int uint64_t ;
typedef scalar_t__ pool_scrub_cmd_t ;
struct TYPE_8__ {scalar_t__ pss_func; } ;
typedef TYPE_3__ pool_scan_stat_t ;
typedef scalar_t__ pool_scan_func_t ;
typedef int nvlist_t ;
typedef int msg ;
typedef int libzfs_handle_t ;


 int EBUSY ;
 int ECANCELED ;
 int ENOENT ;
 int EZFS_NO_SCRUB ;
 int EZFS_RESILVERING ;
 int EZFS_SCRUBBING ;
 int EZFS_SCRUB_PAUSED ;
 scalar_t__ POOL_SCAN_NONE ;
 scalar_t__ POOL_SCAN_SCRUB ;
 scalar_t__ POOL_SCRUB_NORMAL ;
 scalar_t__ POOL_SCRUB_PAUSE ;
 int TEXT_DOMAIN ;
 int ZFS_IOC_POOL_SCAN ;
 int ZPOOL_CONFIG_SCAN_STATS ;
 int ZPOOL_CONFIG_VDEV_TREE ;
 int assert (int) ;
 char* dgettext (int ,char*) ;
 int errno ;
 scalar_t__ nvlist_lookup_nvlist (int ,int ,int **) ;
 int nvlist_lookup_uint64_array (int *,int ,int **,int *) ;
 int snprintf (char*,int,char*,int ) ;
 int strlcpy (int ,int ,int) ;
 int verify (int) ;
 int zfs_error (int *,int ,char*) ;
 scalar_t__ zfs_ioctl (int *,int ,TYPE_2__*) ;
 int zpool_standard_error (int *,int,char*) ;

int
zpool_scan(zpool_handle_t *zhp, pool_scan_func_t func, pool_scrub_cmd_t cmd)
{
 zfs_cmd_t zc = { 0 };
 char msg[1024];
 int err;
 libzfs_handle_t *hdl = zhp->zpool_hdl;

 (void) strlcpy(zc.zc_name, zhp->zpool_name, sizeof (zc.zc_name));
 zc.zc_cookie = func;
 zc.zc_flags = cmd;

 if (zfs_ioctl(hdl, ZFS_IOC_POOL_SCAN, &zc) == 0)
  return (0);

 err = errno;


 if (err == ECANCELED && func == POOL_SCAN_SCRUB &&
     cmd == POOL_SCRUB_NORMAL)
  return (0);

 if (err == ENOENT && func != POOL_SCAN_NONE && cmd == POOL_SCRUB_NORMAL)
  return (0);

 if (func == POOL_SCAN_SCRUB) {
  if (cmd == POOL_SCRUB_PAUSE) {
   (void) snprintf(msg, sizeof (msg), dgettext(TEXT_DOMAIN,
       "cannot pause scrubbing %s"), zc.zc_name);
  } else {
   assert(cmd == POOL_SCRUB_NORMAL);
   (void) snprintf(msg, sizeof (msg), dgettext(TEXT_DOMAIN,
       "cannot scrub %s"), zc.zc_name);
  }
 } else if (func == POOL_SCAN_NONE) {
  (void) snprintf(msg, sizeof (msg),
      dgettext(TEXT_DOMAIN, "cannot cancel scrubbing %s"),
      zc.zc_name);
 } else {
  assert(!"unexpected result");
 }

 if (err == EBUSY) {
  nvlist_t *nvroot;
  pool_scan_stat_t *ps = ((void*)0);
  uint_t psc;

  verify(nvlist_lookup_nvlist(zhp->zpool_config,
      ZPOOL_CONFIG_VDEV_TREE, &nvroot) == 0);
  (void) nvlist_lookup_uint64_array(nvroot,
      ZPOOL_CONFIG_SCAN_STATS, (uint64_t **)&ps, &psc);
  if (ps && ps->pss_func == POOL_SCAN_SCRUB) {
   if (cmd == POOL_SCRUB_PAUSE)
    return (zfs_error(hdl, EZFS_SCRUB_PAUSED, msg));
   else
    return (zfs_error(hdl, EZFS_SCRUBBING, msg));
  } else {
   return (zfs_error(hdl, EZFS_RESILVERING, msg));
  }
 } else if (err == ENOENT) {
  return (zfs_error(hdl, EZFS_NO_SCRUB, msg));
 } else {
  return (zpool_standard_error(hdl, err, msg));
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
struct timeval {long tv_sec; } ;
struct TYPE_9__ {int tv_sec; } ;
struct TYPE_8__ {int tv_sec; } ;
struct TYPE_10__ {int tv_sec; } ;
struct TYPE_11__ {TYPE_2__ dn_mtime; scalar_t__ dn_update; TYPE_1__ dn_atime; scalar_t__ dn_access; TYPE_3__ dn_ctime; scalar_t__ dn_change; } ;
typedef TYPE_4__ devnode_t ;


 int DEVFS_UPDATE_ACCESS ;
 int DEVFS_UPDATE_CHANGE ;
 int DEVFS_UPDATE_MOD ;
 scalar_t__ devfs_update_needed (long,int ) ;
 int dn_mark_for_delayed_times_update (TYPE_4__*,int) ;
 int dn_times_now (TYPE_4__*,int) ;
 int microtime (struct timeval*) ;

__attribute__((used)) static void
devfs_consider_time_update(devnode_t *dnp, uint32_t just_changed_flags)
{
 struct timeval now;
 long now_s;

 microtime(&now);
 now_s = now.tv_sec;

 if (dnp->dn_change || (just_changed_flags & DEVFS_UPDATE_CHANGE)) {
  if (devfs_update_needed(now_s, dnp->dn_ctime.tv_sec)) {
   dn_times_now(dnp, just_changed_flags);
   return;
  }
 }
 if (dnp->dn_access || (just_changed_flags & DEVFS_UPDATE_ACCESS)) {
  if (devfs_update_needed(now_s, dnp->dn_atime.tv_sec)) {
   dn_times_now(dnp, just_changed_flags);
   return;
  }
 }
 if (dnp->dn_update || (just_changed_flags & DEVFS_UPDATE_MOD)) {
  if (devfs_update_needed(now_s, dnp->dn_mtime.tv_sec)) {
   dn_times_now(dnp, just_changed_flags);
   return;
  }
 }


 dn_mark_for_delayed_times_update(dnp, just_changed_flags);

 return;
}

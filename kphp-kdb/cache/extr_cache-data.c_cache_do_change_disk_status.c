
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int node_id; int server_id; int disk_id; } ;
union cache_packed_local_copy_location {int i; TYPE_1__ p; } ;
struct lev_cache_change_disk_status {int dummy; } ;


 scalar_t__ LEV_CACHE_CHANGE_DISK_STATUS ;
 struct lev_cache_change_disk_status* alloc_log_event (scalar_t__,int,int ) ;
 int assert (int) ;
 int cache_change_disk_status (struct lev_cache_change_disk_status*,int) ;
 int cache_is_valid_disk (int,int,int) ;

int cache_do_change_disk_status (int node_id, int server_id, int disk_id, int enable) {
  assert (enable == 0 || enable == 1);
  int r = cache_is_valid_disk (node_id, server_id, disk_id);
  if (r < 0) {
    return r;
  }
  union cache_packed_local_copy_location u;
  u.p.node_id = node_id;
  u.p.server_id = server_id;
  u.p.disk_id = disk_id;
  struct lev_cache_change_disk_status *E = alloc_log_event (LEV_CACHE_CHANGE_DISK_STATUS + enable, sizeof (*E), u.i);
  return cache_change_disk_status (E, enable);
}

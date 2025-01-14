
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_20__ {scalar_t__ vs_aux; scalar_t__ vs_slow_ios; scalar_t__ vs_checksum_errors; scalar_t__ vs_write_errors; scalar_t__ vs_read_errors; } ;
struct TYPE_22__ {int vdev_children; unsigned long long vdev_faulted; unsigned long long vdev_degraded; void* vdev_unspare; TYPE_2__* vdev_parent; int * vdev_aux; struct TYPE_22__* vdev_top; void* vdev_forcefault; TYPE_1__ vdev_stat; void* vdev_cant_write; void* vdev_cant_read; struct TYPE_22__** vdev_child; } ;
typedef TYPE_3__ vdev_t ;
struct TYPE_23__ {int spa_dsl_pool; TYPE_3__* spa_root_vdev; } ;
typedef TYPE_4__ spa_t ;
struct TYPE_21__ {TYPE_3__** vdev_child; int * vdev_ops; } ;


 int ASSERT (int) ;
 void* B_FALSE ;
 void* B_TRUE ;
 int ESC_ZFS_VDEV_CLEAR ;
 int RW_WRITER ;
 scalar_t__ SCL_STATE_ALL ;
 int SPA_ASYNC_RESILVER ;
 int SPA_FEATURE_RESILVER_DEFER ;
 scalar_t__ dsl_scan_resilvering (int ) ;
 int spa_async_request (TYPE_4__*,int ) ;
 scalar_t__ spa_config_held (TYPE_4__*,scalar_t__,int ) ;
 int spa_event_notify (TYPE_4__*,TYPE_3__*,int *,int ) ;
 scalar_t__ spa_feature_is_enabled (TYPE_4__*,int ) ;
 int vdev_is_concrete (TYPE_3__*) ;
 int vdev_is_dead (TYPE_3__*) ;
 int vdev_readable (TYPE_3__*) ;
 int vdev_reopen (TYPE_3__*) ;
 int vdev_set_deferred_resilver (TYPE_4__*,TYPE_3__*) ;
 int vdev_spare_ops ;
 int vdev_state_dirty (TYPE_3__*) ;
 scalar_t__ vdev_writeable (TYPE_3__*) ;

void
vdev_clear(spa_t *spa, vdev_t *vd)
{
 vdev_t *rvd = spa->spa_root_vdev;

 ASSERT(spa_config_held(spa, SCL_STATE_ALL, RW_WRITER) == SCL_STATE_ALL);

 if (vd == ((void*)0))
  vd = rvd;

 vd->vdev_stat.vs_read_errors = 0;
 vd->vdev_stat.vs_write_errors = 0;
 vd->vdev_stat.vs_checksum_errors = 0;
 vd->vdev_stat.vs_slow_ios = 0;

 for (int c = 0; c < vd->vdev_children; c++)
  vdev_clear(spa, vd->vdev_child[c]);




 if (!vdev_is_concrete(vd))
  return;







 if (vd->vdev_faulted || vd->vdev_degraded ||
     !vdev_readable(vd) || !vdev_writeable(vd)) {





  vd->vdev_forcefault = B_TRUE;

  vd->vdev_faulted = vd->vdev_degraded = 0ULL;
  vd->vdev_cant_read = B_FALSE;
  vd->vdev_cant_write = B_FALSE;
  vd->vdev_stat.vs_aux = 0;

  vdev_reopen(vd == rvd ? rvd : vd->vdev_top);

  vd->vdev_forcefault = B_FALSE;

  if (vd != rvd && vdev_writeable(vd->vdev_top))
   vdev_state_dirty(vd->vdev_top);

  if (vd->vdev_aux == ((void*)0) && !vdev_is_dead(vd)) {
   if (dsl_scan_resilvering(spa->spa_dsl_pool) &&
       spa_feature_is_enabled(spa,
       SPA_FEATURE_RESILVER_DEFER))
    vdev_set_deferred_resilver(spa, vd);
   else
    spa_async_request(spa, SPA_ASYNC_RESILVER);
  }

  spa_event_notify(spa, vd, ((void*)0), ESC_ZFS_VDEV_CLEAR);
 }






 if (!vdev_is_dead(vd) && vd->vdev_parent != ((void*)0) &&
     vd->vdev_parent->vdev_ops == &vdev_spare_ops &&
     vd->vdev_parent->vdev_child[0] == vd)
  vd->vdev_unspare = B_TRUE;
}

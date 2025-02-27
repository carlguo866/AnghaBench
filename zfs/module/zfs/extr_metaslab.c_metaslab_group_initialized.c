
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ vs_space; } ;
struct TYPE_5__ {TYPE_2__ vdev_stat; } ;
typedef TYPE_1__ vdev_t ;
typedef TYPE_2__ vdev_stat_t ;
struct TYPE_7__ {scalar_t__ mg_activation_count; TYPE_1__* mg_vd; } ;
typedef TYPE_3__ metaslab_group_t ;
typedef int boolean_t ;



boolean_t
metaslab_group_initialized(metaslab_group_t *mg)
{
 vdev_t *vd = mg->mg_vd;
 vdev_stat_t *vs = &vd->vdev_stat;

 return (vs->vs_space != 0 && mg->mg_activation_count > 0);
}

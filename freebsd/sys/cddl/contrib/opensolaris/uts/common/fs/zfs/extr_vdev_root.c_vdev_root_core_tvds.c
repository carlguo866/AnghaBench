
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t vdev_children; int * vdev_ops; int vdev_islog; int vdev_ishole; struct TYPE_3__** vdev_child; } ;
typedef TYPE_1__ vdev_t ;
typedef size_t uint64_t ;


 int vdev_indirect_ops ;

__attribute__((used)) static uint64_t
vdev_root_core_tvds(vdev_t *vd)
{
 uint64_t tvds = 0;

 for (uint64_t c = 0; c < vd->vdev_children; c++) {
  vdev_t *cvd = vd->vdev_child[c];

  if (!cvd->vdev_ishole && !cvd->vdev_islog &&
      cvd->vdev_ops != &vdev_indirect_ops) {
   tvds++;
  }
 }

 return (tvds);
}

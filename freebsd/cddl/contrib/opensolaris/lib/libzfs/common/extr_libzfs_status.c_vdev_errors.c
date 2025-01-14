
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ vs_state; scalar_t__ vs_read_errors; scalar_t__ vs_write_errors; scalar_t__ vs_checksum_errors; } ;
typedef TYPE_1__ vdev_stat_t ;
typedef int uint_t ;


 scalar_t__ VDEV_STATE_DEGRADED ;

__attribute__((used)) static int
vdev_errors(vdev_stat_t *vs, uint_t vsc)
{
 return (vs->vs_state == VDEV_STATE_DEGRADED ||
     vs->vs_read_errors != 0 || vs->vs_write_errors != 0 ||
     vs->vs_checksum_errors != 0);
}

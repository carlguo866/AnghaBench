
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int dw; } ;
struct mlxsw_sp_acl_tcam_vregion {TYPE_2__ rehash; TYPE_1__* tcam; } ;
struct TYPE_3__ {unsigned long vregion_rehash_intrvl; } ;


 int mlxsw_core_schedule_dw (int *,int ) ;
 int msecs_to_jiffies (unsigned long) ;

__attribute__((used)) static void
mlxsw_sp_acl_tcam_vregion_rehash_work_schedule(struct mlxsw_sp_acl_tcam_vregion *vregion)
{
 unsigned long interval = vregion->tcam->vregion_rehash_intrvl;

 if (!interval)
  return;
 mlxsw_core_schedule_dw(&vregion->rehash.dw,
          msecs_to_jiffies(interval));
}

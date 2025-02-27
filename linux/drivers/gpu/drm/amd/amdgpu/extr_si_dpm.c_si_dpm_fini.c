
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_5__* entries; } ;
struct TYPE_7__ {TYPE_1__ vddc_dependency_on_dispclk; } ;
struct TYPE_8__ {int num_ps; TYPE_2__ dyn_state; TYPE_5__* priv; TYPE_5__* ps; } ;
struct TYPE_9__ {TYPE_3__ dpm; } ;
struct amdgpu_device {TYPE_4__ pm; } ;
struct TYPE_10__ {struct TYPE_10__* ps_priv; } ;


 int amdgpu_free_extended_power_table (struct amdgpu_device*) ;
 int kfree (TYPE_5__*) ;

__attribute__((used)) static void si_dpm_fini(struct amdgpu_device *adev)
{
 int i;

 if (adev->pm.dpm.ps)
  for (i = 0; i < adev->pm.dpm.num_ps; i++)
   kfree(adev->pm.dpm.ps[i].ps_priv);
 kfree(adev->pm.dpm.ps);
 kfree(adev->pm.dpm.priv);
 kfree(adev->pm.dpm.dyn_state.vddc_dependency_on_dispclk.entries);
 amdgpu_free_extended_power_table(adev);
}

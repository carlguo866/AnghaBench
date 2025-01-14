
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct smu_dpm_context {int dpm_level; } ;
struct TYPE_10__ {scalar_t__ ready; } ;
struct amdgpu_ring {TYPE_2__ sched; } ;
struct TYPE_15__ {int vrefresh; scalar_t__ min_vblank_time; int num_display; } ;
struct TYPE_11__ {int new_active_crtc_count; } ;
struct TYPE_14__ {int mutex; TYPE_7__ pm_display_cfg; TYPE_3__ dpm; int dpm_enabled; } ;
struct TYPE_13__ {int pp_handle; TYPE_4__* pp_funcs; } ;
struct TYPE_16__ {struct smu_dpm_context smu_dpm; } ;
struct TYPE_9__ {scalar_t__ num_crtc; } ;
struct amdgpu_device {TYPE_6__ pm; TYPE_5__ powerplay; TYPE_8__ smu; struct amdgpu_ring** rings; TYPE_1__ mode_info; } ;
struct TYPE_12__ {int (* display_configuration_change ) (int ,TYPE_7__*) ;scalar_t__ dispatch_tasks; } ;


 int AMDGPU_MAX_RINGS ;
 int AMD_PP_TASK_DISPLAY_CONFIG_CHANGE ;
 int amdgpu_device_has_dc_support (struct amdgpu_device*) ;
 int amdgpu_display_bandwidth_update (struct amdgpu_device*) ;
 int amdgpu_dpm_change_power_state_locked (struct amdgpu_device*) ;
 int amdgpu_dpm_dispatch_task (struct amdgpu_device*,int ,int *) ;
 int amdgpu_dpm_get_active_displays (struct amdgpu_device*) ;
 scalar_t__ amdgpu_dpm_get_vblank_time (struct amdgpu_device*) ;
 int amdgpu_dpm_get_vrefresh (struct amdgpu_device*) ;
 int amdgpu_fence_wait_empty (struct amdgpu_ring*) ;
 scalar_t__ is_support_sw_smu (struct amdgpu_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int smu_handle_task (TYPE_8__*,int ,int ) ;
 int stub1 (int ,TYPE_7__*) ;

void amdgpu_pm_compute_clocks(struct amdgpu_device *adev)
{
 int i = 0;

 if (!adev->pm.dpm_enabled)
  return;

 if (adev->mode_info.num_crtc)
  amdgpu_display_bandwidth_update(adev);

 for (i = 0; i < AMDGPU_MAX_RINGS; i++) {
  struct amdgpu_ring *ring = adev->rings[i];
  if (ring && ring->sched.ready)
   amdgpu_fence_wait_empty(ring);
 }

 if (is_support_sw_smu(adev)) {
  struct smu_dpm_context *smu_dpm = &adev->smu.smu_dpm;
  smu_handle_task(&adev->smu,
    smu_dpm->dpm_level,
    AMD_PP_TASK_DISPLAY_CONFIG_CHANGE);
 } else {
  if (adev->powerplay.pp_funcs->dispatch_tasks) {
   if (!amdgpu_device_has_dc_support(adev)) {
    mutex_lock(&adev->pm.mutex);
    amdgpu_dpm_get_active_displays(adev);
    adev->pm.pm_display_cfg.num_display = adev->pm.dpm.new_active_crtc_count;
    adev->pm.pm_display_cfg.vrefresh = amdgpu_dpm_get_vrefresh(adev);
    adev->pm.pm_display_cfg.min_vblank_time = amdgpu_dpm_get_vblank_time(adev);

    if (adev->pm.pm_display_cfg.vrefresh > 120)
     adev->pm.pm_display_cfg.min_vblank_time = 0;
    if (adev->powerplay.pp_funcs->display_configuration_change)
     adev->powerplay.pp_funcs->display_configuration_change(
         adev->powerplay.pp_handle,
         &adev->pm.pm_display_cfg);
    mutex_unlock(&adev->pm.mutex);
   }
   amdgpu_dpm_dispatch_task(adev, AMD_PP_TASK_DISPLAY_CONFIG_CHANGE, ((void*)0));
  } else {
   mutex_lock(&adev->pm.mutex);
   amdgpu_dpm_get_active_displays(adev);
   amdgpu_dpm_change_power_state_locked(adev);
   mutex_unlock(&adev->pm.mutex);
  }
 }
}

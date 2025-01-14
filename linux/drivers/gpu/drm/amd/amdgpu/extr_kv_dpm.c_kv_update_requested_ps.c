
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct kv_ps {int dummy; } ;
struct amdgpu_ps {struct kv_ps* ps_priv; } ;
struct kv_power_info {struct amdgpu_ps requested_rps; struct kv_ps requested_ps; } ;
struct TYPE_4__ {struct amdgpu_ps* requested_ps; } ;
struct TYPE_3__ {TYPE_2__ dpm; } ;
struct amdgpu_device {TYPE_1__ pm; } ;


 struct kv_power_info* kv_get_pi (struct amdgpu_device*) ;
 struct kv_ps* kv_get_ps (struct amdgpu_ps*) ;

__attribute__((used)) static void kv_update_requested_ps(struct amdgpu_device *adev,
       struct amdgpu_ps *rps)
{
 struct kv_ps *new_ps = kv_get_ps(rps);
 struct kv_power_info *pi = kv_get_pi(adev);

 pi->requested_rps = *rps;
 pi->requested_ps = *new_ps;
 pi->requested_rps.ps_priv = &pi->requested_ps;
 adev->pm.dpm.requested_ps = &pi->requested_rps;
}

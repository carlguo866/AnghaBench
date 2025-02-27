
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct amdgpu_device {int num_ip_blocks; TYPE_4__* ip_blocks; } ;
typedef enum amd_clockgating_state { ____Placeholder_amd_clockgating_state } amd_clockgating_state ;
struct TYPE_5__ {int late_initialized; } ;
struct TYPE_8__ {TYPE_3__* version; TYPE_1__ status; } ;
struct TYPE_7__ {scalar_t__ type; TYPE_2__* funcs; } ;
struct TYPE_6__ {int (* set_clockgating_state ) (void*,int) ;int name; } ;


 int AMD_CG_STATE_GATE ;
 scalar_t__ AMD_IP_BLOCK_TYPE_UVD ;
 scalar_t__ AMD_IP_BLOCK_TYPE_VCE ;
 scalar_t__ AMD_IP_BLOCK_TYPE_VCN ;
 int DRM_ERROR (char*,int ,int) ;
 int amdgpu_emu_mode ;
 int stub1 (void*,int) ;

__attribute__((used)) static int amdgpu_device_set_cg_state(struct amdgpu_device *adev,
      enum amd_clockgating_state state)
{
 int i, j, r;

 if (amdgpu_emu_mode == 1)
  return 0;

 for (j = 0; j < adev->num_ip_blocks; j++) {
  i = state == AMD_CG_STATE_GATE ? j : adev->num_ip_blocks - j - 1;
  if (!adev->ip_blocks[i].status.late_initialized)
   continue;

  if (adev->ip_blocks[i].version->type != AMD_IP_BLOCK_TYPE_UVD &&
      adev->ip_blocks[i].version->type != AMD_IP_BLOCK_TYPE_VCE &&
      adev->ip_blocks[i].version->type != AMD_IP_BLOCK_TYPE_VCN &&
      adev->ip_blocks[i].version->funcs->set_clockgating_state) {

   r = adev->ip_blocks[i].version->funcs->set_clockgating_state((void *)adev,
               state);
   if (r) {
    DRM_ERROR("set_clockgating_state(gate) of IP block <%s> failed %d\n",
       adev->ip_blocks[i].version->funcs->name, r);
    return r;
   }
  }
 }

 return 0;
}

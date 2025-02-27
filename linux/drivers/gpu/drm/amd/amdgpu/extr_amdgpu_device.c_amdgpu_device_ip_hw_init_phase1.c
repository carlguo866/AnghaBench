
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct amdgpu_device {int num_ip_blocks; TYPE_4__* ip_blocks; } ;
struct TYPE_7__ {int hw; int sw; } ;
struct TYPE_8__ {TYPE_3__ status; TYPE_2__* version; } ;
struct TYPE_6__ {scalar_t__ type; TYPE_1__* funcs; } ;
struct TYPE_5__ {int (* hw_init ) (struct amdgpu_device*) ;int name; } ;


 scalar_t__ AMD_IP_BLOCK_TYPE_COMMON ;
 scalar_t__ AMD_IP_BLOCK_TYPE_IH ;
 scalar_t__ AMD_IP_BLOCK_TYPE_PSP ;
 int DRM_ERROR (char*,int ,int) ;
 scalar_t__ amdgpu_sriov_vf (struct amdgpu_device*) ;
 int stub1 (struct amdgpu_device*) ;

__attribute__((used)) static int amdgpu_device_ip_hw_init_phase1(struct amdgpu_device *adev)
{
 int i, r;

 for (i = 0; i < adev->num_ip_blocks; i++) {
  if (!adev->ip_blocks[i].status.sw)
   continue;
  if (adev->ip_blocks[i].status.hw)
   continue;
  if (adev->ip_blocks[i].version->type == AMD_IP_BLOCK_TYPE_COMMON ||
      (amdgpu_sriov_vf(adev) && (adev->ip_blocks[i].version->type == AMD_IP_BLOCK_TYPE_PSP)) ||
      adev->ip_blocks[i].version->type == AMD_IP_BLOCK_TYPE_IH) {
   r = adev->ip_blocks[i].version->funcs->hw_init(adev);
   if (r) {
    DRM_ERROR("hw_init of IP block <%s> failed %d\n",
       adev->ip_blocks[i].version->funcs->name, r);
    return r;
   }
   adev->ip_blocks[i].status.hw = 1;
  }
 }

 return 0;
}

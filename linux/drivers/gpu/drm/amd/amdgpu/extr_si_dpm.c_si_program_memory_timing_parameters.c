
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_ps {int dummy; } ;
struct amdgpu_device {int dummy; } ;


 int SISLANDS_DRIVER_STATE_ARB_INDEX ;
 int si_do_program_memory_timing_parameters (struct amdgpu_device*,struct amdgpu_ps*,int ) ;

__attribute__((used)) static int si_program_memory_timing_parameters(struct amdgpu_device *adev,
            struct amdgpu_ps *amdgpu_new_state)
{
 return si_do_program_memory_timing_parameters(adev, amdgpu_new_state,
            SISLANDS_DRIVER_STATE_ARB_INDEX);
}

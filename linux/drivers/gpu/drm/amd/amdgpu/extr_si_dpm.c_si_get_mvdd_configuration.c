
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rv7xx_power_info {int mvdd_split_frequency; } ;
struct amdgpu_device {int dummy; } ;


 struct rv7xx_power_info* rv770_get_pi (struct amdgpu_device*) ;

__attribute__((used)) static void si_get_mvdd_configuration(struct amdgpu_device *adev)
{
 struct rv7xx_power_info *pi = rv770_get_pi(adev);

 pi->mvdd_split_frequency = 30000;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {TYPE_2__* driver_pptable; } ;
struct smu_context {TYPE_1__ smu_table; } ;
struct TYPE_4__ {int FanMaximumRpm; } ;
typedef TYPE_2__ PPTable_t ;


 int navi10_get_fan_speed_rpm (struct smu_context*,int*) ;

__attribute__((used)) static int navi10_get_fan_speed_percent(struct smu_context *smu,
     uint32_t *speed)
{
 int ret = 0;
 uint32_t percent = 0;
 uint32_t current_rpm;
 PPTable_t *pptable = smu->smu_table.driver_pptable;

 ret = navi10_get_fan_speed_rpm(smu, &current_rpm);
 if (ret)
  return ret;

 percent = current_rpm * 100 / pptable->FanMaximumRpm;
 *speed = percent > 100 ? 100 : percent;

 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct smu_context {int dummy; } ;
typedef enum amd_pp_sensors { ____Placeholder_amd_pp_sensors } amd_pp_sensors ;
struct TYPE_3__ {int AverageUclkActivity; int AverageGfxActivity; } ;
typedef TYPE_1__ SmuMetrics_t ;




 int EINVAL ;
 int pr_err (char*) ;
 int vega20_get_metrics_table (struct smu_context*,TYPE_1__*) ;

__attribute__((used)) static int vega20_get_current_activity_percent(struct smu_context *smu,
            enum amd_pp_sensors sensor,
            uint32_t *value)
{
 int ret = 0;
 SmuMetrics_t metrics;

 if (!value)
  return -EINVAL;

 ret = vega20_get_metrics_table(smu, &metrics);
 if (ret)
  return ret;

 switch (sensor) {
 case 129:
  *value = metrics.AverageGfxActivity;
  break;
 case 128:
  *value = metrics.AverageUclkActivity;
  break;
 default:
  pr_err("Invalid sensor for retrieving clock activity\n");
  return -EINVAL;
 }

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vega20_single_dpm_table {int count; TYPE_3__* dpm_levels; } ;
struct TYPE_5__ {struct vega20_single_dpm_table soc_table; } ;
struct vega20_hwmgr {TYPE_2__* smu_features; TYPE_1__ dpm_table; } ;
struct pp_hwmgr {scalar_t__ backend; } ;
struct pp_clock_levels_with_latency {int num_levels; TYPE_4__* data; } ;
struct TYPE_8__ {int clocks_in_khz; scalar_t__ latency_in_us; } ;
struct TYPE_7__ {int value; } ;
struct TYPE_6__ {int enabled; } ;


 size_t GNLD_DPM_SOCCLK ;
 int MAX_NUM_CLOCKS ;

__attribute__((used)) static int vega20_get_socclocks(struct pp_hwmgr *hwmgr,
  struct pp_clock_levels_with_latency *clocks)
{
 struct vega20_hwmgr *data = (struct vega20_hwmgr *)(hwmgr->backend);
 struct vega20_single_dpm_table *dpm_table = &(data->dpm_table.soc_table);
 int i, count;

 if (!data->smu_features[GNLD_DPM_SOCCLK].enabled)
  return -1;

 count = (dpm_table->count > MAX_NUM_CLOCKS) ? MAX_NUM_CLOCKS : dpm_table->count;
 clocks->num_levels = count;

 for (i = 0; i < count; i++) {
  clocks->data[i].clocks_in_khz =
   dpm_table->dpm_levels[i].value * 1000;
  clocks->data[i].latency_in_us = 0;
 }

 return 0;

}

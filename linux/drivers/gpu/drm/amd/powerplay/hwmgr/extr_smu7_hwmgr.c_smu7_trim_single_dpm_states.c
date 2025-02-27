
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct smu7_single_dpm_table {size_t count; TYPE_1__* dpm_levels; } ;
struct pp_hwmgr {int od_enabled; } ;
struct TYPE_2__ {size_t value; int enabled; } ;



__attribute__((used)) static int smu7_trim_single_dpm_states(struct pp_hwmgr *hwmgr,
     struct smu7_single_dpm_table *dpm_table,
   uint32_t low_limit, uint32_t high_limit)
{
 uint32_t i;

 for (i = 0; i < dpm_table->count; i++) {

  if (!hwmgr->od_enabled && (dpm_table->dpm_levels[i].value < low_limit
   || dpm_table->dpm_levels[i].value > high_limit))
   dpm_table->dpm_levels[i].enabled = 0;
  else
   dpm_table->dpm_levels[i].enabled = 1;
 }

 return 0;
}

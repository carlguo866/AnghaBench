
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct radeon_device {int dummy; } ;
struct radeon_clock_voltage_dependency_table {scalar_t__ count; TYPE_1__* entries; } ;
struct TYPE_2__ {size_t clk; size_t v; } ;


 int EINVAL ;

__attribute__((used)) static int ci_get_dependency_volt_by_clk(struct radeon_device *rdev,
      struct radeon_clock_voltage_dependency_table *allowed_clock_voltage_table,
      u32 clock, u32 *voltage)
{
 u32 i = 0;

 if (allowed_clock_voltage_table->count == 0)
  return -EINVAL;

 for (i = 0; i < allowed_clock_voltage_table->count; i++) {
  if (allowed_clock_voltage_table->entries[i].clk >= clock) {
   *voltage = allowed_clock_voltage_table->entries[i].v;
   return 0;
  }
 }

 *voltage = allowed_clock_voltage_table->entries[i-1].v;

 return 0;
}

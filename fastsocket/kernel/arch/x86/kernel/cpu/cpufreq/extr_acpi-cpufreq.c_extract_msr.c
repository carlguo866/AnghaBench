
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct acpi_processor_performance {TYPE_1__* states; } ;
struct acpi_cpufreq_data {TYPE_2__* freq_table; struct acpi_processor_performance* acpi_data; } ;
struct TYPE_4__ {scalar_t__ frequency; size_t index; } ;
struct TYPE_3__ {scalar_t__ status; } ;


 scalar_t__ CPUFREQ_TABLE_END ;
 scalar_t__ INTEL_MSR_RANGE ;

__attribute__((used)) static unsigned extract_msr(u32 msr, struct acpi_cpufreq_data *data)
{
 int i;
 struct acpi_processor_performance *perf;

 msr &= INTEL_MSR_RANGE;
 perf = data->acpi_data;

 for (i = 0; data->freq_table[i].frequency != CPUFREQ_TABLE_END; i++) {
  if (msr == perf->states[data->freq_table[i].index].status)
   return data->freq_table[i].frequency;
 }
 return data->freq_table[0].frequency;
}

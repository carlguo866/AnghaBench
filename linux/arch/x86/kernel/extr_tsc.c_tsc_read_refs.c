
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 int HPET_COUNTER ;
 int MAX_RETRIES ;
 int TSC_DEFAULT_THRESHOLD ;
 scalar_t__ ULLONG_MAX ;
 scalar_t__ acpi_pm_read_early () ;
 scalar_t__ get_cycles () ;
 int hpet_readl (int ) ;
 int tsc_khz ;

__attribute__((used)) static u64 tsc_read_refs(u64 *p, int hpet)
{
 u64 t1, t2;
 u64 thresh = tsc_khz ? tsc_khz >> 5 : TSC_DEFAULT_THRESHOLD;
 int i;

 for (i = 0; i < MAX_RETRIES; i++) {
  t1 = get_cycles();
  if (hpet)
   *p = hpet_readl(HPET_COUNTER) & 0xFFFFFFFF;
  else
   *p = acpi_pm_read_early();
  t2 = get_cycles();
  if ((t2 - t1) < thresh)
   return t2;
 }
 return ULLONG_MAX;
}

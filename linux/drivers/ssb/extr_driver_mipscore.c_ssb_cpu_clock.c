
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ssb_mipscore {TYPE_1__* dev; } ;
struct TYPE_6__ {int capabilities; } ;
struct ssb_bus {int chip_id; TYPE_2__ chipco; int extif; } ;
struct TYPE_5__ {struct ssb_bus* bus; } ;


 int SSB_CHIPCO_CAP_PMU ;
 scalar_t__ SSB_PLLTYPE_5 ;
 scalar_t__ SSB_PLLTYPE_6 ;
 scalar_t__ ssb_calc_clock_rate (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ ssb_chipco_available (TYPE_2__*) ;
 int ssb_chipco_get_clockcpu (TYPE_2__*,scalar_t__*,scalar_t__*,scalar_t__*) ;
 scalar_t__ ssb_extif_available (int *) ;
 int ssb_extif_get_clockcontrol (int *,scalar_t__*,scalar_t__*,scalar_t__*) ;
 scalar_t__ ssb_pmu_get_cpu_clock (TYPE_2__*) ;

u32 ssb_cpu_clock(struct ssb_mipscore *mcore)
{
 struct ssb_bus *bus = mcore->dev->bus;
 u32 pll_type, n, m, rate = 0;

 if (bus->chipco.capabilities & SSB_CHIPCO_CAP_PMU)
  return ssb_pmu_get_cpu_clock(&bus->chipco);

 if (ssb_extif_available(&bus->extif)) {
  ssb_extif_get_clockcontrol(&bus->extif, &pll_type, &n, &m);
 } else if (ssb_chipco_available(&bus->chipco)) {
  ssb_chipco_get_clockcpu(&bus->chipco, &pll_type, &n, &m);
 } else
  return 0;

 if ((pll_type == SSB_PLLTYPE_5) || (bus->chip_id == 0x5365)) {
  rate = 200000000;
 } else {
  rate = ssb_calc_clock_rate(pll_type, n, m);
 }

 if (pll_type == SSB_PLLTYPE_6) {
  rate *= 2;
 }

 return rate;
}

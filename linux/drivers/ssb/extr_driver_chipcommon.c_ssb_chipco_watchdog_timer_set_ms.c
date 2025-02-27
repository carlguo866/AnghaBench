
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ssb_chipcommon {int ticks_per_ms; TYPE_2__* dev; } ;
struct bcm47xx_wdt {int dummy; } ;
struct TYPE_4__ {TYPE_1__* bus; } ;
struct TYPE_3__ {scalar_t__ bustype; } ;


 scalar_t__ SSB_BUSTYPE_SSB ;
 struct ssb_chipcommon* bcm47xx_wdt_get_drvdata (struct bcm47xx_wdt*) ;
 int ssb_chipco_watchdog_timer_set (struct ssb_chipcommon*,int) ;

u32 ssb_chipco_watchdog_timer_set_ms(struct bcm47xx_wdt *wdt, u32 ms)
{
 struct ssb_chipcommon *cc = bcm47xx_wdt_get_drvdata(wdt);
 u32 ticks;

 if (cc->dev->bus->bustype != SSB_BUSTYPE_SSB)
  return 0;

 ticks = ssb_chipco_watchdog_timer_set(cc, cc->ticks_per_ms * ms);
 return ticks / cc->ticks_per_ms;
}

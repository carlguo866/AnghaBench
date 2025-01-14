
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int sys_reset_length; int cpu_reset_length; int en; int stg0; } ;
struct TYPE_6__ {int clk_prescale; } ;
struct TYPE_10__ {int wdt_feed; int wdt_config2; void* wdt_wprotect; TYPE_3__ wdt_config0; TYPE_1__ wdt_config1; } ;
struct TYPE_7__ {scalar_t__ en; } ;
struct TYPE_9__ {void* wdt_wprotect; TYPE_2__ wdt_config0; } ;


 TYPE_5__ TIMERG0 ;
 TYPE_4__ TIMERG1 ;
 int TIMG_WDT_STG_SEL_RESET_SYSTEM ;
 void* TIMG_WDT_WKEY_VALUE ;

__attribute__((used)) static void reconfigureAllWdts(void)
{
    TIMERG0.wdt_wprotect = TIMG_WDT_WKEY_VALUE;
    TIMERG0.wdt_feed = 1;
    TIMERG0.wdt_config0.sys_reset_length = 7;
    TIMERG0.wdt_config0.cpu_reset_length = 7;
    TIMERG0.wdt_config0.stg0 = TIMG_WDT_STG_SEL_RESET_SYSTEM;
    TIMERG0.wdt_config1.clk_prescale = 80 * 500;
    TIMERG0.wdt_config2 = 2000;
    TIMERG0.wdt_config0.en = 1;
    TIMERG0.wdt_wprotect = 0;

    TIMERG1.wdt_wprotect = TIMG_WDT_WKEY_VALUE;
    TIMERG1.wdt_config0.en = 0;
    TIMERG1.wdt_wprotect = 0;
}

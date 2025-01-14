
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kempld_wdt_stage {int dummy; } ;
struct TYPE_2__ {unsigned int timeout; } ;
struct kempld_wdt_data {unsigned int pretimeout; TYPE_1__ wdd; struct kempld_wdt_stage* stage; struct kempld_device_data* pld; } ;
struct kempld_device_data {int dummy; } ;


 size_t STAGE_PRETIMEOUT ;
 size_t STAGE_TIMEOUT ;
 int kempld_get_mutex (struct kempld_device_data*) ;
 int kempld_release_mutex (struct kempld_device_data*) ;
 unsigned int kempld_wdt_get_timeout (struct kempld_wdt_data*,struct kempld_wdt_stage*) ;

__attribute__((used)) static void kempld_wdt_update_timeouts(struct kempld_wdt_data *wdt_data)
{
 struct kempld_device_data *pld = wdt_data->pld;
 struct kempld_wdt_stage *pretimeout_stage;
 struct kempld_wdt_stage *timeout_stage;
 unsigned int pretimeout, timeout;

 pretimeout_stage = &wdt_data->stage[STAGE_PRETIMEOUT];
 timeout_stage = &wdt_data->stage[STAGE_TIMEOUT];

 kempld_get_mutex(pld);
 pretimeout = kempld_wdt_get_timeout(wdt_data, pretimeout_stage);
 timeout = kempld_wdt_get_timeout(wdt_data, timeout_stage);
 kempld_release_mutex(pld);

 if (pretimeout)
  wdt_data->pretimeout = timeout;
 else
  wdt_data->pretimeout = 0;

 wdt_data->wdd.timeout = pretimeout + timeout;
}

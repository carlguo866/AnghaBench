
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_lpss {TYPE_2__* dev; } ;
struct TYPE_3__ {int set_latency_tolerance; } ;
struct TYPE_4__ {TYPE_1__ power; } ;


 int dev_pm_qos_expose_latency_tolerance (TYPE_2__*) ;
 int intel_lpss_ltr_set ;

__attribute__((used)) static void intel_lpss_ltr_expose(struct intel_lpss *lpss)
{
 lpss->dev->power.set_latency_tolerance = intel_lpss_ltr_set;
 dev_pm_qos_expose_latency_tolerance(lpss->dev);
}

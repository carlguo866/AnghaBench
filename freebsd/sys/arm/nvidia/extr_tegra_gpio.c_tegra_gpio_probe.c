
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int device_t ;
struct TYPE_2__ {scalar_t__ ocd_data; } ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int compat_data ;
 int device_set_desc (int ,char*) ;
 TYPE_1__* ofw_bus_search_compatible (int ,int ) ;
 int ofw_bus_status_okay (int ) ;

__attribute__((used)) static int
tegra_gpio_probe(device_t dev)
{

 if (!ofw_bus_status_okay(dev))
  return (ENXIO);
 if (ofw_bus_search_compatible(dev, compat_data)->ocd_data != 0) {
  device_set_desc(dev, "Tegra GPIO Controller");
  return (BUS_PROBE_DEFAULT);
 }

 return (ENXIO);
}

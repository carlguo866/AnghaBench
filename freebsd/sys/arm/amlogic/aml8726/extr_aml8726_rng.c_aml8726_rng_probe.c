
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int device_set_desc (int ,char*) ;
 int ofw_bus_is_compatible (int ,char*) ;
 int ofw_bus_status_okay (int ) ;

__attribute__((used)) static int
aml8726_rng_probe(device_t dev)
{

 if (!ofw_bus_status_okay(dev))
  return (ENXIO);

 if (!ofw_bus_is_compatible(dev, "amlogic,aml8726-rng"))
  return (ENXIO);

 device_set_desc(dev, "Amlogic aml8726 RNG");

 return (BUS_PROBE_DEFAULT);
}

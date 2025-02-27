
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int device_set_desc (int ,char*) ;

__attribute__((used)) static int
cpswp_probe(device_t dev)
{

 if (device_get_unit(dev) > 1) {
  device_printf(dev, "Only two ports are supported.\n");
  return (ENXIO);
 }
 device_set_desc(dev, "Ethernet Switch Port");

 return (BUS_PROBE_DEFAULT);
}

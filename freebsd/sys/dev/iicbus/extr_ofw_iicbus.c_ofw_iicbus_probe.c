
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int ENXIO ;
 int device_set_desc (int ,char*) ;
 int ofw_bus_get_node (int ) ;

__attribute__((used)) static int
ofw_iicbus_probe(device_t dev)
{

 if (ofw_bus_get_node(dev) == -1)
  return (ENXIO);
 device_set_desc(dev, "OFW I2C bus");

 return (0);
}

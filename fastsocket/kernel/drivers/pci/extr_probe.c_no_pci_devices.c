
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 struct device* bus_find_device (int *,int *,int *,int ) ;
 int find_anything ;
 int pci_bus_type ;
 int put_device (struct device*) ;

int no_pci_devices(void)
{
 struct device *dev;
 int no_devices;

 dev = bus_find_device(&pci_bus_type, ((void*)0), ((void*)0), find_anything);
 no_devices = (dev == ((void*)0));
 put_device(dev);
 return no_devices;
}

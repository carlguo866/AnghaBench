
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct ssb_device {int core_index; struct ssb_bus* bus; } ;
struct ssb_bus {scalar_t__ mmio; } ;


 int SSB_CORE_SIZE ;
 int writew (scalar_t__,scalar_t__) ;

__attribute__((used)) static void ssb_host_soc_write16(struct ssb_device *dev, u16 offset, u16 value)
{
 struct ssb_bus *bus = dev->bus;

 offset += dev->core_index * SSB_CORE_SIZE;
 writew(value, bus->mmio + offset);
}

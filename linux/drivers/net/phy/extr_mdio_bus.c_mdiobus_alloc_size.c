
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_bus {int * irq; void* priv; int state; } ;


 size_t ALIGN (int,int ) ;
 int GFP_KERNEL ;
 int MDIOBUS_ALLOCATED ;
 int NETDEV_ALIGN ;
 int PHY_MAX_ADDR ;
 int PHY_POLL ;
 struct mii_bus* kzalloc (size_t,int ) ;

struct mii_bus *mdiobus_alloc_size(size_t size)
{
 struct mii_bus *bus;
 size_t aligned_size = ALIGN(sizeof(*bus), NETDEV_ALIGN);
 size_t alloc_size;
 int i;


 if (size)
  alloc_size = aligned_size + size;
 else
  alloc_size = sizeof(*bus);

 bus = kzalloc(alloc_size, GFP_KERNEL);
 if (!bus)
  return ((void*)0);

 bus->state = MDIOBUS_ALLOCATED;
 if (size)
  bus->priv = (void *)bus + aligned_size;


 for (i = 0; i < PHY_MAX_ADDR; i++)
  bus->irq[i] = PHY_POLL;

 return bus;
}

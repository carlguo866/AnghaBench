
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i3c_bus {unsigned long* addrslots; } ;
typedef enum i3c_addr_slot_status { ____Placeholder_i3c_addr_slot_status } i3c_addr_slot_status ;


 int BITS_PER_LONG ;
 int I2C_MAX_ADDR ;
 scalar_t__ I3C_ADDR_SLOT_STATUS_MASK ;

__attribute__((used)) static void i3c_bus_set_addr_slot_status(struct i3c_bus *bus, u16 addr,
      enum i3c_addr_slot_status status)
{
 int bitpos = addr * 2;
 unsigned long *ptr;

 if (addr > I2C_MAX_ADDR)
  return;

 ptr = bus->addrslots + (bitpos / BITS_PER_LONG);
 *ptr &= ~((unsigned long)I3C_ADDR_SLOT_STATUS_MASK <<
      (bitpos % BITS_PER_LONG));
 *ptr |= (unsigned long)status << (bitpos % BITS_PER_LONG);
}

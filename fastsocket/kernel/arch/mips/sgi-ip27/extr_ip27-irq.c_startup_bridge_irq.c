
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bridge_controller {int nasid; TYPE_2__* base; } ;
typedef int cpuid_t ;
typedef int bridgereg_t ;
struct TYPE_4__ {int b_int_enable; unsigned long b_int_mode; int b_int_device; int b_wid_tflush; TYPE_1__* b_int_addr; } ;
typedef TYPE_2__ bridge_t ;
struct TYPE_3__ {int addr; } ;


 struct bridge_controller* IRQ_TO_BRIDGE (unsigned int) ;
 int SLOT_FROM_PCI_IRQ (unsigned int) ;
 int find_level (int *,unsigned int) ;
 int intr_connect_level (int ,int) ;
 int pr_debug (char*,unsigned int,int) ;

__attribute__((used)) static unsigned int startup_bridge_irq(unsigned int irq)
{
 struct bridge_controller *bc;
 bridgereg_t device;
 bridge_t *bridge;
 int pin, swlevel;
 cpuid_t cpu;

 pin = SLOT_FROM_PCI_IRQ(irq);
 bc = IRQ_TO_BRIDGE(irq);
 bridge = bc->base;

 pr_debug("bridge_startup(): irq= 0x%x  pin=%d\n", irq, pin);




 swlevel = find_level(&cpu, irq);
 bridge->b_int_addr[pin].addr = (0x20000 | swlevel | (bc->nasid << 8));
 bridge->b_int_enable |= (1 << pin);
 bridge->b_int_enable |= 0x7ffffe00;
 bridge->b_int_mode |= (1UL << pin);





 device = bridge->b_int_device;
 device &= ~(7 << (pin*3));
 device |= (pin << (pin*3));
 bridge->b_int_device = device;

        bridge->b_wid_tflush;

 intr_connect_level(cpu, swlevel);

        return 0;
}

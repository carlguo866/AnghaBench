
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pnx833x_machine_halt () ;

void pnx833x_machine_power_off(void)
{
 pnx833x_machine_halt();
}

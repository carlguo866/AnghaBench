
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mmio; } ;
typedef TYPE_1__ vortex_t ;


 int VORTEX_IRQ_STAT ;
 int hwwrite (int ,int ,int) ;

__attribute__((used)) static void vortex_settimer(vortex_t * vortex, int period)
{

 hwwrite(vortex->mmio, VORTEX_IRQ_STAT, period);
}

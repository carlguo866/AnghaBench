
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mmio; } ;
typedef TYPE_1__ vortex_t ;
typedef int u16 ;


 int hwwrite (int ,int,int ) ;

__attribute__((used)) static void vortex_EqHw_SetA3DBypassGain(vortex_t * vortex, u16 a, u16 b)
{

 hwwrite(vortex->mmio, 0x2b3e0, a);
 hwwrite(vortex->mmio, 0x2b3f8, b);
}

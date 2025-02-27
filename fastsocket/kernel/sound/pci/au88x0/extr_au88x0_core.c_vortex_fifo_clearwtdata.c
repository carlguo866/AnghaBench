
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mmio; } ;
typedef TYPE_1__ vortex_t ;


 int FIFO_SIZE_BITS ;
 scalar_t__ VORTEX_FIFO_WTDATA ;
 int hwwrite (int ,scalar_t__,int ) ;

__attribute__((used)) static void vortex_fifo_clearwtdata(vortex_t * vortex, int fifo, int x)
{
 if (x < 1)
  return;
 for (x--; x >= 0; x--)
  hwwrite(vortex->mmio,
   VORTEX_FIFO_WTDATA +
   (((fifo << FIFO_SIZE_BITS) + x) << 2), 0);
}

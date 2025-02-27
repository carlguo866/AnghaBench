
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_device {int dummy; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct TYPE_6__ {TYPE_2__ engine; } ;
struct gf100_fifo {TYPE_3__ base; } ;


 int __ffs (int) ;
 int gf100_fifo_intr_engine_unit (struct gf100_fifo*,int) ;
 int nvkm_rd32 (struct nvkm_device*,int) ;

void
gf100_fifo_intr_engine(struct gf100_fifo *fifo)
{
 struct nvkm_device *device = fifo->base.engine.subdev.device;
 u32 mask = nvkm_rd32(device, 0x0025a4);
 while (mask) {
  u32 unit = __ffs(mask);
  gf100_fifo_intr_engine_unit(fifo, unit);
  mask &= ~(1 << unit);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_3__ {struct nvkm_subdev subdev; } ;
struct TYPE_4__ {TYPE_1__ engine; } ;
struct gf100_fifo {TYPE_2__ base; } ;


 int nvkm_error (struct nvkm_subdev*,char*,int,int,int) ;
 int nvkm_fifo_uevent (TYPE_2__*) ;
 int nvkm_mask (struct nvkm_device*,int,int,int ) ;
 int nvkm_rd32 (struct nvkm_device*,int) ;
 int nvkm_wr32 (struct nvkm_device*,int,int) ;

__attribute__((used)) static void
gf100_fifo_intr_engine_unit(struct gf100_fifo *fifo, int engn)
{
 struct nvkm_subdev *subdev = &fifo->base.engine.subdev;
 struct nvkm_device *device = subdev->device;
 u32 intr = nvkm_rd32(device, 0x0025a8 + (engn * 0x04));
 u32 inte = nvkm_rd32(device, 0x002628);
 u32 unkn;

 nvkm_wr32(device, 0x0025a8 + (engn * 0x04), intr);

 for (unkn = 0; unkn < 8; unkn++) {
  u32 ints = (intr >> (unkn * 0x04)) & inte;
  if (ints & 0x1) {
   nvkm_fifo_uevent(&fifo->base);
   ints &= ~1;
  }
  if (ints) {
   nvkm_error(subdev, "ENGINE %d %d %01x",
       engn, unkn, ints);
   nvkm_mask(device, 0x002628, ints, 0);
  }
 }
}

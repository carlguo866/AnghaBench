
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_4__ {struct nvkm_subdev subdev; } ;
struct TYPE_3__ {TYPE_2__ engine; } ;
struct gk104_fifo {TYPE_1__ base; } ;
typedef int msg ;


 int gk104_fifo_pbdma_intr_1 ;
 int nvkm_error (struct nvkm_subdev*,char*,int,int,char*,int,int,int) ;
 int nvkm_rd32 (struct nvkm_device*,int) ;
 int nvkm_snprintbf (char*,int,int ,int) ;
 int nvkm_wr32 (struct nvkm_device*,int,int) ;

__attribute__((used)) static void
gk104_fifo_intr_pbdma_1(struct gk104_fifo *fifo, int unit)
{
 struct nvkm_subdev *subdev = &fifo->base.engine.subdev;
 struct nvkm_device *device = subdev->device;
 u32 mask = nvkm_rd32(device, 0x04014c + (unit * 0x2000));
 u32 stat = nvkm_rd32(device, 0x040148 + (unit * 0x2000)) & mask;
 u32 chid = nvkm_rd32(device, 0x040120 + (unit * 0x2000)) & 0xfff;
 char msg[128];

 if (stat) {
  nvkm_snprintbf(msg, sizeof(msg), gk104_fifo_pbdma_intr_1, stat);
  nvkm_error(subdev, "PBDMA%d: %08x [%s] ch %d %08x %08x\n",
      unit, stat, msg, chid,
      nvkm_rd32(device, 0x040150 + (unit * 0x2000)),
      nvkm_rd32(device, 0x040154 + (unit * 0x2000)));
 }

 nvkm_wr32(device, 0x040148 + (unit * 0x2000), stat);
}

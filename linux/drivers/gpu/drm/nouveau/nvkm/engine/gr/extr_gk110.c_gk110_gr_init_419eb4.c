
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nvkm_device {int dummy; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct TYPE_6__ {TYPE_2__ engine; } ;
struct gf100_gr {TYPE_3__ base; } ;


 int nvkm_mask (struct nvkm_device*,int,int,int) ;

void
gk110_gr_init_419eb4(struct gf100_gr *gr)
{
 struct nvkm_device *device = gr->base.engine.subdev.device;
 nvkm_mask(device, 0x419eb4, 0x00001000, 0x00001000);
 nvkm_mask(device, 0x419eb4, 0x00002000, 0x00002000);
 nvkm_mask(device, 0x419eb4, 0x00004000, 0x00004000);
 nvkm_mask(device, 0x419eb4, 0x00008000, 0x00008000);
 nvkm_mask(device, 0x419eb4, 0x00001000, 0x00000000);
 nvkm_mask(device, 0x419eb4, 0x00002000, 0x00000000);
 nvkm_mask(device, 0x419eb4, 0x00004000, 0x00000000);
 nvkm_mask(device, 0x419eb4, 0x00008000, 0x00000000);
}

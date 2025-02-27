
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct nvkm_device {int dummy; } ;
struct TYPE_6__ {struct nvkm_device* device; } ;
struct TYPE_7__ {TYPE_2__ subdev; } ;
struct TYPE_8__ {TYPE_3__ engine; } ;
struct gf100_gr {TYPE_1__* zbc_stencil; TYPE_4__ base; } ;
struct TYPE_5__ {int format; int ds; } ;


 int nvkm_mask (struct nvkm_device*,int,int,int const) ;
 int nvkm_wr32 (struct nvkm_device*,int const,int ) ;

__attribute__((used)) static void
gp102_gr_zbc_clear_stencil(struct gf100_gr *gr, int zbc)
{
 struct nvkm_device *device = gr->base.engine.subdev.device;
 const int znum = zbc - 1;
 const u32 zoff = znum * 4;

 if (gr->zbc_stencil[zbc].format)
  nvkm_wr32(device, 0x41815c + zoff, gr->zbc_stencil[zbc].ds);
 nvkm_mask(device, 0x418198 + ((znum / 4) * 4),
     0x0000007f << ((znum % 4) * 7),
     gr->zbc_stencil[zbc].format << ((znum % 4) * 7));
}

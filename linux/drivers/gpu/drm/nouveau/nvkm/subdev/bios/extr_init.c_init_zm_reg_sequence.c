
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct nvkm_bios {int dummy; } ;
struct nvbios_init {scalar_t__ offset; TYPE_2__* subdev; } ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct TYPE_3__ {struct nvkm_bios* bios; } ;


 int init_wr32 (struct nvbios_init*,int,int) ;
 int nvbios_rd08 (struct nvkm_bios*,scalar_t__) ;
 int nvbios_rd32 (struct nvkm_bios*,scalar_t__) ;
 int trace (char*,int,...) ;

__attribute__((used)) static void
init_zm_reg_sequence(struct nvbios_init *init)
{
 struct nvkm_bios *bios = init->subdev->device->bios;
 u32 base = nvbios_rd32(bios, init->offset + 1);
 u8 count = nvbios_rd08(bios, init->offset + 5);

 trace("ZM_REG_SEQUENCE\t0x%02x\n", count);
 init->offset += 6;

 while (count--) {
  u32 data = nvbios_rd32(bios, init->offset);

  trace("\t\tR[0x%06x] = 0x%08x\n", base, data);
  init->offset += 4;

  init_wr32(init, base, data);
  base += 4;
 }
}

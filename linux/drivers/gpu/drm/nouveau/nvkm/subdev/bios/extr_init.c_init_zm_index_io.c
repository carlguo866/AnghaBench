
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct nvkm_bios {int dummy; } ;
struct nvbios_init {scalar_t__ offset; TYPE_2__* subdev; } ;
struct TYPE_4__ {TYPE_1__* device; } ;
struct TYPE_3__ {struct nvkm_bios* bios; } ;


 int init_wrvgai (struct nvbios_init*,int ,int ,int ) ;
 int nvbios_rd08 (struct nvkm_bios*,scalar_t__) ;
 int nvbios_rd16 (struct nvkm_bios*,scalar_t__) ;
 int trace (char*,int ,int ,int ) ;

__attribute__((used)) static void
init_zm_index_io(struct nvbios_init *init)
{
 struct nvkm_bios *bios = init->subdev->device->bios;
 u16 port = nvbios_rd16(bios, init->offset + 1);
 u8 index = nvbios_rd08(bios, init->offset + 3);
 u8 data = nvbios_rd08(bios, init->offset + 4);

 trace("ZM_INDEX_IO\tI[0x%04x][0x%02x] = 0x%02x\n", port, index, data);
 init->offset += 5;

 init_wrvgai(init, port, index, data);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct nvbios_init {struct nouveau_bios* bios; scalar_t__ offset; } ;
struct nouveau_bios {int dummy; } ;
struct TYPE_2__ {scalar_t__ card_type; } ;


 scalar_t__ NV_50 ;
 int init_mask (struct nvbios_init*,int,int,int) ;
 int init_rdport (struct nvbios_init*,int) ;
 int init_wr32 (struct nvbios_init*,int,int) ;
 int init_wrport (struct nvbios_init*,int,int) ;
 int mdelay (int) ;
 TYPE_1__* nv_device (struct nouveau_bios*) ;
 int nv_ro16 (struct nouveau_bios*,scalar_t__) ;
 int trace (char*,int,int,int) ;

__attribute__((used)) static void
init_io(struct nvbios_init *init)
{
 struct nouveau_bios *bios = init->bios;
 u16 port = nv_ro16(bios, init->offset + 1);
 u8 mask = nv_ro16(bios, init->offset + 3);
 u8 data = nv_ro16(bios, init->offset + 4);
 u8 value;

 trace("IO\t\tI[0x%04x] &= 0x%02x |= 0x%02x\n", port, mask, data);
 init->offset += 5;





 if (nv_device(init->bios)->card_type >= NV_50 &&
     port == 0x03c3 && data == 0x01) {
  init_mask(init, 0x614100, 0xf0800000, 0x00800000);
  init_mask(init, 0x00e18c, 0x00020000, 0x00020000);
  init_mask(init, 0x614900, 0xf0800000, 0x00800000);
  init_mask(init, 0x000200, 0x40000000, 0x00000000);
  mdelay(10);
  init_mask(init, 0x00e18c, 0x00020000, 0x00000000);
  init_mask(init, 0x000200, 0x40000000, 0x40000000);
  init_wr32(init, 0x614100, 0x00800018);
  init_wr32(init, 0x614900, 0x00800018);
  mdelay(10);
  init_wr32(init, 0x614100, 0x10000018);
  init_wr32(init, 0x614900, 0x10000018);
 }

 value = init_rdport(init, port) & mask;
 init_wrport(init, port, data | value);
}

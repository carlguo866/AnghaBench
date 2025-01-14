
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nvbios_init {scalar_t__ offset; struct nouveau_bios* bios; } ;
struct nouveau_bios {int dummy; } ;


 int init_rdvgai (struct nvbios_init*,int,int) ;
 int init_wrvgai (struct nvbios_init*,int,int,int) ;
 int nv_ro08 (struct nouveau_bios*,scalar_t__) ;
 int trace (char*,int,int,int) ;

__attribute__((used)) static void
init_cr(struct nvbios_init *init)
{
 struct nouveau_bios *bios = init->bios;
 u8 addr = nv_ro08(bios, init->offset + 1);
 u8 mask = nv_ro08(bios, init->offset + 2);
 u8 data = nv_ro08(bios, init->offset + 3);
 u8 val;

 trace("CR\t\tC[0x%02x] &= 0x%02x |= 0x%02x\n", addr, mask, data);
 init->offset += 4;

 val = init_rdvgai(init, 0x03d4, addr) & mask;
 init_wrvgai(init, 0x03d4, addr, val | data);
}

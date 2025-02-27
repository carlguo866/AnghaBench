
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct nvbios_init {scalar_t__ offset; struct nouveau_bios* bios; } ;
struct nouveau_bios {int dummy; } ;


 scalar_t__ init_tmds_reg (struct nvbios_init*,int ) ;
 int init_wr32 (struct nvbios_init*,scalar_t__,int ) ;
 int nv_ro08 (struct nouveau_bios*,scalar_t__) ;
 int trace (char*,int ,...) ;

__attribute__((used)) static void
init_zm_tmds_group(struct nvbios_init *init)
{
 struct nouveau_bios *bios = init->bios;
 u8 tmds = nv_ro08(bios, init->offset + 1);
 u8 count = nv_ro08(bios, init->offset + 2);
 u32 reg = init_tmds_reg(init, tmds);

 trace("TMDS_ZM_GROUP\tT[0x%02x]\n", tmds);
 init->offset += 3;

 while (count--) {
  u8 addr = nv_ro08(bios, init->offset + 0);
  u8 data = nv_ro08(bios, init->offset + 1);

  trace("\t[0x%02x] = 0x%02x\n", addr, data);
  init->offset += 2;

  init_wr32(init, reg + 4, data);
  init_wr32(init, reg + 0, addr);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u32 ;
struct nv04_clock_priv {int dummy; } ;
struct nouveau_pll_vals {int log2P; int NM1; int NM2; int N2; int M2; } ;
struct TYPE_3__ {int chip; } ;
struct TYPE_4__ {TYPE_1__ version; } ;


 int new_ramdac580 (int,int,int) ;
 TYPE_2__* nouveau_bios (struct nv04_clock_priv*) ;
 int nv_rd32 (struct nv04_clock_priv*,int) ;
 int nv_wr32 (struct nv04_clock_priv*,int,int) ;
 int powerctrl_1_shift (int,int) ;

__attribute__((used)) static void
setPLL_double_highregs(struct nv04_clock_priv *priv, u32 reg1,
         struct nouveau_pll_vals *pv)
{
 int chip_version = nouveau_bios(priv)->version.chip;
 bool nv3035 = chip_version == 0x30 || chip_version == 0x35;
 uint32_t reg2 = reg1 + ((reg1 == 0x680520) ? 0x5c : 0x70);
 uint32_t oldpll1 = nv_rd32(priv, reg1);
 uint32_t oldpll2 = !nv3035 ? nv_rd32(priv, reg2) : 0;
 uint32_t pll1 = (oldpll1 & 0xfff80000) | pv->log2P << 16 | pv->NM1;
 uint32_t pll2 = (oldpll2 & 0x7fff0000) | 1 << 31 | pv->NM2;
 uint32_t oldramdac580 = 0, ramdac580 = 0;
 bool single_stage = !pv->NM2 || pv->N2 == pv->M2;
 uint32_t saved_powerctrl_1 = 0, savedc040 = 0;
 int shift_powerctrl_1 = powerctrl_1_shift(chip_version, reg1);


 if (nv3035) {
  pll1 = (pll1 & 0xfcc7ffff) | (pv->N2 & 0x18) << 21 |
         (pv->N2 & 0x7) << 19 | 8 << 4 | (pv->M2 & 7) << 4;
  pll2 = 0;
 }
 if (chip_version > 0x40 && reg1 >= 0x680508) {
  oldramdac580 = nv_rd32(priv, 0x680580);
  ramdac580 = new_ramdac580(reg1, single_stage, oldramdac580);
  if (oldramdac580 != ramdac580)
   oldpll1 = ~0;
  if (single_stage)

   pll2 |= 0x011f;
 }
 if (chip_version > 0x70)

  pll1 = (pll1 & 0x7fffffff) | (single_stage ? 0x4 : 0xc) << 28;

 if (oldpll1 == pll1 && oldpll2 == pll2)
  return;

 if (shift_powerctrl_1 >= 0) {
  saved_powerctrl_1 = nv_rd32(priv, 0x001584);
  nv_wr32(priv, 0x001584,
   (saved_powerctrl_1 & ~(0xf << shift_powerctrl_1)) |
   1 << shift_powerctrl_1);
 }

 if (chip_version >= 0x40) {
  int shift_c040 = 14;

  switch (reg1) {
  case 0x680504:
   shift_c040 += 2;
  case 0x680500:
   shift_c040 += 2;
  case 0x680520:
   shift_c040 += 2;
  case 0x680508:
   shift_c040 += 2;
  }

  savedc040 = nv_rd32(priv, 0xc040);
  if (shift_c040 != 14)
   nv_wr32(priv, 0xc040, savedc040 & ~(3 << shift_c040));
 }

 if (oldramdac580 != ramdac580)
  nv_wr32(priv, 0x680580, ramdac580);

 if (!nv3035)
  nv_wr32(priv, reg2, pll2);
 nv_wr32(priv, reg1, pll1);

 if (shift_powerctrl_1 >= 0)
  nv_wr32(priv, 0x001584, saved_powerctrl_1);
 if (chip_version >= 0x40)
  nv_wr32(priv, 0xc040, savedc040);
}

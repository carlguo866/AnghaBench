
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
typedef unsigned int u32 ;
struct genwqe_reg {int addr; int val; } ;
struct genwqe_dev {int dummy; } ;


 unsigned int GENWQE_MAX_UNITS ;
 unsigned int IO_APP_UNITCFG ;
 unsigned int IO_SLC_CFGREG_GFIR ;
 unsigned int IO_SLU_UNITCFG ;
 unsigned long long __genwqe_readq (struct genwqe_dev*,unsigned int) ;
 int set_reg (struct genwqe_dev*,struct genwqe_reg*,unsigned int*,unsigned int,unsigned int,unsigned long long) ;

int genwqe_read_ffdc_regs(struct genwqe_dev *cd, struct genwqe_reg *regs,
    unsigned int max_regs, int all)
{
 unsigned int i, j, idx = 0;
 u32 ufir_addr, ufec_addr, sfir_addr, sfec_addr;
 u64 gfir, sluid, appid, ufir, ufec, sfir, sfec;


 gfir = __genwqe_readq(cd, IO_SLC_CFGREG_GFIR);
 set_reg(cd, regs, &idx, max_regs, IO_SLC_CFGREG_GFIR, gfir);


 sluid = __genwqe_readq(cd, IO_SLU_UNITCFG);
 set_reg(cd, regs, &idx, max_regs, IO_SLU_UNITCFG, sluid);


 appid = __genwqe_readq(cd, IO_APP_UNITCFG);
 set_reg(cd, regs, &idx, max_regs, IO_APP_UNITCFG, appid);


 for (i = 0; i < GENWQE_MAX_UNITS; i++) {


  ufir_addr = (i << 24) | 0x008;
  ufir = __genwqe_readq(cd, ufir_addr);
  set_reg(cd, regs, &idx, max_regs, ufir_addr, ufir);


  ufec_addr = (i << 24) | 0x018;
  ufec = __genwqe_readq(cd, ufec_addr);
  set_reg(cd, regs, &idx, max_regs, ufec_addr, ufec);

  for (j = 0; j < 64; j++) {

   if (!all && (!(ufir & (1ull << j))))
    continue;

   sfir_addr = (i << 24) | (0x100 + 8 * j);
   sfir = __genwqe_readq(cd, sfir_addr);
   set_reg(cd, regs, &idx, max_regs, sfir_addr, sfir);

   sfec_addr = (i << 24) | (0x300 + 8 * j);
   sfec = __genwqe_readq(cd, sfec_addr);
   set_reg(cd, regs, &idx, max_regs, sfec_addr, sfec);
  }
 }


 for (i = idx; i < max_regs; i++) {
  regs[i].addr = 0xffffffff;
  regs[i].val = 0xffffffffffffffffull;
 }
 return idx;
}

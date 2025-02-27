
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct op {int flags; scalar_t__ (* fn ) (unsigned int,unsigned int,int ,scalar_t__) ;} ;
typedef int s32 ;


 size_t FEXT_TO_IDX (scalar_t__) ;
 scalar_t__ FOP_EXT ;
 scalar_t__ FOP_MASK ;
 size_t FOP_TO_IDX (scalar_t__) ;
 unsigned int FPSCR_LENGTH_BIT ;
 scalar_t__ FPSCR_LENGTH_MASK ;
 scalar_t__ FPSCR_STRIDE_MASK ;
 unsigned int FREG_BANK (unsigned int) ;
 unsigned int FREG_IDX (unsigned int) ;
 int OP_DD ;
 int OP_SCALAR ;
 struct op* fops ;
 struct op* fops_ext ;
 int pr_debug (char*,unsigned int,scalar_t__,...) ;
 scalar_t__ stub1 (unsigned int,unsigned int,int ,scalar_t__) ;
 unsigned int vfp_get_dd (scalar_t__) ;
 int vfp_get_float (unsigned int) ;
 unsigned int vfp_get_sd (scalar_t__) ;
 unsigned int vfp_get_sm (scalar_t__) ;
 unsigned int vfp_get_sn (scalar_t__) ;

u32 vfp_single_cpdo(u32 inst, u32 fpscr)
{
 u32 op = inst & FOP_MASK;
 u32 exceptions = 0;
 unsigned int dest;
 unsigned int sn = vfp_get_sn(inst);
 unsigned int sm = vfp_get_sm(inst);
 unsigned int vecitr, veclen, vecstride;
 struct op *fop;

 vecstride = 1 + ((fpscr & FPSCR_STRIDE_MASK) == FPSCR_STRIDE_MASK);

 fop = (op == FOP_EXT) ? &fops_ext[FEXT_TO_IDX(inst)] : &fops[FOP_TO_IDX(op)];







 if (fop->flags & OP_DD)
  dest = vfp_get_dd(inst);
 else
  dest = vfp_get_sd(inst);





 if ((fop->flags & OP_SCALAR) || FREG_BANK(dest) == 0)
  veclen = 0;
 else
  veclen = fpscr & FPSCR_LENGTH_MASK;

 pr_debug("VFP: vecstride=%u veclen=%u\n", vecstride,
   (veclen >> FPSCR_LENGTH_BIT) + 1);

 if (!fop->fn)
  goto invalid;

 for (vecitr = 0; vecitr <= veclen; vecitr += 1 << FPSCR_LENGTH_BIT) {
  s32 m = vfp_get_float(sm);
  u32 except;
  char type;

  type = fop->flags & OP_DD ? 'd' : 's';
  if (op == FOP_EXT)
   pr_debug("VFP: itr%d (%c%u) = op[%u] (s%u=%08x)\n",
     vecitr >> FPSCR_LENGTH_BIT, type, dest, sn,
     sm, m);
  else
   pr_debug("VFP: itr%d (%c%u) = (s%u) op[%u] (s%u=%08x)\n",
     vecitr >> FPSCR_LENGTH_BIT, type, dest, sn,
     FOP_TO_IDX(op), sm, m);

  except = fop->fn(dest, sn, m, fpscr);
  pr_debug("VFP: itr%d: exceptions=%08x\n",
    vecitr >> FPSCR_LENGTH_BIT, except);

  exceptions |= except;





  dest = FREG_BANK(dest) + ((FREG_IDX(dest) + vecstride) & 7);
  sn = FREG_BANK(sn) + ((FREG_IDX(sn) + vecstride) & 7);
  if (FREG_BANK(sm) != 0)
   sm = FREG_BANK(sm) + ((FREG_IDX(sm) + vecstride) & 7);
 }
 return exceptions;

 invalid:
 return (u32)-1;
}

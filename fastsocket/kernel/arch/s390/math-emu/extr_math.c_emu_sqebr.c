
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_5__ {int fpc; TYPE_2__* fprs; } ;
struct TYPE_7__ {TYPE_1__ fp_regs; } ;
struct TYPE_8__ {TYPE_3__ thread; } ;
struct TYPE_6__ {int f; } ;


 int FP_DECL_EX ;
 int FP_DECL_S (int ) ;
 int FP_PACK_SP (int *,int ) ;
 int FP_SQRT_S (int ,int ) ;
 int FP_UNPACK_SP (int ,int *) ;
 int SA ;
 int SR ;
 int SR_c ;
 int SR_s ;
 int _fex ;
 TYPE_4__* current ;
 int emu_set_CC_cs (struct pt_regs*,int ,int ) ;

__attribute__((used)) static int emu_sqebr (struct pt_regs *regs, int rx, int ry) {
        FP_DECL_S(SA); FP_DECL_S(SR);
        FP_DECL_EX;
        int mode;

 mode = current->thread.fp_regs.fpc & 3;
        FP_UNPACK_SP(SA, &current->thread.fp_regs.fprs[ry].f);
 FP_SQRT_S(SR, SA);
 FP_PACK_SP(&current->thread.fp_regs.fprs[rx].f, SR);
        emu_set_CC_cs(regs, SR_c, SR_s);
        return _fex;
}

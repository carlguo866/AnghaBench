
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_10__ {int low; int high; } ;
struct TYPE_11__ {TYPE_4__ w; int ld; } ;
typedef TYPE_5__ mathemu_ldcv ;
struct TYPE_8__ {int fpc; TYPE_1__* fprs; } ;
struct TYPE_9__ {TYPE_2__ fp_regs; } ;
struct TYPE_12__ {TYPE_3__ thread; } ;
struct TYPE_7__ {int ui; int d; } ;


 int D ;
 int DA ;
 int FP_CONV (int ,int ,int,int,int ,int ) ;
 int FP_DECL_D (int ) ;
 int FP_DECL_EX ;
 int FP_DECL_Q (int ) ;
 int FP_PACK_QP (int *,int ) ;
 int FP_UNPACK_DP (int ,int *) ;
 int Q ;
 int QR ;
 int _fex ;
 TYPE_6__* current ;

__attribute__((used)) static int emu_lxdbr (struct pt_regs *regs, int rx, int ry) {
        FP_DECL_D(DA); FP_DECL_Q(QR);
 FP_DECL_EX;
 mathemu_ldcv cvt;
        int mode;

 mode = current->thread.fp_regs.fpc & 3;
        FP_UNPACK_DP(DA, &current->thread.fp_regs.fprs[ry].d);
 FP_CONV (Q, D, 4, 2, QR, DA);
        FP_PACK_QP(&cvt.ld, QR);
        current->thread.fp_regs.fprs[rx].ui = cvt.w.high;
        current->thread.fp_regs.fprs[rx+2].ui = cvt.w.low;
        return _fex;
}

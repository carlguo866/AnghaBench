
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
struct TYPE_11__ {long double ld; TYPE_4__ w; } ;
typedef TYPE_5__ mathemu_ldcv ;
struct TYPE_8__ {int fpc; TYPE_1__* fprs; } ;
struct TYPE_9__ {TYPE_2__ fp_regs; } ;
struct TYPE_12__ {TYPE_3__ thread; } ;
struct TYPE_7__ {int ui; } ;


 int FP_DECL_EX ;
 int FP_DECL_Q (int ) ;
 int FP_MUL_Q (int ,int ,int ) ;
 int FP_PACK_QP (long double*,int ) ;
 int FP_UNPACK_QP (int ,long double*) ;
 int QA ;
 int QB ;
 int QR ;
 int _fex ;
 TYPE_6__* current ;

__attribute__((used)) static int emu_mxdb (struct pt_regs *regs, int rx, long double *val) {
        FP_DECL_Q(QA); FP_DECL_Q(QB); FP_DECL_Q(QR);
        FP_DECL_EX;
 mathemu_ldcv cvt;
        int mode;

 mode = current->thread.fp_regs.fpc & 3;
        cvt.w.high = current->thread.fp_regs.fprs[rx].ui;
        cvt.w.low = current->thread.fp_regs.fprs[rx+2].ui;
        FP_UNPACK_QP(QA, &cvt.ld);
        FP_UNPACK_QP(QB, val);
        FP_MUL_Q(QR, QA, QB);
        FP_PACK_QP(&cvt.ld, QR);
        current->thread.fp_regs.fprs[rx].ui = cvt.w.high;
        current->thread.fp_regs.fprs[rx+2].ui = cvt.w.low;
        return _fex;
}

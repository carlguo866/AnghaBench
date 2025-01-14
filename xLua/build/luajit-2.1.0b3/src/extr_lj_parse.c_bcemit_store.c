
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;


typedef scalar_t__ int32_t ;
struct TYPE_27__ {size_t aux; int info; } ;
struct TYPE_28__ {TYPE_3__ s; } ;
struct TYPE_30__ {scalar_t__ k; TYPE_4__ u; } ;
struct TYPE_29__ {int nactvar; TYPE_2__* ls; } ;
struct TYPE_26__ {TYPE_1__* vstack; } ;
struct TYPE_25__ {int info; } ;
typedef TYPE_5__ FuncState ;
typedef TYPE_6__ ExpDesc ;
typedef int BCReg ;
typedef int BCIns ;


 int BCINS_ABC (int ,int,int,int) ;
 int BCINS_AD (int ,int,int) ;
 int BCMAX_C ;
 int BC_GSET ;
 int BC_TSETB ;
 int BC_TSETS ;
 int BC_TSETV ;
 int BC_USETN ;
 int BC_USETP ;
 int BC_USETS ;
 int BC_USETV ;
 scalar_t__ VGLOBAL ;
 scalar_t__ VINDEXED ;
 scalar_t__ VKNUM ;
 scalar_t__ VKSTR ;
 scalar_t__ VKTRUE ;
 scalar_t__ VLOCAL ;
 scalar_t__ VNONRELOC ;
 int VSTACK_VAR_RW ;
 scalar_t__ VUPVAL ;
 int bcemit_INS (TYPE_5__*,int ) ;
 int bcreg_free (TYPE_5__*,int) ;
 int const_num (TYPE_5__*,TYPE_6__*) ;
 int const_pri (TYPE_6__*) ;
 int const_str (TYPE_5__*,TYPE_6__*) ;
 int expr_free (TYPE_5__*,TYPE_6__*) ;
 int expr_toanyreg (TYPE_5__*,TYPE_6__*) ;
 int expr_toreg (TYPE_5__*,TYPE_6__*,int) ;
 int expr_toval (TYPE_5__*,TYPE_6__*) ;
 int lua_assert (int) ;

__attribute__((used)) static void bcemit_store(FuncState *fs, ExpDesc *var, ExpDesc *e)
{
  BCIns ins;
  if (var->k == VLOCAL) {
    fs->ls->vstack[var->u.s.aux].info |= VSTACK_VAR_RW;
    expr_free(fs, e);
    expr_toreg(fs, e, var->u.s.info);
    return;
  } else if (var->k == VUPVAL) {
    fs->ls->vstack[var->u.s.aux].info |= VSTACK_VAR_RW;
    expr_toval(fs, e);
    if (e->k <= VKTRUE)
      ins = BCINS_AD(BC_USETP, var->u.s.info, const_pri(e));
    else if (e->k == VKSTR)
      ins = BCINS_AD(BC_USETS, var->u.s.info, const_str(fs, e));
    else if (e->k == VKNUM)
      ins = BCINS_AD(BC_USETN, var->u.s.info, const_num(fs, e));
    else
      ins = BCINS_AD(BC_USETV, var->u.s.info, expr_toanyreg(fs, e));
  } else if (var->k == VGLOBAL) {
    BCReg ra = expr_toanyreg(fs, e);
    ins = BCINS_AD(BC_GSET, ra, const_str(fs, var));
  } else {
    BCReg ra, rc;
    lua_assert(var->k == VINDEXED);
    ra = expr_toanyreg(fs, e);
    rc = var->u.s.aux;
    if ((int32_t)rc < 0) {
      ins = BCINS_ABC(BC_TSETS, ra, var->u.s.info, ~rc);
    } else if (rc > BCMAX_C) {
      ins = BCINS_ABC(BC_TSETB, ra, var->u.s.info, rc-(BCMAX_C+1));
    } else {


      lua_assert(e->k != VNONRELOC || ra < fs->nactvar ||
   rc < ra || (bcreg_free(fs, rc),1));
      ins = BCINS_ABC(BC_TSETV, ra, var->u.s.info, rc);
    }
  }
  bcemit_INS(fs, ins);
  expr_free(fs, e);
}

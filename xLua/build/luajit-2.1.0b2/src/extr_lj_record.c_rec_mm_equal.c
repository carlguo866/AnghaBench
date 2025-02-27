
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int L; } ;
typedef TYPE_1__ jit_State ;
typedef int cTValue ;
struct TYPE_15__ {int metatable; } ;
struct TYPE_14__ {int metatable; } ;
struct TYPE_13__ {scalar_t__ mtv; int mobjv; int mobj; int tabv; int key; int tab; int mt; int keyv; int valv; int val; } ;
typedef int TValue ;
typedef int TRef ;
typedef TYPE_2__ RecordIndex ;


 int IRFL_TAB_META ;
 int IRFL_UDATA_META ;
 int IRT (int ,int ) ;
 int IRTG (int ,int ) ;
 int IRT_TAB ;
 int IR_EQ ;
 int IR_FLOAD ;
 int MM_eq ;
 int copyTV (int ,int *,int *) ;
 int emitir (int ,int ,int ) ;
 scalar_t__ lj_record_mm_lookup (TYPE_1__*,TYPE_2__*,int ) ;
 scalar_t__ lj_record_objcmp (TYPE_1__*,int ,int ,int *,int *) ;
 int rec_mm_callcomp (TYPE_1__*,TYPE_2__*,int) ;
 TYPE_4__* tabV (int *) ;
 scalar_t__ tabref (int ) ;
 scalar_t__ tvistab (int *) ;
 scalar_t__ tvisudata (int *) ;
 TYPE_3__* udataV (int *) ;

__attribute__((used)) static void rec_mm_equal(jit_State *J, RecordIndex *ix, int op)
{
  ix->tab = ix->val;
  copyTV(J->L, &ix->tabv, &ix->valv);
  if (lj_record_mm_lookup(J, ix, MM_eq)) {
    cTValue *bv;
    TRef mo1 = ix->mobj;
    TValue mo1v;
    copyTV(J->L, &mo1v, &ix->mobjv);

    bv = &ix->keyv;
    if (tvistab(bv) && tabref(tabV(bv)->metatable) == ix->mtv) {
      TRef mt2 = emitir(IRT(IR_FLOAD, IRT_TAB), ix->key, IRFL_TAB_META);
      emitir(IRTG(IR_EQ, IRT_TAB), mt2, ix->mt);
    } else if (tvisudata(bv) && tabref(udataV(bv)->metatable) == ix->mtv) {
      TRef mt2 = emitir(IRT(IR_FLOAD, IRT_TAB), ix->key, IRFL_UDATA_META);
      emitir(IRTG(IR_EQ, IRT_TAB), mt2, ix->mt);
    } else {
      ix->tab = ix->key;
      copyTV(J->L, &ix->tabv, bv);
      if (!lj_record_mm_lookup(J, ix, MM_eq) ||
   lj_record_objcmp(J, mo1, ix->mobj, &mo1v, &ix->mobjv))
 return;
    }
    rec_mm_callcomp(J, ix, op);
  }
}

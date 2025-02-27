
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_13__ {int pred_flag; size_t* ref_idx; int * mv; } ;
struct TYPE_9__ {TYPE_1__* sps; } ;
struct TYPE_12__ {TYPE_3__* ref; TYPE_2__ ps; } ;
struct TYPE_11__ {scalar_t__* list; } ;
struct TYPE_10__ {TYPE_4__* refPicList; int * tab_mvf; } ;
struct TYPE_8__ {int min_pu_width; } ;
typedef TYPE_4__ RefPicList ;
typedef int MvField ;
typedef int Mv ;
typedef TYPE_5__ HEVCContext ;


 TYPE_7__ TAB_MVF (int,int) ;

__attribute__((used)) static int mv_mp_mode_mx(HEVCContext *s, int x, int y, int pred_flag_index,
                         Mv *mv, int ref_idx_curr, int ref_idx)
{
    MvField *tab_mvf = s->ref->tab_mvf;
    int min_pu_width = s->ps.sps->min_pu_width;

    RefPicList *refPicList = s->ref->refPicList;

    if (((TAB_MVF(x, y).pred_flag) & (1 << pred_flag_index)) &&
        refPicList[pred_flag_index].list[TAB_MVF(x, y).ref_idx[pred_flag_index]] == refPicList[ref_idx_curr].list[ref_idx]) {
        *mv = TAB_MVF(x, y).mv[pred_flag_index];
        return 1;
    }
    return 0;
}

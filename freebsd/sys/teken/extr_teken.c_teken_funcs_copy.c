
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ tp_row; scalar_t__ tp_col; } ;
struct TYPE_17__ {int t_softc; TYPE_4__* t_funcs; TYPE_3__ t_winsize; } ;
typedef TYPE_5__ teken_t ;
struct TYPE_14__ {scalar_t__ tp_row; scalar_t__ tp_col; } ;
struct TYPE_13__ {scalar_t__ tp_row; scalar_t__ tp_col; } ;
struct TYPE_18__ {TYPE_2__ tr_begin; TYPE_1__ tr_end; } ;
typedef TYPE_6__ teken_rect_t ;
struct TYPE_19__ {scalar_t__ tp_row; scalar_t__ tp_col; } ;
typedef TYPE_7__ teken_pos_t ;
struct TYPE_16__ {int (* tf_copy ) (int ,TYPE_6__ const*,TYPE_7__ const*) ;} ;


 int stub1 (int ,TYPE_6__ const*,TYPE_7__ const*) ;
 int teken_assert (int) ;

__attribute__((used)) static inline void
teken_funcs_copy(const teken_t *t, const teken_rect_t *r, const teken_pos_t *p)
{

 teken_assert(r->tr_end.tp_row > r->tr_begin.tp_row);
 teken_assert(r->tr_end.tp_row <= t->t_winsize.tp_row);
 teken_assert(r->tr_end.tp_col > r->tr_begin.tp_col);
 teken_assert(r->tr_end.tp_col <= t->t_winsize.tp_col);
 teken_assert(p->tp_row + (r->tr_end.tp_row - r->tr_begin.tp_row) <= t->t_winsize.tp_row);
 teken_assert(p->tp_col + (r->tr_end.tp_col - r->tr_begin.tp_col) <= t->t_winsize.tp_col);

 teken_assert(t->t_funcs->tf_copy != ((void*)0));
 t->t_funcs->tf_copy(t->t_softc, r, p);
}

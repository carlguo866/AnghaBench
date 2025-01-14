
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ tp_row; scalar_t__ tp_col; } ;
struct TYPE_8__ {scalar_t__ tp_row; scalar_t__ tp_col; } ;
struct TYPE_7__ {TYPE_1__ t_cursor; TYPE_3__ t_winsize; } ;
typedef TYPE_2__ teken_t ;
typedef TYPE_3__ teken_pos_t ;



__attribute__((used)) static void
teken_trim_cursor_pos(teken_t *t, const teken_pos_t *new)
{
 const teken_pos_t *cur;

 cur = &t->t_winsize;

 if (cur->tp_row < new->tp_row || cur->tp_col < new->tp_col)
  return;
 if (t->t_cursor.tp_row >= new->tp_row)
  t->t_cursor.tp_row = new->tp_row - 1;
 if (t->t_cursor.tp_col >= new->tp_col)
  t->t_cursor.tp_col = new->tp_col - 1;
}

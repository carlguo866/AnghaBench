
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int status; scalar_t__ mouse_cut_end; scalar_t__ mouse_cut_start; int mouse_pos; } ;
typedef TYPE_1__ scr_stat ;


 int MOUSE_CUTTING ;
 int MOUSE_VISIBLE ;
 int mouse_cut (TYPE_1__*) ;
 int spltty () ;
 int splx (int) ;

__attribute__((used)) static void
mouse_cut_extend(scr_stat *scp)
{
    int start;
    int end;
    int s;

    if ((scp->status & MOUSE_VISIBLE) && !(scp->status & MOUSE_CUTTING)
 && (scp->mouse_cut_end >= 0)) {
 if (scp->mouse_cut_start <= scp->mouse_cut_end) {
     start = scp->mouse_cut_start;
     end = scp->mouse_cut_end;
 } else {
     start = scp->mouse_cut_end;
     end = scp->mouse_cut_start - 1;
 }
 s = spltty();
 if (scp->mouse_pos > end) {
     scp->mouse_cut_start = start;
     scp->mouse_cut_end = end;
 } else if (scp->mouse_pos < start) {
     scp->mouse_cut_start = end + 1;
     scp->mouse_cut_end = start;
 } else {
     if (scp->mouse_pos - start > end + 1 - scp->mouse_pos) {
  scp->mouse_cut_start = start;
  scp->mouse_cut_end = end;
     } else {
  scp->mouse_cut_start = end + 1;
  scp->mouse_cut_end = start;
     }
 }
 splx(s);
 mouse_cut(scp);
 scp->status |= MOUSE_CUTTING;
    }
}

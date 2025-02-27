
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* sel_widget; } ;
struct TYPE_3__ {scalar_t__ direction; int selection; int scroll; int h; int options_len; } ;
typedef TYPE_1__ RSelWidget ;


 TYPE_2__ I ;
 void* R_MAX (int,int ) ;
 void* R_MIN (int,int) ;
 scalar_t__ R_SELWIDGET_DIR_UP ;
 int R_SELWIDGET_MAXH ;

__attribute__((used)) static void selection_widget_down(int steps) {
 RSelWidget *sel_widget = I.sel_widget;
 if (sel_widget) {
  if (sel_widget->direction == R_SELWIDGET_DIR_UP) {
   sel_widget->selection = R_MAX (sel_widget->selection - steps, 0);
   if (steps == 1) {
    sel_widget->scroll = R_MAX (sel_widget->scroll - 1, 0);
   } else if (sel_widget->selection - sel_widget->scroll <= 0) {
    sel_widget->scroll = sel_widget->selection;
   }
  } else {
   int height = R_MIN (sel_widget->h, R_SELWIDGET_MAXH - 1);
   sel_widget->selection = R_MIN (sel_widget->selection + steps, sel_widget->options_len - 1);
   if (steps == 1) {
    sel_widget->scroll = R_MIN (sel_widget->scroll + 1, R_SELWIDGET_MAXH - 1);
   } else if (sel_widget->selection + (height - sel_widget->scroll) > sel_widget->options_len - 1) {
    sel_widget->scroll = height - (sel_widget->options_len - 1 - sel_widget->selection);
   }
  }
 }
}

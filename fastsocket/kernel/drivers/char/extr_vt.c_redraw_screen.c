
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vc_data {size_t vc_num; int vc_can_do_color; scalar_t__ vc_mode; int vc_screenbuf_size; int vc_origin; TYPE_1__* vc_sw; struct vc_data** vc_display_fg; } ;
struct TYPE_4__ {struct vc_data* d; } ;
struct TYPE_3__ {int (* con_switch ) (struct vc_data*) ;} ;


 int CON_IS_VISIBLE (struct vc_data*) ;
 scalar_t__ KD_GRAPHICS ;
 int WARN_CONSOLE_UNLOCKED () ;
 int clear_buffer_attributes (struct vc_data*) ;
 int compute_shiftstate () ;
 int do_update_region (struct vc_data*,int ,int) ;
 size_t fg_console ;
 int hide_cursor (struct vc_data*) ;
 int notify_update (struct vc_data*) ;
 int save_screen (struct vc_data*) ;
 int set_cursor (struct vc_data*) ;
 int set_leds () ;
 int set_origin (struct vc_data*) ;
 int set_palette (struct vc_data*) ;
 int stub1 (struct vc_data*) ;
 int update_attr (struct vc_data*) ;
 TYPE_2__* vc_cons ;
 scalar_t__ vt_force_oops_output (struct vc_data*) ;

void redraw_screen(struct vc_data *vc, int is_switch)
{
 int redraw = 0;

 WARN_CONSOLE_UNLOCKED();

 if (!vc) {


  return;
 }

 if (is_switch) {
  struct vc_data *old_vc = vc_cons[fg_console].d;
  if (old_vc == vc)
   return;
  if (!CON_IS_VISIBLE(vc))
   redraw = 1;
  *vc->vc_display_fg = vc;
  fg_console = vc->vc_num;
  hide_cursor(old_vc);
  if (!CON_IS_VISIBLE(old_vc)) {
   save_screen(old_vc);
   set_origin(old_vc);
  }
 } else {
  hide_cursor(vc);
  redraw = 1;
 }

 if (redraw) {
  int update;
  int old_was_color = vc->vc_can_do_color;

  set_origin(vc);
  update = vc->vc_sw->con_switch(vc);
  set_palette(vc);






  if (old_was_color != vc->vc_can_do_color) {
   update_attr(vc);
   clear_buffer_attributes(vc);
  }


  if ((update && vc->vc_mode != KD_GRAPHICS) ||
      vt_force_oops_output(vc))
   do_update_region(vc, vc->vc_origin, vc->vc_screenbuf_size / 2);
 }
 set_cursor(vc);
 if (is_switch) {
  set_leds();
  compute_shiftstate();
  notify_update(vc);
 }
}

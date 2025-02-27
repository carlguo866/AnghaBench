
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct window_mode_entry {struct window_copy_mode_data* data; } ;
struct screen {int * sel; } ;
struct window_copy_mode_data {scalar_t__ cy; scalar_t__ oy; scalar_t__ cx; scalar_t__ lastcx; scalar_t__ lastsx; int backing; int rectflag; struct screen screen; } ;


 scalar_t__ screen_hsize (int ) ;
 int screen_size_y (struct screen*) ;
 int window_copy_cursor_end_of_line (struct window_mode_entry*) ;
 scalar_t__ window_copy_find_length (struct window_mode_entry*,scalar_t__) ;
 int window_copy_redraw_screen (struct window_mode_entry*) ;
 int window_copy_update_selection (struct window_mode_entry*,int) ;

__attribute__((used)) static void
window_copy_pageup1(struct window_mode_entry *wme, int half_page)
{
 struct window_copy_mode_data *data = wme->data;
 struct screen *s = &data->screen;
 u_int n, ox, oy, px, py;

 oy = screen_hsize(data->backing) + data->cy - data->oy;
 ox = window_copy_find_length(wme, oy);

 if (data->cx != ox) {
  data->lastcx = data->cx;
  data->lastsx = ox;
 }
 data->cx = data->lastcx;

 n = 1;
 if (screen_size_y(s) > 2) {
  if (half_page)
   n = screen_size_y(s) / 2;
  else
   n = screen_size_y(s) - 2;
 }

 if (data->oy + n > screen_hsize(data->backing)) {
  data->oy = screen_hsize(data->backing);
  if (data->cy < n)
   data->cy = 0;
  else
   data->cy -= n;
 } else
  data->oy += n;

 if (data->screen.sel == ((void*)0) || !data->rectflag) {
  py = screen_hsize(data->backing) + data->cy - data->oy;
  px = window_copy_find_length(wme, py);
  if ((data->cx >= data->lastsx && data->cx != px) ||
      data->cx > px)
   window_copy_cursor_end_of_line(wme);
 }

 window_copy_update_selection(wme, 1);
 window_copy_redraw_screen(wme);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct window_mode_entry {scalar_t__ prefix; struct window_copy_mode_data* data; } ;
struct window_copy_mode_data {int scroll_exit; } ;
struct window_copy_cmd_state {struct window_mode_entry* wme; } ;
typedef enum window_copy_cmd_action { ____Placeholder_window_copy_cmd_action } window_copy_cmd_action ;


 int WINDOW_COPY_CMD_CANCEL ;
 int WINDOW_COPY_CMD_NOTHING ;
 scalar_t__ window_copy_pagedown (struct window_mode_entry*,int,int ) ;

__attribute__((used)) static enum window_copy_cmd_action
window_copy_cmd_halfpage_down(struct window_copy_cmd_state *cs)
{
 struct window_mode_entry *wme = cs->wme;
 struct window_copy_mode_data *data = wme->data;
 u_int np = wme->prefix;

 for (; np != 0; np--) {
  if (window_copy_pagedown(wme, 1, data->scroll_exit))
   return (WINDOW_COPY_CMD_CANCEL);
 }
 return (WINDOW_COPY_CMD_NOTHING);
}

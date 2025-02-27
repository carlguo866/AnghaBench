
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct window_mode_entry {scalar_t__ prefix; } ;
struct window_copy_cmd_state {struct window_mode_entry* wme; } ;
typedef enum window_copy_cmd_action { ____Placeholder_window_copy_cmd_action } window_copy_cmd_action ;


 int WINDOW_COPY_CMD_NOTHING ;
 int window_copy_previous_paragraph (struct window_mode_entry*) ;

__attribute__((used)) static enum window_copy_cmd_action
window_copy_cmd_previous_paragraph(struct window_copy_cmd_state *cs)
{
 struct window_mode_entry *wme = cs->wme;
 u_int np = wme->prefix;

 for (; np != 0; np--)
  window_copy_previous_paragraph(wme);
 return (WINDOW_COPY_CMD_NOTHING);
}

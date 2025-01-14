
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ xkb_keysym_t ;
typedef int uint32_t ;
struct wlr_session {int dummy; } ;
struct sway_keyboard {int dummy; } ;
struct TYPE_2__ {int backend; } ;


 scalar_t__ XKB_KEY_XF86Switch_VT_1 ;
 scalar_t__ XKB_KEY_XF86Switch_VT_12 ;
 TYPE_1__ server ;
 struct wlr_session* wlr_backend_get_session (int ) ;
 scalar_t__ wlr_backend_is_multi (int ) ;
 int wlr_session_change_vt (struct wlr_session*,unsigned int) ;

__attribute__((used)) static bool keyboard_execute_compositor_binding(struct sway_keyboard *keyboard,
  const xkb_keysym_t *pressed_keysyms, uint32_t modifiers, size_t keysyms_len) {
 for (size_t i = 0; i < keysyms_len; ++i) {
  xkb_keysym_t keysym = pressed_keysyms[i];
  if (keysym >= XKB_KEY_XF86Switch_VT_1 &&
    keysym <= XKB_KEY_XF86Switch_VT_12) {
   if (wlr_backend_is_multi(server.backend)) {
    struct wlr_session *session =
     wlr_backend_get_session(server.backend);
    if (session) {
     unsigned vt = keysym - XKB_KEY_XF86Switch_VT_1 + 1;
     wlr_session_change_vt(session, vt);
    }
   }
   return 1;
  }
 }

 return 0;
}

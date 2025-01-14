
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl_seat {int dummy; } ;
struct vo_wayland_state {int * touch; int * keyboard; int * pointer; } ;
typedef enum wl_seat_capability { ____Placeholder_wl_seat_capability } wl_seat_capability ;


 int WL_SEAT_CAPABILITY_KEYBOARD ;
 int WL_SEAT_CAPABILITY_POINTER ;
 int WL_SEAT_CAPABILITY_TOUCH ;
 int keyboard_listener ;
 int pointer_listener ;
 int touch_listener ;
 int wl_keyboard_add_listener (int *,int *,struct vo_wayland_state*) ;
 int wl_keyboard_destroy (int *) ;
 int wl_pointer_add_listener (int *,int *,struct vo_wayland_state*) ;
 int wl_pointer_destroy (int *) ;
 int * wl_seat_get_keyboard (struct wl_seat*) ;
 int * wl_seat_get_pointer (struct wl_seat*) ;
 int * wl_seat_get_touch (struct wl_seat*) ;
 int wl_touch_add_listener (int *,int *,struct vo_wayland_state*) ;
 int wl_touch_destroy (int *) ;
 int wl_touch_set_user_data (int *,struct vo_wayland_state*) ;

__attribute__((used)) static void seat_handle_caps(void *data, struct wl_seat *seat,
                             enum wl_seat_capability caps)
{
    struct vo_wayland_state *wl = data;

    if ((caps & WL_SEAT_CAPABILITY_POINTER) && !wl->pointer) {
        wl->pointer = wl_seat_get_pointer(seat);
        wl_pointer_add_listener(wl->pointer, &pointer_listener, wl);
    } else if (!(caps & WL_SEAT_CAPABILITY_POINTER) && wl->pointer) {
        wl_pointer_destroy(wl->pointer);
        wl->pointer = ((void*)0);
    }

    if ((caps & WL_SEAT_CAPABILITY_KEYBOARD) && !wl->keyboard) {
        wl->keyboard = wl_seat_get_keyboard(seat);
        wl_keyboard_add_listener(wl->keyboard, &keyboard_listener, wl);
    } else if (!(caps & WL_SEAT_CAPABILITY_KEYBOARD) && wl->keyboard) {
        wl_keyboard_destroy(wl->keyboard);
        wl->keyboard = ((void*)0);
    }

    if ((caps & WL_SEAT_CAPABILITY_TOUCH) && !wl->touch) {
        wl->touch = wl_seat_get_touch(seat);
        wl_touch_set_user_data(wl->touch, wl);
        wl_touch_add_listener(wl->touch, &touch_listener, wl);
    } else if (!(caps & WL_SEAT_CAPABILITY_TOUCH) && wl->touch) {
        wl_touch_destroy(wl->touch);
        wl->touch = ((void*)0);
    }
}

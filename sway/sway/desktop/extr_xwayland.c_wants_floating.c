
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ xcb_atom_t ;
struct wlr_xwayland_surface_size_hints {scalar_t__ min_width; scalar_t__ min_height; scalar_t__ max_width; scalar_t__ max_height; } ;
struct wlr_xwayland_surface {size_t window_type_len; scalar_t__* window_type; struct wlr_xwayland_surface_size_hints* size_hints; scalar_t__ modal; } ;
struct sway_xwayland {scalar_t__* atoms; } ;
struct sway_view {struct wlr_xwayland_surface* wlr_xwayland_surface; } ;
struct TYPE_2__ {struct sway_xwayland xwayland; } ;


 size_t NET_WM_WINDOW_TYPE_DIALOG ;
 size_t NET_WM_WINDOW_TYPE_SPLASH ;
 size_t NET_WM_WINDOW_TYPE_TOOLBAR ;
 size_t NET_WM_WINDOW_TYPE_UTILITY ;
 TYPE_1__ server ;
 int * xwayland_view_from_view (struct sway_view*) ;

__attribute__((used)) static bool wants_floating(struct sway_view *view) {
 if (xwayland_view_from_view(view) == ((void*)0)) {
  return 0;
 }
 struct wlr_xwayland_surface *surface = view->wlr_xwayland_surface;
 struct sway_xwayland *xwayland = &server.xwayland;

 if (surface->modal) {
  return 1;
 }

 for (size_t i = 0; i < surface->window_type_len; ++i) {
  xcb_atom_t type = surface->window_type[i];
  if (type == xwayland->atoms[NET_WM_WINDOW_TYPE_DIALOG] ||
    type == xwayland->atoms[NET_WM_WINDOW_TYPE_UTILITY] ||
    type == xwayland->atoms[NET_WM_WINDOW_TYPE_TOOLBAR] ||
    type == xwayland->atoms[NET_WM_WINDOW_TYPE_SPLASH]) {
   return 1;
  }
 }

 struct wlr_xwayland_surface_size_hints *size_hints = surface->size_hints;
 if (size_hints != ((void*)0) &&
   size_hints->min_width > 0 && size_hints->min_height > 0 &&
   (size_hints->max_width == size_hints->min_width ||
   size_hints->max_height == size_hints->min_height)) {
  return 1;
 }

 return 0;
}

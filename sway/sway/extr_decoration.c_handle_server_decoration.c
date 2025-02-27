
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mode; int destroy; } ;
struct wlr_server_decoration {TYPE_1__ events; } ;
struct wl_listener {int dummy; } ;
struct TYPE_5__ {int notify; } ;
struct sway_server_decoration {int link; TYPE_2__ mode; TYPE_2__ destroy; struct wlr_server_decoration* wlr_server_decoration; } ;
struct TYPE_6__ {int decorations; } ;


 struct sway_server_decoration* calloc (int,int) ;
 TYPE_3__ server ;
 int server_decoration_handle_destroy ;
 int server_decoration_handle_mode ;
 int wl_list_insert (int *,int *) ;
 int wl_signal_add (int *,TYPE_2__*) ;

void handle_server_decoration(struct wl_listener *listener, void *data) {
 struct wlr_server_decoration *wlr_deco = data;

 struct sway_server_decoration *deco = calloc(1, sizeof(*deco));
 if (deco == ((void*)0)) {
  return;
 }

 deco->wlr_server_decoration = wlr_deco;

 wl_signal_add(&wlr_deco->events.destroy, &deco->destroy);
 deco->destroy.notify = server_decoration_handle_destroy;

 wl_signal_add(&wlr_deco->events.mode, &deco->mode);
 deco->mode.notify = server_decoration_handle_mode;

 wl_list_insert(&server.decorations, &deco->link);
}

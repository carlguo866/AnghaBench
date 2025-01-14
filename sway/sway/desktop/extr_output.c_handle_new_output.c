
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int present; int scale; int transform; int mode; int destroy; } ;
struct wlr_output {TYPE_1__ events; int name; } ;
struct wl_listener {int dummy; } ;
struct sway_server {int dummy; } ;
struct TYPE_8__ {int notify; } ;
struct sway_output {int wlr_output; TYPE_4__ damage_destroy; TYPE_3__* damage; TYPE_4__ damage_frame; TYPE_4__ present; TYPE_4__ scale; TYPE_4__ transform; TYPE_4__ mode; TYPE_4__ destroy; struct sway_server* server; } ;
struct output_config {scalar_t__ enabled; } ;
struct TYPE_6__ {int destroy; int frame; } ;
struct TYPE_7__ {TYPE_2__ events; } ;


 int SWAY_DEBUG ;
 int damage_handle_destroy ;
 int damage_handle_frame ;
 struct output_config* find_output_config (struct sway_output*) ;
 int handle_destroy ;
 int handle_mode ;
 int handle_present ;
 int handle_scale ;
 int handle_transform ;
 int new_output ;
 struct sway_output* output_create (struct wlr_output*) ;
 int output_enable (struct sway_output*,struct output_config*) ;
 struct sway_server* server ;
 int sway_log (int ,char*,struct wlr_output*,int ) ;
 int transaction_commit_dirty () ;
 int update_output_manager_config (struct sway_server*) ;
 struct sway_server* wl_container_of (struct wl_listener*,int ,int ) ;
 int wl_signal_add (int *,TYPE_4__*) ;
 TYPE_3__* wlr_output_damage_create (struct wlr_output*) ;
 int wlr_output_enable (int ,int) ;

void handle_new_output(struct wl_listener *listener, void *data) {
 struct sway_server *server = wl_container_of(listener, server, new_output);
 struct wlr_output *wlr_output = data;
 sway_log(SWAY_DEBUG, "New output %p: %s", wlr_output, wlr_output->name);

 struct sway_output *output = output_create(wlr_output);
 if (!output) {
  return;
 }
 output->server = server;
 output->damage = wlr_output_damage_create(wlr_output);

 wl_signal_add(&wlr_output->events.destroy, &output->destroy);
 output->destroy.notify = handle_destroy;
 wl_signal_add(&wlr_output->events.mode, &output->mode);
 output->mode.notify = handle_mode;
 wl_signal_add(&wlr_output->events.transform, &output->transform);
 output->transform.notify = handle_transform;
 wl_signal_add(&wlr_output->events.scale, &output->scale);
 output->scale.notify = handle_scale;
 wl_signal_add(&wlr_output->events.present, &output->present);
 output->present.notify = handle_present;
 wl_signal_add(&output->damage->events.frame, &output->damage_frame);
 output->damage_frame.notify = damage_handle_frame;
 wl_signal_add(&output->damage->events.destroy, &output->damage_destroy);
 output->damage_destroy.notify = damage_handle_destroy;

 struct output_config *oc = find_output_config(output);
 if (!oc || oc->enabled) {
  output_enable(output, oc);
 } else {
  wlr_output_enable(output->wlr_output, 0);
 }

 transaction_commit_dirty();

 update_output_manager_config(server);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct wl_data_offer {int dummy; } ;
struct vo_wayland_state {scalar_t__ dnd_action; } ;


 scalar_t__ DND_APPEND ;
 scalar_t__ DND_REPLACE ;
 int MP_VERBOSE (struct vo_wayland_state*,char*,char*) ;
 int WL_DATA_DEVICE_MANAGER_DND_ACTION_COPY ;

__attribute__((used)) static void data_offer_action(void *data, struct wl_data_offer *wl_data_offer, uint32_t dnd_action)
{
    struct vo_wayland_state *wl = data;
    wl->dnd_action = dnd_action & WL_DATA_DEVICE_MANAGER_DND_ACTION_COPY ?
                     DND_REPLACE : DND_APPEND;
    MP_VERBOSE(wl, "DND action is %s\n",
               wl->dnd_action == DND_REPLACE ? "DND_REPLACE" : "DND_APPEND");
}

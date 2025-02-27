
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sway_seat {int dummy; } ;
struct sway_output {int dummy; } ;
struct sway_node {scalar_t__ type; TYPE_1__* sway_container; } ;
struct seatop_default_event {struct sway_node* previous_node; } ;
struct TYPE_4__ {scalar_t__ focus_follows_mouse; } ;
struct TYPE_3__ {int view; } ;


 scalar_t__ FOLLOWS_ALWAYS ;
 scalar_t__ N_WORKSPACE ;
 TYPE_2__* config ;
 struct sway_output* node_get_output (struct sway_node*) ;
 scalar_t__ node_is_view (struct sway_node*) ;
 struct sway_node* seat_get_focus (struct sway_seat*) ;
 struct sway_node* seat_get_focus_inactive (struct sway_seat*,struct sway_node*) ;
 int seat_set_focus (struct sway_seat*,struct sway_node*) ;
 scalar_t__ view_is_visible (int ) ;

__attribute__((used)) static void check_focus_follows_mouse(struct sway_seat *seat,
  struct seatop_default_event *e, struct sway_node *hovered_node) {
 struct sway_node *focus = seat_get_focus(seat);



 if (focus && hovered_node->type == N_WORKSPACE) {
  struct sway_output *focused_output = node_get_output(focus);
  struct sway_output *hovered_output = node_get_output(hovered_node);
  if (hovered_output != focused_output) {
   seat_set_focus(seat, seat_get_focus_inactive(seat, hovered_node));
  }
  return;
 }



 if (node_is_view(hovered_node) &&
   view_is_visible(hovered_node->sway_container->view)) {




  if (hovered_node != e->previous_node ||
    config->focus_follows_mouse == FOLLOWS_ALWAYS) {
   seat_set_focus(seat, hovered_node);
  }
 }
}

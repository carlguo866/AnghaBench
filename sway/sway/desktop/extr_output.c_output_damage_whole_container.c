
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wlr_box {int height; int width; int y; int x; } ;
struct sway_output {int damage; TYPE_1__* wlr_output; scalar_t__ ly; scalar_t__ lx; } ;
struct TYPE_4__ {int height; int width; scalar_t__ y; scalar_t__ x; } ;
struct sway_container {scalar_t__ view; TYPE_2__ current; } ;
struct TYPE_3__ {int scale; } ;


 int container_for_each_child (struct sway_container*,int (*) (struct sway_container*,struct sway_output*),struct sway_output*) ;
 int damage_child_views_iterator (struct sway_container*,struct sway_output*) ;
 int scale_box (struct wlr_box*,int ) ;
 int wlr_output_damage_add_box (int ,struct wlr_box*) ;

void output_damage_whole_container(struct sway_output *output,
  struct sway_container *con) {

 struct wlr_box box = {
  .x = con->current.x - output->lx - 1,
  .y = con->current.y - output->ly - 1,
  .width = con->current.width + 2,
  .height = con->current.height + 2,
 };
 scale_box(&box, output->wlr_output->scale);
 wlr_output_damage_add_box(output->damage, &box);

 if (con->view) {
  damage_child_views_iterator(con, output);
 } else {
  container_for_each_child(con, damage_child_views_iterator, output);
 }
}

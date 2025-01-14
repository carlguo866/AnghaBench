
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct sway_container {double width_fraction; double height_fraction; scalar_t__ height; scalar_t__ width; } ;
struct resize_amount {scalar_t__ unit; float amount; } ;
struct cmd_results {int dummy; } ;
struct TYPE_3__ {struct sway_container* container; } ;
struct TYPE_4__ {TYPE_1__ handler_context; } ;


 int CMD_INVALID ;
 int CMD_SUCCESS ;
 scalar_t__ RESIZE_UNIT_DEFAULT ;
 scalar_t__ RESIZE_UNIT_PPT ;
 struct cmd_results* cmd_results_new (int ,char*) ;
 TYPE_2__* config ;
 int container_resize_tiled (struct sway_container*,int ,float) ;
 scalar_t__ is_horizontal (int ) ;

__attribute__((used)) static struct cmd_results *resize_adjust_tiled(uint32_t axis,
  struct resize_amount *amount) {
 struct sway_container *current = config->handler_context.container;

 if (amount->unit == RESIZE_UNIT_DEFAULT) {
  amount->unit = RESIZE_UNIT_PPT;
 }
 if (amount->unit == RESIZE_UNIT_PPT) {
  float pct = amount->amount / 100.0f;

  if (is_horizontal(axis)) {
   amount->amount = (float)current->width * pct;
  } else {
   amount->amount = (float)current->height * pct;
  }
 }

 double old_width = current->width_fraction;
 double old_height = current->height_fraction;
 container_resize_tiled(current, axis, amount->amount);
 if (current->width_fraction == old_width &&
   current->height_fraction == old_height) {
  return cmd_results_new(CMD_INVALID, "Cannot resize any further");
 }
 return cmd_results_new(CMD_SUCCESS, ((void*)0));
}

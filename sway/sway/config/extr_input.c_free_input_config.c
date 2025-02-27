
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_config {struct input_config* mapped_to_region; struct input_config* mapped_to_output; struct input_config* mapped_from_region; struct input_config* xkb_variant; struct input_config* xkb_rules; struct input_config* xkb_options; struct input_config* xkb_model; struct input_config* xkb_layout; struct input_config* xkb_file; struct input_config* identifier; } ;


 int free (struct input_config*) ;

void free_input_config(struct input_config *ic) {
 if (!ic) {
  return;
 }
 free(ic->identifier);
 free(ic->xkb_file);
 free(ic->xkb_layout);
 free(ic->xkb_model);
 free(ic->xkb_options);
 free(ic->xkb_rules);
 free(ic->xkb_variant);
 free(ic->mapped_from_region);
 free(ic->mapped_to_output);
 free(ic->mapped_to_region);
 free(ic);
}

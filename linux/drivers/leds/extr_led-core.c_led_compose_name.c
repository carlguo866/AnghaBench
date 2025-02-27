
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct led_properties {char* label; size_t color; int func_enum; scalar_t__ function; scalar_t__ color_present; scalar_t__ func_enum_present; } ;
struct led_init_data {char* devicename; char* default_label; scalar_t__ devname_mandatory; struct fwnode_handle* fwnode; } ;
struct fwnode_handle {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {char* name; } ;


 int EINVAL ;
 int LED_MAX_NAME_SIZE ;
 int dev_err (struct device*,char*) ;
 scalar_t__ is_of_node (struct fwnode_handle*) ;
 char** led_colors ;
 int led_parse_fwnode_props (struct device*,struct fwnode_handle*,struct led_properties*) ;
 int snprintf (char*,int,char*,char const*,char*,...) ;
 int strscpy (char*,char*,int) ;
 TYPE_1__* to_of_node (struct fwnode_handle*) ;

int led_compose_name(struct device *dev, struct led_init_data *init_data,
       char *led_classdev_name)
{
 struct led_properties props = {};
 struct fwnode_handle *fwnode = init_data->fwnode;
 const char *devicename = init_data->devicename;

 if (!led_classdev_name)
  return -EINVAL;

 led_parse_fwnode_props(dev, fwnode, &props);

 if (props.label) {






  if (!devicename) {
   strscpy(led_classdev_name, props.label,
    LED_MAX_NAME_SIZE);
  } else {
   snprintf(led_classdev_name, LED_MAX_NAME_SIZE, "%s:%s",
     devicename, props.label);
  }
 } else if (props.function || props.color_present) {
  char tmp_buf[LED_MAX_NAME_SIZE];

  if (props.func_enum_present) {
   snprintf(tmp_buf, LED_MAX_NAME_SIZE, "%s:%s-%d",
     props.color_present ? led_colors[props.color] : "",
     props.function ?: "", props.func_enum);
  } else {
   snprintf(tmp_buf, LED_MAX_NAME_SIZE, "%s:%s",
     props.color_present ? led_colors[props.color] : "",
     props.function ?: "");
  }
  if (init_data->devname_mandatory) {
   snprintf(led_classdev_name, LED_MAX_NAME_SIZE, "%s:%s",
     devicename, tmp_buf);
  } else {
   strscpy(led_classdev_name, tmp_buf, LED_MAX_NAME_SIZE);

  }
 } else if (init_data->default_label) {
  if (!devicename) {
   dev_err(dev, "Legacy LED naming requires devicename segment");
   return -EINVAL;
  }
  snprintf(led_classdev_name, LED_MAX_NAME_SIZE, "%s:%s",
    devicename, init_data->default_label);
 } else if (is_of_node(fwnode)) {
  strscpy(led_classdev_name, to_of_node(fwnode)->name,
   LED_MAX_NAME_SIZE);
 } else
  return -EINVAL;

 return 0;
}

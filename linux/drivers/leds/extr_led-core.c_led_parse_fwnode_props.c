
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_properties {scalar_t__ color; int color_present; scalar_t__ func_enum; int func_enum_present; int function; int label; } ;
struct fwnode_handle {int dummy; } ;
struct device {int dummy; } ;


 scalar_t__ LED_COLOR_ID_MAX ;
 int dev_err (struct device*,char*,...) ;
 scalar_t__ fwnode_property_present (struct fwnode_handle*,char*) ;
 int fwnode_property_read_string (struct fwnode_handle*,char*,int *) ;
 int fwnode_property_read_u32 (struct fwnode_handle*,char*,scalar_t__*) ;

__attribute__((used)) static void led_parse_fwnode_props(struct device *dev,
       struct fwnode_handle *fwnode,
       struct led_properties *props)
{
 int ret;

 if (!fwnode)
  return;

 if (fwnode_property_present(fwnode, "label")) {
  ret = fwnode_property_read_string(fwnode, "label", &props->label);
  if (ret)
   dev_err(dev, "Error parsing 'label' property (%d)\n", ret);
  return;
 }

 if (fwnode_property_present(fwnode, "color")) {
  ret = fwnode_property_read_u32(fwnode, "color", &props->color);
  if (ret)
   dev_err(dev, "Error parsing 'color' property (%d)\n", ret);
  else if (props->color >= LED_COLOR_ID_MAX)
   dev_err(dev, "LED color identifier out of range\n");
  else
   props->color_present = 1;
 }


 if (!fwnode_property_present(fwnode, "function"))
  return;

 ret = fwnode_property_read_string(fwnode, "function", &props->function);
 if (ret) {
  dev_err(dev,
   "Error parsing 'function' property (%d)\n",
   ret);
 }

 if (!fwnode_property_present(fwnode, "function-enumerator"))
  return;

 ret = fwnode_property_read_u32(fwnode, "function-enumerator",
           &props->func_enum);
 if (ret) {
  dev_err(dev,
   "Error parsing 'function-enumerator' property (%d)\n",
   ret);
 } else {
  props->func_enum_present = 1;
 }
}

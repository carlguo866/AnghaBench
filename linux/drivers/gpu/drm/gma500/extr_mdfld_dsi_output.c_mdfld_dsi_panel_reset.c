
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DRM_ERROR (char*) ;
 int EINVAL ;
 int gpio_direction_output (unsigned int,int) ;
 int gpio_free (unsigned int) ;
 int gpio_get_value (int) ;
 scalar_t__ gpio_is_valid (unsigned int) ;
 int gpio_request (unsigned int,char*) ;

int mdfld_dsi_panel_reset(int pipe)
{
 unsigned gpio;
 int ret = 0;

 switch (pipe) {
 case 0:
  gpio = 128;
  break;
 case 2:
  gpio = 34;
  break;
 default:
  DRM_ERROR("Invalid output\n");
  return -EINVAL;
 }

 ret = gpio_request(gpio, "gfx");
 if (ret) {
  DRM_ERROR("gpio_rqueset failed\n");
  return ret;
 }

 ret = gpio_direction_output(gpio, 1);
 if (ret) {
  DRM_ERROR("gpio_direction_output failed\n");
  goto gpio_error;
 }

 gpio_get_value(128);

gpio_error:
 if (gpio_is_valid(gpio))
  gpio_free(gpio);

 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int ARRAY_AND_SIZE (int ) ;
 int gpio_request_array (int ) ;
 int palmte_bl_gpios ;

__attribute__((used)) static int palmte2_backlight_init(struct device *dev)
{
 return gpio_request_array(ARRAY_AND_SIZE(palmte_bl_gpios));
}

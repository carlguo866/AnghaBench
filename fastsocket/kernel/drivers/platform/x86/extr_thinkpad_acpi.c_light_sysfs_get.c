
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 int LED_FULL ;
 int LED_OFF ;
 int light_get_status () ;

__attribute__((used)) static enum led_brightness light_sysfs_get(struct led_classdev *led_cdev)
{
 return (light_get_status() == 1)? LED_FULL : LED_OFF;
}

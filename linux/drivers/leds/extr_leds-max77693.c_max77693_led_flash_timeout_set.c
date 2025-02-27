
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct max77693_sub_led {int flash_timeout; } ;
struct max77693_led_device {int lock; } ;
struct led_classdev_flash {int dummy; } ;


 struct max77693_sub_led* flcdev_to_sub_led (struct led_classdev_flash*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct max77693_led_device* sub_led_to_led (struct max77693_sub_led*) ;

__attribute__((used)) static int max77693_led_flash_timeout_set(
    struct led_classdev_flash *fled_cdev,
    u32 timeout)
{
 struct max77693_sub_led *sub_led = flcdev_to_sub_led(fled_cdev);
 struct max77693_led_device *led = sub_led_to_led(sub_led);

 mutex_lock(&led->lock);
 sub_led->flash_timeout = timeout;
 mutex_unlock(&led->lock);

 return 0;
}

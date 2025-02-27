
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev_flash {int dummy; } ;
struct led_classdev {int dummy; } ;
struct ktd2692_context {int mode; int lock; int aux_gpio; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 int KTD2692_LOW ;
 int KTD2692_MODE_DISABLE ;
 int KTD2692_MODE_MOVIE ;
 int KTD2692_REG_MODE_BASE ;
 int KTD2692_REG_MOVIE_CURRENT_BASE ;
 int LED_OFF ;
 struct ktd2692_context* fled_cdev_to_led (struct led_classdev_flash*) ;
 int gpiod_direction_output (int ,int ) ;
 int ktd2692_expresswire_write (struct ktd2692_context*,int) ;
 struct led_classdev_flash* lcdev_to_flcdev (struct led_classdev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ktd2692_led_brightness_set(struct led_classdev *led_cdev,
           enum led_brightness brightness)
{
 struct led_classdev_flash *fled_cdev = lcdev_to_flcdev(led_cdev);
 struct ktd2692_context *led = fled_cdev_to_led(fled_cdev);

 mutex_lock(&led->lock);

 if (brightness == LED_OFF) {
  led->mode = KTD2692_MODE_DISABLE;
  gpiod_direction_output(led->aux_gpio, KTD2692_LOW);
 } else {
  ktd2692_expresswire_write(led, brightness |
     KTD2692_REG_MOVIE_CURRENT_BASE);
  led->mode = KTD2692_MODE_MOVIE;
 }

 ktd2692_expresswire_write(led, led->mode | KTD2692_REG_MODE_BASE);
 mutex_unlock(&led->lock);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_nu801_led_data {int cdev; } ;
struct led_nu801_data {int num_leds; scalar_t__ cki; scalar_t__ sdi; scalar_t__ lei; int work; struct led_nu801_led_data* led_chain; } ;


 int cancel_delayed_work_sync (int *) ;
 int gpio_free (scalar_t__) ;
 int kfree (struct led_nu801_led_data*) ;
 int led_classdev_unregister (int *) ;

__attribute__((used)) static void led_nu801_delete_chain(struct led_nu801_data *controller)
{
 struct led_nu801_led_data *led_chain;
 struct led_nu801_led_data *led;
 int index;
 int num_leds;

 led_chain = controller->led_chain;
 controller->led_chain = 0;
 num_leds = controller->num_leds;
 controller->num_leds = 0;
 cancel_delayed_work_sync(&controller->work);

 for (index = 0; index < num_leds; index++) {
  led = &led_chain[index];
  led_classdev_unregister(&led->cdev);
 }

 gpio_free(controller->cki);
 gpio_free(controller->sdi);
 if (controller->lei >= 0)
  gpio_free(controller->lei);

 kfree(led_chain);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct led_classdev {int dummy; } ;
typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;


 int LED_AUDIO_MICMUTE ;
 int LED_OFF ;
 int tpacpi_led_set (int ,int) ;

__attribute__((used)) static int tpacpi_led_micmute_set(struct led_classdev *led_cdev,
      enum led_brightness brightness)
{
 return tpacpi_led_set(LED_AUDIO_MICMUTE, brightness != LED_OFF);
}

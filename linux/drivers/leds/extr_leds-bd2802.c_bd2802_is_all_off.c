
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bd2802_led {int dummy; } ;


 int LED_NUM ;
 int bd2802_is_led_off (struct bd2802_led*,int) ;

__attribute__((used)) static inline int bd2802_is_all_off(struct bd2802_led *led)
{
 int i;

 for (i = 0; i < LED_NUM; i++)
  if (!bd2802_is_led_off(led, i))
   return 0;

 return 1;
}

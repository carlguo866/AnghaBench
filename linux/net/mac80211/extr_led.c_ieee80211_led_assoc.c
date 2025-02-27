
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_local {int assoc_led; int assoc_led_active; } ;


 int LED_FULL ;
 int LED_OFF ;
 int atomic_read (int *) ;
 int led_trigger_event (int *,int ) ;

void ieee80211_led_assoc(struct ieee80211_local *local, bool associated)
{
 if (!atomic_read(&local->assoc_led_active))
  return;
 if (associated)
  led_trigger_event(&local->assoc_led, LED_FULL);
 else
  led_trigger_event(&local->assoc_led, LED_OFF);
}

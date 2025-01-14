
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int (* blink_set ) (TYPE_3__*,unsigned long*,unsigned long*) ;} ;
struct TYPE_8__ {int flags; TYPE_3__ led_dev; } ;
struct rt2x00_dev {TYPE_4__ led_radio; TYPE_4__ led_qual; TYPE_2__* ops; TYPE_4__ led_assoc; TYPE_1__* hw; } ;
typedef int name ;
struct TYPE_6__ {char* name; } ;
struct TYPE_5__ {int wiphy; } ;


 int LED_INITIALIZED ;
 int rt2x00leds_register_led (struct rt2x00_dev*,TYPE_4__*,char*) ;
 int rt2x00leds_unregister (struct rt2x00_dev*) ;
 int snprintf (char*,int,char*,char*,char const*) ;
 int stub1 (TYPE_3__*,unsigned long*,unsigned long*) ;
 char* wiphy_name (int ) ;

void rt2x00leds_register(struct rt2x00_dev *rt2x00dev)
{
 char name[36];
 int retval;
 unsigned long on_period;
 unsigned long off_period;
 const char *phy_name = wiphy_name(rt2x00dev->hw->wiphy);

 if (rt2x00dev->led_radio.flags & LED_INITIALIZED) {
  snprintf(name, sizeof(name), "%s-%s::radio",
    rt2x00dev->ops->name, phy_name);

  retval = rt2x00leds_register_led(rt2x00dev,
       &rt2x00dev->led_radio,
       name);
  if (retval)
   goto exit_fail;
 }

 if (rt2x00dev->led_assoc.flags & LED_INITIALIZED) {
  snprintf(name, sizeof(name), "%s-%s::assoc",
    rt2x00dev->ops->name, phy_name);

  retval = rt2x00leds_register_led(rt2x00dev,
       &rt2x00dev->led_assoc,
       name);
  if (retval)
   goto exit_fail;
 }

 if (rt2x00dev->led_qual.flags & LED_INITIALIZED) {
  snprintf(name, sizeof(name), "%s-%s::quality",
    rt2x00dev->ops->name, phy_name);

  retval = rt2x00leds_register_led(rt2x00dev,
       &rt2x00dev->led_qual,
       name);
  if (retval)
   goto exit_fail;
 }






 if (rt2x00dev->led_radio.led_dev.blink_set) {
  on_period = 70;
  off_period = 30;
  rt2x00dev->led_radio.led_dev.blink_set(
      &rt2x00dev->led_radio.led_dev, &on_period, &off_period);
 }

 return;

exit_fail:
 rt2x00leds_unregister(rt2x00dev);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rt2x00_dev {TYPE_1__* ops; int cap_flags; int flags; } ;
struct TYPE_4__ {int (* set_device_state ) (struct rt2x00_dev*,int ) ;} ;
struct TYPE_3__ {TYPE_2__* lib; } ;


 int CAPABILITY_VCO_RECALIBRATION ;
 int DEVICE_STATE_ENABLED_RADIO ;
 int STATE_RADIO_IRQ_OFF ;
 int STATE_RADIO_OFF ;
 int rt2x00led_led_activity (struct rt2x00_dev*,int) ;
 int rt2x00leds_led_radio (struct rt2x00_dev*,int) ;
 int rt2x00link_stop_agc (struct rt2x00_dev*) ;
 int rt2x00link_stop_tuner (struct rt2x00_dev*) ;
 int rt2x00link_stop_vcocal (struct rt2x00_dev*) ;
 int rt2x00link_stop_watchdog (struct rt2x00_dev*) ;
 int rt2x00queue_flush_queues (struct rt2x00_dev*,int) ;
 int rt2x00queue_stop_queues (struct rt2x00_dev*) ;
 int stub1 (struct rt2x00_dev*,int ) ;
 int stub2 (struct rt2x00_dev*,int ) ;
 int test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

void rt2x00lib_disable_radio(struct rt2x00_dev *rt2x00dev)
{
 if (!test_and_clear_bit(DEVICE_STATE_ENABLED_RADIO, &rt2x00dev->flags))
  return;




 rt2x00link_stop_watchdog(rt2x00dev);




 rt2x00link_stop_agc(rt2x00dev);
 if (test_bit(CAPABILITY_VCO_RECALIBRATION, &rt2x00dev->cap_flags))
  rt2x00link_stop_vcocal(rt2x00dev);
 rt2x00link_stop_tuner(rt2x00dev);
 rt2x00queue_stop_queues(rt2x00dev);
 rt2x00queue_flush_queues(rt2x00dev, 1);




 rt2x00dev->ops->lib->set_device_state(rt2x00dev, STATE_RADIO_OFF);
 rt2x00dev->ops->lib->set_device_state(rt2x00dev, STATE_RADIO_IRQ_OFF);
 rt2x00led_led_activity(rt2x00dev, 0);
 rt2x00leds_led_radio(rt2x00dev, 0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clock_event_device {unsigned long min_delta_ticks; unsigned long max_delta_ticks; } ;


 int clockevents_config (struct clock_event_device*,int ) ;
 int clockevents_register_device (struct clock_event_device*) ;

void clockevents_config_and_register(struct clock_event_device *dev,
         u32 freq, unsigned long min_delta,
         unsigned long max_delta)
{
 dev->min_delta_ticks = min_delta;
 dev->max_delta_ticks = max_delta;
 clockevents_config(dev, freq);
 clockevents_register_device(dev);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;



__attribute__((used)) static inline int tick_device_uses_broadcast(struct clock_event_device *dev,
          int cpu)
{
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_tmu_channel {int dummy; } ;
struct clock_event_device {int dummy; } ;


 int BUG_ON (int) ;
 struct sh_tmu_channel* ced_to_sh_tmu (struct clock_event_device*) ;
 int clockevent_state_oneshot (struct clock_event_device*) ;
 int sh_tmu_set_next (struct sh_tmu_channel*,unsigned long,int ) ;

__attribute__((used)) static int sh_tmu_clock_event_next(unsigned long delta,
       struct clock_event_device *ced)
{
 struct sh_tmu_channel *ch = ced_to_sh_tmu(ced);

 BUG_ON(!clockevent_state_oneshot(ced));


 sh_tmu_set_next(ch, delta, 0);
 return 0;
}

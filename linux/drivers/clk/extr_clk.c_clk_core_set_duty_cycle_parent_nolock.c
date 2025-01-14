
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk_duty {int dummy; } ;
struct clk_core {int flags; TYPE_1__* parent; int duty; } ;
struct TYPE_2__ {int duty; } ;


 int CLK_DUTY_CYCLE_PARENT ;
 int CLK_SET_RATE_PARENT ;
 int clk_core_set_duty_cycle_nolock (TYPE_1__*,struct clk_duty*) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int clk_core_set_duty_cycle_parent_nolock(struct clk_core *core,
       struct clk_duty *duty)
{
 int ret = 0;

 if (core->parent &&
     core->flags & (CLK_DUTY_CYCLE_PARENT | CLK_SET_RATE_PARENT)) {
  ret = clk_core_set_duty_cycle_nolock(core->parent, duty);
  memcpy(&core->duty, &core->parent->duty, sizeof(core->duty));
 }

 return ret;
}

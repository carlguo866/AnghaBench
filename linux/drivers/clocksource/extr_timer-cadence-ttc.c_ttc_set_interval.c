
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct ttc_timer {scalar_t__ base_addr; } ;


 unsigned long CNT_CNTRL_RESET ;
 unsigned long TTC_CNT_CNTRL_DISABLE_MASK ;
 scalar_t__ TTC_CNT_CNTRL_OFFSET ;
 scalar_t__ TTC_INTR_VAL_OFFSET ;
 unsigned long readl_relaxed (scalar_t__) ;
 int writel_relaxed (unsigned long,scalar_t__) ;

__attribute__((used)) static void ttc_set_interval(struct ttc_timer *timer,
     unsigned long cycles)
{
 u32 ctrl_reg;


 ctrl_reg = readl_relaxed(timer->base_addr + TTC_CNT_CNTRL_OFFSET);
 ctrl_reg |= TTC_CNT_CNTRL_DISABLE_MASK;
 writel_relaxed(ctrl_reg, timer->base_addr + TTC_CNT_CNTRL_OFFSET);

 writel_relaxed(cycles, timer->base_addr + TTC_INTR_VAL_OFFSET);





 ctrl_reg |= CNT_CNTRL_RESET;
 ctrl_reg &= ~TTC_CNT_CNTRL_DISABLE_MASK;
 writel_relaxed(ctrl_reg, timer->base_addr + TTC_CNT_CNTRL_OFFSET);
}

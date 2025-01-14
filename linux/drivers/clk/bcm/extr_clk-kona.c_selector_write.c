
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct ccu_data {int dummy; } ;
struct bcm_clk_trig {int dummy; } ;
struct bcm_clk_sel {scalar_t__ clk_index; } ;
struct bcm_clk_gate {int dummy; } ;


 int __ccu_write_disable (struct ccu_data*) ;
 int __ccu_write_enable (struct ccu_data*) ;
 int __sel_commit (struct ccu_data*,struct bcm_clk_gate*,struct bcm_clk_sel*,struct bcm_clk_trig*) ;
 unsigned long ccu_lock (struct ccu_data*) ;
 int ccu_unlock (struct ccu_data*,unsigned long) ;

__attribute__((used)) static int selector_write(struct ccu_data *ccu, struct bcm_clk_gate *gate,
   struct bcm_clk_sel *sel, struct bcm_clk_trig *trig,
   u8 index)
{
 unsigned long flags;
 u8 previous;
 int ret;

 previous = sel->clk_index;
 if (previous == index)
  return 0;

 sel->clk_index = index;

 flags = ccu_lock(ccu);
 __ccu_write_enable(ccu);

 ret = __sel_commit(ccu, gate, sel, trig);

 __ccu_write_disable(ccu);
 ccu_unlock(ccu, flags);

 if (ret)
  sel->clk_index = previous;

 return ret;
}

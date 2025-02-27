
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct opp_table {TYPE_1__* suspend_opp; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ available; } ;


 scalar_t__ IS_ERR (struct opp_table*) ;
 struct opp_table* _find_opp_table (struct device*) ;
 unsigned long dev_pm_opp_get_freq (TYPE_1__*) ;
 int dev_pm_opp_put_opp_table (struct opp_table*) ;

unsigned long dev_pm_opp_get_suspend_opp_freq(struct device *dev)
{
 struct opp_table *opp_table;
 unsigned long freq = 0;

 opp_table = _find_opp_table(dev);
 if (IS_ERR(opp_table))
  return 0;

 if (opp_table->suspend_opp && opp_table->suspend_opp->available)
  freq = dev_pm_opp_get_freq(opp_table->suspend_opp);

 dev_pm_opp_put_opp_table(opp_table);

 return freq;
}

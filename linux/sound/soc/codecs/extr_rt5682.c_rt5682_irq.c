
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt5682_priv {int jack_detect_work; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int mod_delayed_work (int ,int *,int ) ;
 int msecs_to_jiffies (int) ;
 int system_power_efficient_wq ;

__attribute__((used)) static irqreturn_t rt5682_irq(int irq, void *data)
{
 struct rt5682_priv *rt5682 = data;

 mod_delayed_work(system_power_efficient_wq,
   &rt5682->jack_detect_work, msecs_to_jiffies(250));

 return IRQ_HANDLED;
}

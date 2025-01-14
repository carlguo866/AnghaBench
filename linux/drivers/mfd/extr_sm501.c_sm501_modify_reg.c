
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sm501_devdata {int reg_lock; scalar_t__ regs; } ;
struct device {int dummy; } ;


 struct sm501_devdata* dev_get_drvdata (struct device*) ;
 int sm501_sync_regs (struct sm501_devdata*) ;
 unsigned long smc501_readl (scalar_t__) ;
 int smc501_writel (unsigned long,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

unsigned long sm501_modify_reg(struct device *dev,
          unsigned long reg,
          unsigned long set,
          unsigned long clear)
{
 struct sm501_devdata *sm = dev_get_drvdata(dev);
 unsigned long data;
 unsigned long save;

 spin_lock_irqsave(&sm->reg_lock, save);

 data = smc501_readl(sm->regs + reg);
 data |= set;
 data &= ~clear;

 smc501_writel(data, sm->regs + reg);
 sm501_sync_regs(sm);

 spin_unlock_irqrestore(&sm->reg_lock, save);

 return data;
}

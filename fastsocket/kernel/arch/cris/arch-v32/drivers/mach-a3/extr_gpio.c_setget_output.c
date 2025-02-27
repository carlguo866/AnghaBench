
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_private {size_t minor; } ;


 unsigned long* changeable_dir ;
 int * dir_oe ;
 int gpio_lock ;
 unsigned long readl (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (unsigned long,int ) ;

__attribute__((used)) static inline unsigned long setget_output(struct gpio_private *priv,
 unsigned long arg)
{
 unsigned long flags;
 unsigned long dir_shadow;

 spin_lock_irqsave(&gpio_lock, flags);

 dir_shadow = readl(dir_oe[priv->minor]) |
  (arg & changeable_dir[priv->minor]);
 writel(dir_shadow, dir_oe[priv->minor]);

 spin_unlock_irqrestore(&gpio_lock, flags);
 return dir_shadow;
}

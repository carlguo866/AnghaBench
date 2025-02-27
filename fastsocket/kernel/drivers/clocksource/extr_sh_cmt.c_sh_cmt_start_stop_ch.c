
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sh_timer_config {int timer_bit; } ;
struct sh_cmt_priv {TYPE_2__* pdev; } ;
struct TYPE_3__ {struct sh_timer_config* platform_data; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int CMSTR ;
 int sh_cmt_lock ;
 unsigned long sh_cmt_read (struct sh_cmt_priv*,int ) ;
 int sh_cmt_write (struct sh_cmt_priv*,int ,unsigned long) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void sh_cmt_start_stop_ch(struct sh_cmt_priv *p, int start)
{
 struct sh_timer_config *cfg = p->pdev->dev.platform_data;
 unsigned long flags, value;


 spin_lock_irqsave(&sh_cmt_lock, flags);
 value = sh_cmt_read(p, CMSTR);

 if (start)
  value |= 1 << cfg->timer_bit;
 else
  value &= ~(1 << cfg->timer_bit);

 sh_cmt_write(p, CMSTR, value);
 spin_unlock_irqrestore(&sh_cmt_lock, flags);
}

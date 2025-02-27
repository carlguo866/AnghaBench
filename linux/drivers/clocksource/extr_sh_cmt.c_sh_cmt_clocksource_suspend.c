
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sh_cmt_channel {TYPE_2__* cmt; int cs_enabled; } ;
struct clocksource {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int FLAG_CLOCKSOURCE ;
 struct sh_cmt_channel* cs_to_sh_cmt (struct clocksource*) ;
 int pm_genpd_syscore_poweroff (int *) ;
 int sh_cmt_stop (struct sh_cmt_channel*,int ) ;

__attribute__((used)) static void sh_cmt_clocksource_suspend(struct clocksource *cs)
{
 struct sh_cmt_channel *ch = cs_to_sh_cmt(cs);

 if (!ch->cs_enabled)
  return;

 sh_cmt_stop(ch, FLAG_CLOCKSOURCE);
 pm_genpd_syscore_poweroff(&ch->cmt->pdev->dev);
}

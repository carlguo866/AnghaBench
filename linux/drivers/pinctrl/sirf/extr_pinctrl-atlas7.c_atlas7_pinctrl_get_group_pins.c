
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
struct pinctrl_dev {int dummy; } ;
struct atlas7_pmx {TYPE_2__* pctl_data; } ;
struct TYPE_4__ {TYPE_1__* grps; } ;
struct TYPE_3__ {size_t num_pins; size_t* pins; } ;


 struct atlas7_pmx* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int atlas7_pinctrl_get_group_pins(struct pinctrl_dev *pctldev,
  u32 group, const u32 **pins, u32 *num_pins)
{
 struct atlas7_pmx *pmx = pinctrl_dev_get_drvdata(pctldev);

 *num_pins = pmx->pctl_data->grps[group].num_pins;
 *pins = pmx->pctl_data->grps[group].pins;

 return 0;
}

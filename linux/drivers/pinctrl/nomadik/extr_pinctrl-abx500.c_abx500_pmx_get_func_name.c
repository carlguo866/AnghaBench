
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pinctrl_dev {int dummy; } ;
struct abx500_pinctrl {TYPE_2__* soc; } ;
struct TYPE_4__ {TYPE_1__* functions; } ;
struct TYPE_3__ {char const* name; } ;


 struct abx500_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static const char *abx500_pmx_get_func_name(struct pinctrl_dev *pctldev,
      unsigned function)
{
 struct abx500_pinctrl *pct = pinctrl_dev_get_drvdata(pctldev);

 return pct->soc->functions[function].name;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zynq_pinctrl {int ngroups; } ;
struct pinctrl_dev {int dummy; } ;


 struct zynq_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int zynq_pctrl_get_groups_count(struct pinctrl_dev *pctldev)
{
 struct zynq_pinctrl *pctrl = pinctrl_dev_get_drvdata(pctldev);

 return pctrl->ngroups;
}

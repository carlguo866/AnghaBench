
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rzn1_pinctrl {int ngroups; } ;
struct pinctrl_dev {int dummy; } ;


 struct rzn1_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;

__attribute__((used)) static int rzn1_get_groups_count(struct pinctrl_dev *pctldev)
{
 struct rzn1_pinctrl *ipctl = pinctrl_dev_get_drvdata(pctldev);

 return ipctl->ngroups;
}

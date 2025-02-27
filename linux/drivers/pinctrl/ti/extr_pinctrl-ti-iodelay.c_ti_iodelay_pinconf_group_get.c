
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_iodelay_pingroup {unsigned long config; } ;
struct ti_iodelay_device {int dummy; } ;
struct pinctrl_dev {int dummy; } ;


 int EINVAL ;
 struct ti_iodelay_device* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 struct ti_iodelay_pingroup* ti_iodelay_get_pingroup (struct ti_iodelay_device*,unsigned int) ;

__attribute__((used)) static int ti_iodelay_pinconf_group_get(struct pinctrl_dev *pctldev,
     unsigned int selector,
     unsigned long *config)
{
 struct ti_iodelay_device *iod;
 struct ti_iodelay_pingroup *group;

 iod = pinctrl_dev_get_drvdata(pctldev);
 group = ti_iodelay_get_pingroup(iod, selector);

 if (!group)
  return -EINVAL;

 *config = group->config;
 return 0;
}

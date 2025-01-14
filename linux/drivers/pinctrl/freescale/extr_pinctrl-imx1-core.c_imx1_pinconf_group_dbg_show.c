
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct pinctrl_dev {int dummy; } ;
struct imx1_pinctrl_soc_info {unsigned int ngroups; struct imx1_pin_group* groups; } ;
struct imx1_pinctrl {struct imx1_pinctrl_soc_info* info; } ;
struct imx1_pin_group {int npins; TYPE_1__* pins; } ;
struct TYPE_2__ {int pin_id; } ;


 int imx1_pinconf_get (struct pinctrl_dev*,int ,unsigned long*) ;
 char* pin_get_name (struct pinctrl_dev*,int ) ;
 struct imx1_pinctrl* pinctrl_dev_get_drvdata (struct pinctrl_dev*) ;
 int seq_printf (struct seq_file*,char*,char const*,unsigned long) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static void imx1_pinconf_group_dbg_show(struct pinctrl_dev *pctldev,
      struct seq_file *s, unsigned group)
{
 struct imx1_pinctrl *ipctl = pinctrl_dev_get_drvdata(pctldev);
 const struct imx1_pinctrl_soc_info *info = ipctl->info;
 struct imx1_pin_group *grp;
 unsigned long config;
 const char *name;
 int i, ret;

 if (group >= info->ngroups)
  return;

 seq_puts(s, "\n");
 grp = &info->groups[group];
 for (i = 0; i < grp->npins; i++) {
  name = pin_get_name(pctldev, grp->pins[i].pin_id);
  ret = imx1_pinconf_get(pctldev, grp->pins[i].pin_id, &config);
  if (ret)
   return;
  seq_printf(s, "%s: 0x%lx", name, config);
 }
}

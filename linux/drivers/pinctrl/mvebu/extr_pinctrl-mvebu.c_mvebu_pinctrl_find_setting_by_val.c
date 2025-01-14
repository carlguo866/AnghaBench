
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvebu_pinctrl_group {unsigned int num_settings; struct mvebu_mpp_ctrl_setting* settings; } ;
struct mvebu_pinctrl {int variant; } ;
struct mvebu_mpp_ctrl_setting {unsigned long val; int variant; } ;



__attribute__((used)) static struct mvebu_mpp_ctrl_setting *mvebu_pinctrl_find_setting_by_val(
 struct mvebu_pinctrl *pctl, struct mvebu_pinctrl_group *grp,
 unsigned long config)
{
 unsigned n;
 for (n = 0; n < grp->num_settings; n++) {
  if (config == grp->settings[n].val) {
   if (!pctl->variant || (pctl->variant &
            grp->settings[n].variant))
    return &grp->settings[n];
  }
 }
 return ((void*)0);
}

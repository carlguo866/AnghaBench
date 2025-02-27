
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct clk_hw {int dummy; } ;
struct clk {int dummy; } ;
struct TYPE_8__ {int hw; } ;
struct TYPE_7__ {struct clk_hw** hws; } ;
struct TYPE_6__ {int hw; } ;
struct TYPE_5__ {int nb; } ;


 struct clk* __clk_lookup (char const*) ;
 char* clk_hw_get_name (int *) ;
 int clk_notifier_register (struct clk*,int *) ;
 int dev_err (int *,char*) ;
 TYPE_4__ g12a_cpu_clk ;
 int g12a_cpu_clk_mux_nb ;
 TYPE_3__ g12a_hw_onecell_data ;
 TYPE_2__ g12a_sys_pll ;
 TYPE_1__ g12a_sys_pll_nb_data ;
 int meson_g12a_dvfs_setup_common (struct platform_device*,struct clk_hw**) ;

__attribute__((used)) static int meson_g12a_dvfs_setup(struct platform_device *pdev)
{
 struct clk_hw **hws = g12a_hw_onecell_data.hws;
 const char *notifier_clk_name;
 struct clk *notifier_clk;
 int ret;

 ret = meson_g12a_dvfs_setup_common(pdev, hws);
 if (ret)
  return ret;


 notifier_clk_name = clk_hw_get_name(&g12a_cpu_clk.hw);
 notifier_clk = __clk_lookup(notifier_clk_name);
 ret = clk_notifier_register(notifier_clk, &g12a_cpu_clk_mux_nb);
 if (ret) {
  dev_err(&pdev->dev, "failed to register the cpu_clk notifier\n");
  return ret;
 }


 notifier_clk_name = clk_hw_get_name(&g12a_sys_pll.hw);
 notifier_clk = __clk_lookup(notifier_clk_name);
 ret = clk_notifier_register(notifier_clk, &g12a_sys_pll_nb_data.nb);
 if (ret) {
  dev_err(&pdev->dev, "failed to register the sys_pll notifier\n");
  return ret;
 }

 return 0;
}

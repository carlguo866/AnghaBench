
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int omap2_clk_allow_idle (struct clk*) ;
 int omap2_clk_deny_idle (struct clk*) ;

__attribute__((used)) static int omap3_mcbsp_force_ick_on(struct clk *clk, bool force_on)
{
 if (!clk)
  return 0;

 if (force_on)
  return omap2_clk_deny_idle(clk);
 else
  return omap2_clk_allow_idle(clk);
}

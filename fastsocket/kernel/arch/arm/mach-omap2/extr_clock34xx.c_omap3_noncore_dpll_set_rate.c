
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dpll_data {int modes; unsigned long last_rounded_rate; struct clk* clk_bypass; struct clk* clk_ref; int last_rounded_n; int last_rounded_m; } ;
struct clk {unsigned long rate; struct clk* parent; scalar_t__ usecount; int name; struct dpll_data* dpll_data; } ;


 int DPLL_LOW_POWER_BYPASS ;
 int EINVAL ;
 int WARN_ON (int) ;
 int _omap3_dpll_compute_freqsel (struct clk*,int ) ;
 int _omap3_noncore_dpll_bypass (struct clk*) ;
 int clk_reparent (struct clk*,struct clk*) ;
 int omap2_clk_disable (struct clk*) ;
 int omap2_clk_enable (struct clk*) ;
 int omap2_dpll_round_rate (struct clk*,unsigned long) ;
 unsigned long omap2_get_dpll_rate (struct clk*) ;
 int omap3_noncore_dpll_program (struct clk*,int ,int ,int ) ;
 int pr_debug (char*,int ,...) ;

__attribute__((used)) static int omap3_noncore_dpll_set_rate(struct clk *clk, unsigned long rate)
{
 struct clk *new_parent = ((void*)0);
 u16 freqsel;
 struct dpll_data *dd;
 int ret;

 if (!clk || !rate)
  return -EINVAL;

 dd = clk->dpll_data;
 if (!dd)
  return -EINVAL;

 if (rate == omap2_get_dpll_rate(clk))
  return 0;






 omap2_clk_enable(dd->clk_bypass);
 omap2_clk_enable(dd->clk_ref);

 if (dd->clk_bypass->rate == rate &&
     (clk->dpll_data->modes & (1 << DPLL_LOW_POWER_BYPASS))) {
  pr_debug("clock: %s: set rate: entering bypass.\n", clk->name);

  ret = _omap3_noncore_dpll_bypass(clk);
  if (!ret)
   new_parent = dd->clk_bypass;
 } else {
  if (dd->last_rounded_rate != rate)
   omap2_dpll_round_rate(clk, rate);

  if (dd->last_rounded_rate == 0)
   return -EINVAL;

  freqsel = _omap3_dpll_compute_freqsel(clk, dd->last_rounded_n);
  if (!freqsel)
   WARN_ON(1);

  pr_debug("clock: %s: set rate: locking rate to %lu.\n",
    clk->name, rate);

  ret = omap3_noncore_dpll_program(clk, dd->last_rounded_m,
       dd->last_rounded_n, freqsel);
  if (!ret)
   new_parent = dd->clk_ref;
 }
 if (!ret) {






  if (clk->usecount) {
   omap2_clk_enable(new_parent);
   omap2_clk_disable(clk->parent);
  }
  clk_reparent(clk, new_parent);
  clk->rate = rate;
 }
 omap2_clk_disable(dd->clk_ref);
 omap2_clk_disable(dd->clk_bypass);

 return 0;
}

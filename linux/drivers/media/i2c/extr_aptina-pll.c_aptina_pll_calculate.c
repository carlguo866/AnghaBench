
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct aptina_pll_limits {unsigned int ext_clock_min; unsigned int ext_clock_max; unsigned int pix_clock_max; unsigned int m_min; unsigned int out_clock_min; unsigned int n_min; unsigned int p1_min; unsigned int m_max; unsigned int out_clock_max; unsigned int n_max; unsigned int p1_max; unsigned int int_clock_max; unsigned int int_clock_min; } ;
struct aptina_pll {unsigned int ext_clock; unsigned int pix_clock; unsigned int m; unsigned int n; unsigned int p1; } ;


 unsigned int DIV_ROUND_UP (unsigned int,unsigned int) ;
 int EINVAL ;
 int dev_dbg (struct device*,char*,unsigned int,unsigned int,...) ;
 int dev_err (struct device*,char*) ;
 unsigned int gcd (unsigned int,unsigned int) ;
 unsigned int max (unsigned int,unsigned int) ;
 unsigned int min (unsigned int,unsigned int) ;
 unsigned int roundup (unsigned int,unsigned int) ;

int aptina_pll_calculate(struct device *dev,
    const struct aptina_pll_limits *limits,
    struct aptina_pll *pll)
{
 unsigned int mf_min;
 unsigned int mf_max;
 unsigned int p1_min;
 unsigned int p1_max;
 unsigned int p1;
 unsigned int div;

 dev_dbg(dev, "PLL: ext clock %u pix clock %u\n",
  pll->ext_clock, pll->pix_clock);

 if (pll->ext_clock < limits->ext_clock_min ||
     pll->ext_clock > limits->ext_clock_max) {
  dev_err(dev, "pll: invalid external clock frequency.\n");
  return -EINVAL;
 }

 if (pll->pix_clock == 0 || pll->pix_clock > limits->pix_clock_max) {
  dev_err(dev, "pll: invalid pixel clock frequency.\n");
  return -EINVAL;
 }


 div = gcd(pll->pix_clock, pll->ext_clock);
 pll->m = pll->pix_clock / div;
 div = pll->ext_clock / div;
 mf_min = DIV_ROUND_UP(limits->m_min, pll->m);
 mf_min = max(mf_min, limits->out_clock_min /
       (pll->ext_clock / limits->n_min * pll->m));
 mf_min = max(mf_min, limits->n_min * limits->p1_min / div);
 mf_max = limits->m_max / pll->m;
 mf_max = min(mf_max, limits->out_clock_max /
      (pll->ext_clock / limits->n_max * pll->m));
 mf_max = min(mf_max, DIV_ROUND_UP(limits->n_max * limits->p1_max, div));

 dev_dbg(dev, "pll: mf min %u max %u\n", mf_min, mf_max);
 if (mf_min > mf_max) {
  dev_err(dev, "pll: no valid combined N*P1 divisor.\n");
  return -EINVAL;
 }
 if (limits->p1_min == 0) {
  dev_err(dev, "pll: P1 minimum value must be >0.\n");
  return -EINVAL;
 }

 p1_min = max(limits->p1_min, DIV_ROUND_UP(limits->out_clock_min * div,
       pll->ext_clock * pll->m));
 p1_max = min(limits->p1_max, limits->out_clock_max * div /
       (pll->ext_clock * pll->m));

 for (p1 = p1_max & ~1; p1 >= p1_min; p1 -= 2) {
  unsigned int mf_inc = p1 / gcd(div, p1);
  unsigned int mf_high;
  unsigned int mf_low;

  mf_low = roundup(max(mf_min, DIV_ROUND_UP(pll->ext_clock * p1,
     limits->int_clock_max * div)), mf_inc);
  mf_high = min(mf_max, pll->ext_clock * p1 /
         (limits->int_clock_min * div));

  if (mf_low > mf_high)
   continue;

  pll->n = div * mf_low / p1;
  pll->m *= mf_low;
  pll->p1 = p1;
  dev_dbg(dev, "PLL: N %u M %u P1 %u\n", pll->n, pll->m, pll->p1);
  return 0;
 }

 dev_err(dev, "pll: no valid N and P1 divisors found.\n");
 return -EINVAL;
}

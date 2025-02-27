
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct arizona_fll_cfg {unsigned int outdiv; int refdiv; unsigned int n; unsigned int theta; int lambda; unsigned int gain; int fratio; } ;
struct arizona_fll {int fout; unsigned int vco_mult; } ;
struct TYPE_3__ {unsigned int min; unsigned int max; unsigned int gain; } ;


 unsigned int ARIZONA_FLL_MAX_OUTDIV ;
 unsigned int ARIZONA_FLL_MIN_FVCO ;
 unsigned int ARIZONA_FLL_MIN_OUTDIV ;
 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 int arizona_calc_fratio (struct arizona_fll*,struct arizona_fll_cfg*,unsigned int,unsigned int,int) ;
 int arizona_fll_dbg (struct arizona_fll*,char*,unsigned int,...) ;
 int arizona_fll_err (struct arizona_fll*,char*,unsigned int) ;
 TYPE_1__* fll_gains ;
 unsigned int gcd (unsigned int,int) ;

__attribute__((used)) static int arizona_calc_fll(struct arizona_fll *fll,
       struct arizona_fll_cfg *cfg,
       unsigned int Fref, bool sync)
{
 unsigned int target, div, gcd_fll;
 int i, ratio;

 arizona_fll_dbg(fll, "Fref=%u Fout=%u\n", Fref, fll->fout);


 div = ARIZONA_FLL_MIN_OUTDIV;
 while (fll->fout * div < ARIZONA_FLL_MIN_FVCO * fll->vco_mult) {
  div++;
  if (div > ARIZONA_FLL_MAX_OUTDIV)
   return -EINVAL;
 }
 target = fll->fout * div / fll->vco_mult;
 cfg->outdiv = div;

 arizona_fll_dbg(fll, "Fvco=%dHz\n", target);


 ratio = arizona_calc_fratio(fll, cfg, target, Fref, sync);
 if (ratio < 0)
  return ratio;


 Fref = Fref / (1 << cfg->refdiv);

 cfg->n = target / (ratio * Fref);

 if (target % (ratio * Fref)) {
  gcd_fll = gcd(target, ratio * Fref);
  arizona_fll_dbg(fll, "GCD=%u\n", gcd_fll);

  cfg->theta = (target - (cfg->n * ratio * Fref))
   / gcd_fll;
  cfg->lambda = (ratio * Fref) / gcd_fll;
 } else {
  cfg->theta = 0;
  cfg->lambda = 0;
 }





 while (cfg->lambda >= (1 << 16)) {
  cfg->theta >>= 1;
  cfg->lambda >>= 1;
 }

 for (i = 0; i < ARRAY_SIZE(fll_gains); i++) {
  if (fll_gains[i].min <= Fref && Fref <= fll_gains[i].max) {
   cfg->gain = fll_gains[i].gain;
   break;
  }
 }
 if (i == ARRAY_SIZE(fll_gains)) {
  arizona_fll_err(fll, "Unable to find gain for Fref=%uHz\n",
    Fref);
  return -EINVAL;
 }

 arizona_fll_dbg(fll, "N=%d THETA=%d LAMBDA=%d\n",
   cfg->n, cfg->theta, cfg->lambda);
 arizona_fll_dbg(fll, "FRATIO=0x%x(%d) OUTDIV=%d REFCLK_DIV=0x%x(%d)\n",
   cfg->fratio, ratio, cfg->outdiv,
   cfg->refdiv, 1 << cfg->refdiv);
 arizona_fll_dbg(fll, "GAIN=0x%x(%d)\n", cfg->gain, 1 << cfg->gain);

 return 0;
}

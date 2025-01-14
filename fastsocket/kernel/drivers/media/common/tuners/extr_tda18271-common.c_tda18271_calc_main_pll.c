
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct tda18271_priv {unsigned char* tda18271_regs; int mode; } ;
struct dvb_frontend {struct tda18271_priv* tuner_priv; } ;


 int MAIN_PLL ;
 size_t R_MD1 ;
 size_t R_MD2 ;
 size_t R_MD3 ;
 size_t R_MPD ;


 int tda18271_lookup_pll_map (struct dvb_frontend*,int ,int*,int*,int*) ;
 scalar_t__ tda_fail (int) ;

int tda18271_calc_main_pll(struct dvb_frontend *fe, u32 freq)
{

 struct tda18271_priv *priv = fe->tuner_priv;
 unsigned char *regs = priv->tda18271_regs;
 u8 d, pd;
 u32 div;

 int ret = tda18271_lookup_pll_map(fe, MAIN_PLL, &freq, &pd, &d);
 if (tda_fail(ret))
  goto fail;

 regs[R_MPD] = (0x77 & pd);

 switch (priv->mode) {
 case 129:
  regs[R_MPD] &= ~0x08;
  break;
 case 128:
  regs[R_MPD] |= 0x08;
  break;
 }

 div = ((d * (freq / 1000)) << 7) / 125;

 regs[R_MD1] = 0x7f & (div >> 16);
 regs[R_MD2] = 0xff & (div >> 8);
 regs[R_MD3] = 0xff & div;
fail:
 return ret;
}

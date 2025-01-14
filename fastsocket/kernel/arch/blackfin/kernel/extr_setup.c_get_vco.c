
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;


 int bfin_read_PLL_CTL () ;
 int get_clkin_hz () ;

__attribute__((used)) static u_long get_vco(void)
{
 static u_long cached_vco;
 u_long msel, pll_ctl;




 if (cached_vco)
  return cached_vco;

 pll_ctl = bfin_read_PLL_CTL();
 msel = (pll_ctl >> 9) & 0x3F;
 if (0 == msel)
  msel = 64;

 cached_vco = get_clkin_hz();
 cached_vco >>= (1 & pll_ctl);
 cached_vco *= msel;
 return cached_vco;
}

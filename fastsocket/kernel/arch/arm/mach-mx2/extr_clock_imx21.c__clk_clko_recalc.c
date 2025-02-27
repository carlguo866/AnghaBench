
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct clk {int * parent; } ;


 int CCM_PCDR0 ;
 unsigned long CCM_PCDR0_48MDIV_MASK ;
 unsigned long CCM_PCDR0_48MDIV_OFFSET ;
 unsigned long __raw_readl (int ) ;
 unsigned long clk_get_rate (int *) ;
 int * usb_clk ;

__attribute__((used)) static unsigned long _clk_clko_recalc(struct clk *clk)
{
 u32 div = 0;
 unsigned long parent_rate;

 parent_rate = clk_get_rate(clk->parent);

 if (clk->parent == &usb_clk[0])
  div = __raw_readl(CCM_PCDR0) & CCM_PCDR0_48MDIV_MASK
    >> CCM_PCDR0_48MDIV_OFFSET;
 div++;

 return parent_rate / div;
}

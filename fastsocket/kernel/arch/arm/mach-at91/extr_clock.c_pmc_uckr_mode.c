
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {unsigned int pmc_mask; } ;


 int AT91_CKGR_UCKR ;
 unsigned int AT91_PMC_BIASEN ;
 int AT91_PMC_LOCKU ;
 int AT91_PMC_SR ;
 int at91_sys_read (int ) ;
 int at91_sys_write (int ,unsigned int) ;
 scalar_t__ cpu_is_at91sam9g45 () ;
 int cpu_relax () ;

__attribute__((used)) static void pmc_uckr_mode(struct clk *clk, int is_on)
{
 unsigned int uckr = at91_sys_read(AT91_CKGR_UCKR);

 if (cpu_is_at91sam9g45()) {
  if (is_on)
   uckr |= AT91_PMC_BIASEN;
  else
   uckr &= ~AT91_PMC_BIASEN;
 }

 if (is_on) {
  is_on = AT91_PMC_LOCKU;
  at91_sys_write(AT91_CKGR_UCKR, uckr | clk->pmc_mask);
 } else
  at91_sys_write(AT91_CKGR_UCKR, uckr & ~(clk->pmc_mask));

 do {
  cpu_relax();
 } while ((at91_sys_read(AT91_PMC_SR) & AT91_PMC_LOCKU) != is_on);
}

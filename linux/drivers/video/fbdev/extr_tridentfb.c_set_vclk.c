
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tridentfb_par {int io_virt; int chip_id; } ;


 int ClockHigh ;
 int ClockLow ;
 unsigned long abs (unsigned long) ;
 int debug (char*,unsigned char,unsigned char) ;
 scalar_t__ is3Dchip (int ) ;
 scalar_t__ is_oldclock (int ) ;
 int t_outb (struct tridentfb_par*,unsigned char,int) ;
 int vga_mm_wseq (int ,int ,unsigned char) ;

__attribute__((used)) static void set_vclk(struct tridentfb_par *par, unsigned long freq)
{
 int m, n, k;
 unsigned long fi, d, di;
 unsigned char best_m = 0, best_n = 0, best_k = 0;
 unsigned char hi, lo;
 unsigned char shift = !is_oldclock(par->chip_id) ? 2 : 1;

 d = 20000;
 for (k = shift; k >= 0; k--)
  for (m = 1; m < 32; m++) {
   n = ((m + 2) << shift) - 8;
   for (n = (n < 0 ? 0 : n); n < 122; n++) {
    fi = ((14318l * (n + 8)) / (m + 2)) >> k;
    di = abs(fi - freq);
    if (di < d || (di == d && k == best_k)) {
     d = di;
     best_n = n;
     best_m = m;
     best_k = k;
    }
    if (fi > freq)
     break;
   }
  }

 if (is_oldclock(par->chip_id)) {
  lo = best_n | (best_m << 7);
  hi = (best_m >> 1) | (best_k << 4);
 } else {
  lo = best_n;
  hi = best_m | (best_k << 6);
 }

 if (is3Dchip(par->chip_id)) {
  vga_mm_wseq(par->io_virt, ClockHigh, hi);
  vga_mm_wseq(par->io_virt, ClockLow, lo);
 } else {
  t_outb(par, lo, 0x43C8);
  t_outb(par, hi, 0x43C9);
 }
 debug("VCLK = %X %X\n", hi, lo);
}

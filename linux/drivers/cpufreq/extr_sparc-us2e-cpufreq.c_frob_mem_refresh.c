
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HBIRD_MEM_CNTL0_ADDR ;
 unsigned long MCTRL0_REFR_CLKS_P_CNT ;
 unsigned long MCTRL0_REFR_COUNT_MASK ;
 unsigned long MCTRL0_REFR_COUNT_SHIFT ;
 unsigned long MCTRL0_REFR_INTERVAL ;
 unsigned long MCTRL0_SREFRESH_ENAB ;
 unsigned long read_hbreg (int ) ;
 int udelay (unsigned long) ;
 int write_hbreg (int ,unsigned long) ;

__attribute__((used)) static void frob_mem_refresh(int cpu_slowing_down,
        unsigned long clock_tick,
        unsigned long old_divisor, unsigned long divisor)
{
 unsigned long old_refr_count, refr_count, mctrl;

 refr_count = (clock_tick * MCTRL0_REFR_INTERVAL);
 refr_count /= (MCTRL0_REFR_CLKS_P_CNT * divisor * 1000000000UL);

 mctrl = read_hbreg(HBIRD_MEM_CNTL0_ADDR);
 old_refr_count = (mctrl & MCTRL0_REFR_COUNT_MASK)
  >> MCTRL0_REFR_COUNT_SHIFT;

 mctrl &= ~MCTRL0_REFR_COUNT_MASK;
 mctrl |= refr_count << MCTRL0_REFR_COUNT_SHIFT;
 write_hbreg(HBIRD_MEM_CNTL0_ADDR, mctrl);
 mctrl = read_hbreg(HBIRD_MEM_CNTL0_ADDR);

 if (cpu_slowing_down && !(mctrl & MCTRL0_SREFRESH_ENAB)) {
  unsigned long usecs;




  usecs = (MCTRL0_REFR_CLKS_P_CNT *
    (refr_count + old_refr_count) *
    1000000UL *
    old_divisor) / clock_tick;
  udelay(usecs + 1UL);
 }
}

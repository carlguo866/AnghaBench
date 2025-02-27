
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MT2032_OPTIMIZE_VCO ;
 int MT2032_SpurCheck (int,int,int,int) ;
 int printf (char*) ;

__attribute__((used)) static int
MT2032_ComputeFreq(
     int rfin,
     int if1,
     int if2,
     int spectrum_from,
     int spectrum_to,
     unsigned char *buf,
     int *ret_sel,
     int xogc
)
{
 int fref, lo1, lo1n, lo1a, s, sel;
 int lo1freq, desired_lo1, desired_lo2, lo2, lo2n, lo2a,
                 lo2num, lo2freq;
 int nLO1adjust;

 fref = 5250 * 1000;


 desired_lo1 = rfin + if1;
 lo1 = (2 * (desired_lo1 / 1000) + (fref / 1000)) / (2 * fref / 1000);
 lo1freq = lo1 * fref;
 desired_lo2 = lo1freq - rfin - if2;


 for (nLO1adjust = 1; nLO1adjust < 3; nLO1adjust++) {
  if (!MT2032_SpurCheck(lo1freq, desired_lo2, spectrum_from, spectrum_to)) {
   break;
  }
  if (lo1freq < desired_lo1) {
   lo1 += nLO1adjust;
  } else {
   lo1 -= nLO1adjust;
  }

  lo1freq = lo1 * fref;
  desired_lo2 = lo1freq - rfin - if2;
 }


 s = lo1freq / 1000 / 1000;

 if (MT2032_OPTIMIZE_VCO) {
  if (s > 1890) {
   sel = 0;
  } else if (s > 1720) {
   sel = 1;
  } else if (s > 1530) {
   sel = 2;
  } else if (s > 1370) {
   sel = 3;
  } else {
   sel = 4;
  }
 } else {
  if (s > 1790) {
   sel = 0;
  } else if (s > 1617) {
   sel = 1;
  } else if (s > 1449) {
   sel = 2;
  } else if (s > 1291) {
   sel = 3;
  } else {
   sel = 4;
  }
 }

 *ret_sel = sel;


 lo1n = lo1 / 8;
 lo1a = lo1 - (lo1n * 8);
 lo2 = desired_lo2 / fref;
 lo2n = lo2 / 8;
 lo2a = lo2 - (lo2n * 8);

 lo2num = ((desired_lo2 / 1000) % (fref / 1000)) * 3780 / (fref / 1000);
 lo2freq = (lo2a + 8 * lo2n) * fref + lo2num * (fref / 1000) / 3780 * 1000;

 if (lo1a < 0 || lo1a > 7 || lo1n < 17 || lo1n > 48 || lo2a < 0 ||
     lo2a > 7 || lo2n < 17 || lo2n > 30) {
  printf("MT2032: parameter out of range\n");
  return -1;
 }

 buf[0] = lo1n - 1;
 buf[1] = lo1a | (sel << 4);
 buf[2] = 0x86;
 buf[3] = 0x0f;
 buf[4] = 0x1f;
 buf[5] = (lo2n - 1) | (lo2a << 5);
 if (rfin < 400 * 1000 * 1000) {
  buf[6] = 0xe4;
 } else {
  buf[6] = 0xf4;
 }

 buf[7] = 8 + xogc;
 buf[8] = 0xc3;
 buf[9] = 0x4e;
 buf[10] = 0xec;
 buf[11] = (lo2num & 0xff);
 buf[12] = (lo2num >> 8) | 0x80;

 return 0;
}

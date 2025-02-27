
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpc52xx_ata_timings {unsigned int pio1; unsigned int pio2; } ;
struct mpc52xx_ata_priv {unsigned int ipb_period; struct mpc52xx_ata_timings* timings; } ;


 unsigned int CALC_CLKCYC (unsigned int,int) ;
 int EINVAL ;
 int* ataspec_t0 ;
 int* ataspec_t1 ;
 int* ataspec_t2_16 ;
 int* ataspec_t2_8 ;
 int* ataspec_t2i ;
 int* ataspec_t4 ;
 int* ataspec_ta ;

__attribute__((used)) static int
mpc52xx_ata_compute_pio_timings(struct mpc52xx_ata_priv *priv, int dev, int pio)
{
 struct mpc52xx_ata_timings *timing = &priv->timings[dev];
 unsigned int ipb_period = priv->ipb_period;
 unsigned int t0, t1, t2_8, t2_16, t2i, t4, ta;

 if ((pio < 0) || (pio > 4))
  return -EINVAL;

 t0 = CALC_CLKCYC(ipb_period, 1000 * ataspec_t0[pio]);
 t1 = CALC_CLKCYC(ipb_period, 1000 * ataspec_t1[pio]);
 t2_8 = CALC_CLKCYC(ipb_period, 1000 * ataspec_t2_8[pio]);
 t2_16 = CALC_CLKCYC(ipb_period, 1000 * ataspec_t2_16[pio]);
 t2i = CALC_CLKCYC(ipb_period, 1000 * ataspec_t2i[pio]);
 t4 = CALC_CLKCYC(ipb_period, 1000 * ataspec_t4[pio]);
 ta = CALC_CLKCYC(ipb_period, 1000 * ataspec_ta[pio]);

 timing->pio1 = (t0 << 24) | (t2_8 << 16) | (t2_16 << 8) | (t2i);
 timing->pio2 = (t4 << 24) | (t1 << 16) | (ta << 8);

 return 0;
}

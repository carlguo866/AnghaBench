
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct n2rng_unit {int* control; } ;
struct n2rng {int num_units; int accum_cycles; struct n2rng_unit* units; } ;


 int HV_RNG_STATE_CONFIGURED ;
 int RNG_CTL_ASEL_SHIFT ;
 int RNG_CTL_ES1 ;
 int RNG_CTL_ES2 ;
 int RNG_CTL_ES3 ;
 int RNG_CTL_LFSR ;
 int RNG_CTL_VCO_SHIFT ;
 int RNG_CTL_WAIT_SHIFT ;
 unsigned long __pa (int*) ;
 int n2rng_generic_write_control (struct n2rng*,unsigned long,int,int ) ;

__attribute__((used)) static int n2rng_control_configure_units(struct n2rng *np)
{
 int unit, err;

 err = 0;
 for (unit = 0; unit < np->num_units; unit++) {
  struct n2rng_unit *up = &np->units[unit];
  unsigned long ctl_ra = __pa(&up->control[0]);
  int esrc;
  u64 base;

  base = ((np->accum_cycles << RNG_CTL_WAIT_SHIFT) |
   (2 << RNG_CTL_ASEL_SHIFT) |
   RNG_CTL_LFSR);






  for (esrc = 0; esrc < 3; esrc++)
   up->control[esrc] = base |
    (esrc << RNG_CTL_VCO_SHIFT) |
    (RNG_CTL_ES1 << esrc);

  up->control[3] = base |
   (RNG_CTL_ES1 | RNG_CTL_ES2 | RNG_CTL_ES3);

  err = n2rng_generic_write_control(np, ctl_ra, unit,
        HV_RNG_STATE_CONFIGURED);
  if (err)
   break;
 }

 return err;
}

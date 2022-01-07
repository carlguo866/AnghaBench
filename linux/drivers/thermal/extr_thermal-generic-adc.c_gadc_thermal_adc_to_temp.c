
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gadc_thermal_info {int* lookup_table; int nlookup_table; } ;


 int mult_frac (int,int,int) ;

__attribute__((used)) static int gadc_thermal_adc_to_temp(struct gadc_thermal_info *gti, int val)
{
 int temp, temp_hi, temp_lo, adc_hi, adc_lo;
 int i;

 if (!gti->lookup_table)
  return val;

 for (i = 0; i < gti->nlookup_table; i++) {
  if (val >= gti->lookup_table[2 * i + 1])
   break;
 }

 if (i == 0) {
  temp = gti->lookup_table[0];
 } else if (i >= gti->nlookup_table) {
  temp = gti->lookup_table[2 * (gti->nlookup_table - 1)];
 } else {
  adc_hi = gti->lookup_table[2 * i - 1];
  adc_lo = gti->lookup_table[2 * i + 1];

  temp_hi = gti->lookup_table[2 * i - 2];
  temp_lo = gti->lookup_table[2 * i];

  temp = temp_hi + mult_frac(temp_lo - temp_hi, val - adc_hi,
        adc_lo - adc_hi);
 }

 return temp;
}

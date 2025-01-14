
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UINT_MAX ;
 int abs (int) ;

__attribute__((used)) static unsigned get_score(int adc, int adc_l, int adc_h, int need_adc,
  int dac, int dac_l, int dac_h, int need_dac)
{
 if ((adc >= adc_l) && (adc <= adc_h) &&
   (dac >= dac_l) && (dac <= dac_h)) {
  int diff_adc = need_adc - adc;
  int diff_dac = need_dac - dac;
  return abs(diff_adc) + abs(diff_dac);
 }
 return UINT_MAX;
}

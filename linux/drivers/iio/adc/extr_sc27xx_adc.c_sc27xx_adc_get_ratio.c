
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SC27XX_VOLT_RATIO (int,int) ;

__attribute__((used)) static int sc27xx_adc_get_ratio(int channel, int scale)
{
 switch (channel) {
 case 1:
 case 2:
 case 3:
 case 4:
  return scale ? SC27XX_VOLT_RATIO(400, 1025) :
   SC27XX_VOLT_RATIO(1, 1);
 case 5:
  return SC27XX_VOLT_RATIO(7, 29);
 case 6:
  return SC27XX_VOLT_RATIO(375, 9000);
 case 7:
 case 8:
  return scale ? SC27XX_VOLT_RATIO(100, 125) :
   SC27XX_VOLT_RATIO(1, 1);
 case 19:
  return SC27XX_VOLT_RATIO(1, 3);
 default:
  return SC27XX_VOLT_RATIO(1, 1);
 }
 return SC27XX_VOLT_RATIO(1, 1);
}

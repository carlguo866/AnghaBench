
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int REGULATOR_MODE_FAST ;
 unsigned int REGULATOR_MODE_INVALID ;
 unsigned int REGULATOR_MODE_NORMAL ;

__attribute__((used)) static unsigned int rk8xx_regulator_of_map_mode(unsigned int mode)
{
 switch (mode) {
 case 1:
  return REGULATOR_MODE_FAST;
 case 2:
  return REGULATOR_MODE_NORMAL;
 default:
  return REGULATOR_MODE_INVALID;
 }
}

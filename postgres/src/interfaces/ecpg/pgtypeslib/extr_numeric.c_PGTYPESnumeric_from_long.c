
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rscale; int dscale; int weight; long* digits; int sign; } ;
typedef TYPE_1__ numeric ;


 int LONG_MAX ;
 int NUMERIC_NEG ;
 int NUMERIC_POS ;
 scalar_t__ alloc_var (TYPE_1__*,int) ;

int
PGTYPESnumeric_from_long(signed long int long_val, numeric *var)
{
 int size = 0;
 int i;
 signed long int abs_long_val = long_val;
 signed long int extract;
 signed long int reach_limit;

 if (abs_long_val < 0)
 {
  abs_long_val *= -1;
  var->sign = NUMERIC_NEG;
 }
 else
  var->sign = NUMERIC_POS;

 reach_limit = 1;
 do
 {
  size++;
  reach_limit *= 10;
 } while (reach_limit - 1 < abs_long_val && reach_limit <= LONG_MAX / 10);

 if (reach_limit > LONG_MAX / 10)
 {

  size += 2;
 }
 else
 {

  size++;
  reach_limit /= 10;
 }

 if (alloc_var(var, size) < 0)
  return -1;

 var->rscale = 1;
 var->dscale = 1;
 var->weight = size - 2;

 i = 0;
 do
 {
  extract = abs_long_val - (abs_long_val % reach_limit);
  var->digits[i] = extract / reach_limit;
  abs_long_val -= extract;
  i++;
  reach_limit /= 10;






 } while (abs_long_val > 0);

 return 0;
}

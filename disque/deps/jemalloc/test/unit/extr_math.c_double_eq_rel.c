
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double fabs (double) ;

__attribute__((used)) static bool
double_eq_rel(double a, double b, double max_rel_err, double max_abs_err)
{
 double rel_err;

 if (fabs(a - b) < max_abs_err)
  return (1);
 rel_err = (fabs(b) > fabs(a)) ? fabs((a-b)/b) : fabs((a-b)/a);
 return (rel_err < max_rel_err);
}

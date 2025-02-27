
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void rational_best_approximation(
 unsigned long given_numerator, unsigned long given_denominator,
 unsigned long max_numerator, unsigned long max_denominator,
 unsigned long *best_numerator, unsigned long *best_denominator)
{
 unsigned long n, d, n0, d0, n1, d1;
 n = given_numerator;
 d = given_denominator;
 n0 = d1 = 0;
 n1 = d0 = 1;
 for (;;) {
  unsigned long t, a;
  if ((n1 > max_numerator) || (d1 > max_denominator)) {
   n1 = n0;
   d1 = d0;
   break;
  }
  if (d == 0)
   break;
  t = d;
  a = n / d;
  d = n % d;
  n = t;
  t = n0 + a * n1;
  n0 = n1;
  n1 = t;
  t = d0 + a * d1;
  d0 = d1;
  d1 = t;
 }
 *best_numerator = n1;
 *best_denominator = d1;
}

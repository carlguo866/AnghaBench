
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double volatile DBL_MAX ;
 double DBL_MIN ;
 int FE_DIVBYZERO ;
 int FE_INEXACT ;
 int FE_INVALID ;
 int FE_OVERFLOW ;
 int FE_UNDERFLOW ;

__attribute__((used)) static void
raiseexcept(int excepts)
{
 volatile double d;
 if (excepts & FE_INVALID) {
  d = 0.0;
  d = 0.0 / d;
 }
 if (excepts & FE_DIVBYZERO) {
  d = 0.0;
  d = 1.0 / d;
 }
 if (excepts & FE_OVERFLOW) {
  d = DBL_MAX;
  d *= 2.0;
 }
 if (excepts & FE_UNDERFLOW) {
  d = DBL_MIN;
  d /= DBL_MAX;
 }
 if (excepts & FE_INEXACT) {
  d = DBL_MIN;
  d += 1.0;
 }






 d = 1.0;
 d += 1.0;
}

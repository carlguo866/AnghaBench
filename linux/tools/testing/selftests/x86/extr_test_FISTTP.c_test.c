
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FE_DIVBYZERO ;
 int FE_INEXACT ;
 int FE_INVALID ;
 int FE_OVERFLOW ;
 int FE_UNDERFLOW ;
 int feclearexcept (int) ;
 int fetestexcept (int) ;
 int printf (char*) ;
 int res16 ;
 int res32 ;
 int res64 ;

int test(void)
{
 int ex;

 feclearexcept(FE_DIVBYZERO|FE_INEXACT|FE_INVALID|FE_OVERFLOW|FE_UNDERFLOW);
 asm volatile ("\n"
 "	fld1""\n"
 "	fisttp	res16""\n"
 "	fld1""\n"
 "	fisttpl	res32""\n"
 "	fld1""\n"
 "	fisttpll res64""\n"
 : : : "memory"
 );
 if (res16 != 1 || res32 != 1 || res64 != 1) {
  printf("[BAD]\tfisttp 1\n");
  return 1;
 }
 ex = fetestexcept(FE_DIVBYZERO|FE_INEXACT|FE_INVALID|FE_OVERFLOW|FE_UNDERFLOW);
 if (ex != 0) {
  printf("[BAD]\tfisttp 1: wrong exception state\n");
  return 1;
 }

 feclearexcept(FE_DIVBYZERO|FE_INEXACT|FE_INVALID|FE_OVERFLOW|FE_UNDERFLOW);
 asm volatile ("\n"
 "	fldpi""\n"
 "	fisttp	res16""\n"
 "	fldpi""\n"
 "	fisttpl	res32""\n"
 "	fldpi""\n"
 "	fisttpll res64""\n"
 : : : "memory"
 );
 if (res16 != 3 || res32 != 3 || res64 != 3) {
  printf("[BAD]\tfisttp pi\n");
  return 1;
 }
 ex = fetestexcept(FE_DIVBYZERO|FE_INEXACT|FE_INVALID|FE_OVERFLOW|FE_UNDERFLOW);
 if (ex != FE_INEXACT) {
  printf("[BAD]\tfisttp pi: wrong exception state\n");
  return 1;
 }

 feclearexcept(FE_DIVBYZERO|FE_INEXACT|FE_INVALID|FE_OVERFLOW|FE_UNDERFLOW);
 asm volatile ("\n"
 "	fldpi""\n"
 "	fchs""\n"
 "	fisttp	res16""\n"
 "	fldpi""\n"
 "	fchs""\n"
 "	fisttpl	res32""\n"
 "	fldpi""\n"
 "	fchs""\n"
 "	fisttpll res64""\n"
 : : : "memory"
 );
 if (res16 != 0xfffd || res32 != 0xfffffffd || res64 != 0xfffffffffffffffdULL) {
  printf("[BAD]\tfisttp -pi\n");
  return 1;
 }
 ex = fetestexcept(FE_DIVBYZERO|FE_INEXACT|FE_INVALID|FE_OVERFLOW|FE_UNDERFLOW);
 if (ex != FE_INEXACT) {
  printf("[BAD]\tfisttp -pi: wrong exception state\n");
  return 1;
 }

 feclearexcept(FE_DIVBYZERO|FE_INEXACT|FE_INVALID|FE_OVERFLOW|FE_UNDERFLOW);
 asm volatile ("\n"
 "	fldln2""\n"
 "	fisttp	res16""\n"
 "	fldln2""\n"
 "	fisttpl	res32""\n"
 "	fldln2""\n"
 "	fisttpll res64""\n"
 : : : "memory"
 );

 if (res16 != 0 || res32 != 0 || res64 != 0) {
  printf("[BAD]\tfisttp ln2\n");
  return 1;
 }
 ex = fetestexcept(FE_DIVBYZERO|FE_INEXACT|FE_INVALID|FE_OVERFLOW|FE_UNDERFLOW);
 if (ex != FE_INEXACT) {
  printf("[BAD]\tfisttp ln2: wrong exception state\n");
  return 1;
 }

 return 0;
}

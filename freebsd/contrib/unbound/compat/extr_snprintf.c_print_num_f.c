
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int PRINT_FLOAT_BUFSZ ;
 int print_float (char*,int,double,int) ;
 int print_num (char**,size_t*,int*,int,int,int ,int,int,int,int,int,int,char*,int) ;

__attribute__((used)) static void
print_num_f(char** at, size_t* left, int* ret, double value,
 int minw, int precision, int prgiven, int zeropad, int minus,
 int plus, int space)
{
 char buf[PRINT_FLOAT_BUFSZ];
 int negative = (value < 0);
 int zero = 0;
 int len;
 if(!prgiven) precision = 6;
 len = print_float(buf, (int)sizeof(buf), negative?-value:value,
  precision);
 print_num(at, left, ret, minw, 1, 0, zeropad, minus,
  plus, space, zero, negative, buf, len);
}

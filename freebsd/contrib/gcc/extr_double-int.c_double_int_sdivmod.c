
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int double_int ;


 int double_int_divmod (int ,int ,int,unsigned int,int *) ;

double_int
double_int_sdivmod (double_int a, double_int b, unsigned code, double_int *mod)
{
  return double_int_divmod (a, b, 0, code, mod);
}

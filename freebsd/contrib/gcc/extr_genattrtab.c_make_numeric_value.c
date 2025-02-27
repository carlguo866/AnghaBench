
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 int CONST_STRING ;
 int MAX_DIGITS ;
 char* attr_printf (int ,char*,int) ;
 scalar_t__ attr_rtx (int ,char*) ;
 int gcc_assert (int) ;

__attribute__((used)) static rtx
make_numeric_value (int n)
{
  static rtx int_values[20];
  rtx exp;
  char *p;

  gcc_assert (n >= 0);

  if (n < 20 && int_values[n])
    return int_values[n];

  p = attr_printf (MAX_DIGITS, "%d", n);
  exp = attr_rtx (CONST_STRING, p);

  if (n < 20)
    int_values[n] = exp;

  return exp;
}

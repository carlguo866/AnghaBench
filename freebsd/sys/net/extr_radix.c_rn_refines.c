
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* caddr_t ;


 int LEN (int*) ;

int
rn_refines(void *m_arg, void *n_arg)
{
 caddr_t m = m_arg, n = n_arg;
 caddr_t lim, lim2 = lim = n + LEN(n);
 int longer = LEN(n++) - LEN(m++);
 int masks_are_equal = 1;

 if (longer > 0)
  lim -= longer;
 while (n < lim) {
  if (*n & ~(*m))
   return (0);
  if (*n++ != *m++)
   masks_are_equal = 0;
 }
 while (n < lim2)
  if (*n++)
   return (0);
 if (masks_are_equal && (longer < 0))
  for (lim2 = m - longer; m < lim2; )
   if (*m++)
    return (1);
 return (!masks_are_equal);
}

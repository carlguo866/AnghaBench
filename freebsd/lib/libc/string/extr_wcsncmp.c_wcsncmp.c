
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wchar_t ;



int
wcsncmp(const wchar_t *s1, const wchar_t *s2, size_t n)
{

 if (n == 0)
  return (0);
 do {
  if (*s1 != *s2++) {

   return (*(const unsigned int *)s1 -
       *(const unsigned int *)--s2);
  }
  if (*s1++ == 0)
   break;
 } while (--n != 0);
 return (0);
}

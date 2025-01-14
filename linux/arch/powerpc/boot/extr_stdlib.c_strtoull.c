
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
unsigned long long int strtoull(const char *ptr, char **end, int base)
{
 unsigned long long ret = 0;

 if (base > 36)
  goto out;

 while (*ptr) {
  int digit;

  if (*ptr >= '0' && *ptr <= '9' && *ptr < '0' + base)
   digit = *ptr - '0';
  else if (*ptr >= 'A' && *ptr < 'A' + base - 10)
   digit = *ptr - 'A' + 10;
  else if (*ptr >= 'a' && *ptr < 'a' + base - 10)
   digit = *ptr - 'a' + 10;
  else
   break;

  ret *= base;
  ret += digit;
  ptr++;
 }

out:
 if (end)
  *end = (char *)ptr;

 return ret;
}

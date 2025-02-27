
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strref {size_t len; char* array; } ;


 scalar_t__ strref_is_empty (struct strref const*) ;

int strref_cmp_strref(const struct strref *str1, const struct strref *str2)
{
 size_t i = 0;

 if (strref_is_empty(str1))
  return strref_is_empty(str2) ? 0 : -1;
 if (strref_is_empty(str2))
  return -1;

 do {
  char ch1, ch2;

  ch1 = (i < str1->len) ? str1->array[i] : 0;
  ch2 = (i < str2->len) ? str2->array[i] : 0;

  if (ch1 < ch2)
   return -1;
  else if (ch1 > ch2)
   return 1;

  i++;
 } while (i <= str1->len && i <= str2->len);

 return 0;
}

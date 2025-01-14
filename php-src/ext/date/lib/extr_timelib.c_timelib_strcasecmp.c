
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t MIN (size_t,size_t) ;
 size_t strlen (char const*) ;
 int timelib_tolower (unsigned char) ;

int timelib_strcasecmp(const char *s1, const char *s2)
{
 size_t len;
 size_t len1 = strlen(s1);
 size_t len2 = strlen(s2);
 int c1, c2;

 if (s1 == s2) {
  return 0;
 }

 len = MIN(len1, len2);
 while (len--) {
  c1 = timelib_tolower(*(unsigned char *)s1++);
  c2 = timelib_tolower(*(unsigned char *)s2++);
  if (c1 != c2) {
   return c1 - c2;
  }
 }

 return (int)(len1 - len2);
}

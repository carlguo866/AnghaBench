
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strlen (char const*) ;

size_t
fz_strlcat(char *dst, const char *src, size_t siz)
{
 register char *d = dst;
 register const char *s = src;
 register size_t n = siz;
 size_t dlen;


 while (*d != '\0' && n-- != 0)
  d++;
 dlen = d - dst;
 n = siz - dlen;

 if (n == 0)
  return dlen + strlen(s);
 while (*s != '\0') {
  if (n != 1) {
   *d++ = *s;
   n--;
  }
  s++;
 }
 *d = '\0';

 return dlen + (s - src);
}

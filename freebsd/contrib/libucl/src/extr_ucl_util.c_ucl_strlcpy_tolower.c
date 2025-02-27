
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char tolower (int ) ;

size_t
ucl_strlcpy_tolower (char *dst, const char *src, size_t siz)
{
 char *d = dst;
 const char *s = src;
 size_t n = siz;


 if (n != 0) {
  while (--n != 0) {
   if ((*d++ = tolower (*s++)) == '\0') {
    break;
   }
  }
 }

 if (n == 0 && siz != 0) {
  *d = '\0';
 }

 return (s - src);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 char* uiprivUTF8DecodeRune (char const*,size_t,int *) ;

size_t uiprivUTF8RuneCount(const char *s, size_t nElem)
{
 size_t len;
 uint32_t rune;

 if (nElem != 0) {
  const char *t, *u;

  len = 0;
  t = s;
  while (nElem != 0) {
   u = uiprivUTF8DecodeRune(t, nElem, &rune);
   len++;
   nElem -= u - t;
   t = u;
  }
  return len;
 }
 len = 0;
 while (*s) {
  s = uiprivUTF8DecodeRune(s, nElem, &rune);
  len++;
 }
 return len;
}

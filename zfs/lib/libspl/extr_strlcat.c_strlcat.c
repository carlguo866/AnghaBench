
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char const*,size_t) ;
 size_t strlen (char const*) ;

size_t
strlcat(char *dst, const char *src, size_t dstsize)
{
 char *df = dst;
 size_t left = dstsize;
 size_t l1;
 size_t l2 = strlen(src);
 size_t copied;

 while (left-- != 0 && *df != '\0')
  df++;
 l1 = df - dst;
 if (dstsize == l1)
  return (l1 + l2);

 copied = l1 + l2 >= dstsize ? dstsize - l1 - 1 : l2;
 (void) memcpy(dst + l1, src, copied);
 dst[l1+copied] = '\0';

 return (l1 + l2);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int stb__ucharcmpoffset ;

int stb__ucharcmp(const void *a, const void *b)
{
   const int p = *(const unsigned char *) ((const char *) a + stb__ucharcmpoffset);
   const int q = *(const unsigned char *) ((const char *) b + stb__ucharcmpoffset);
   return p < q ? -1 : p > q;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;



__attribute__((used)) static size_t find_same(const uint16_t *a, const uint16_t *b)
{
   const uint16_t *a_org = a;
   {
      const uint32_t *a_big = (const uint32_t*)a;
      const uint32_t *b_big = (const uint32_t*)b;

      while (*a_big != *b_big)
      {
         a_big++;
         b_big++;
      }
      a = (const uint16_t*)a_big;
      b = (const uint16_t*)b_big;

      if (a != a_org && a[-1] == b[-1])
      {
         a--;
         b--;
      }
   }
   return a - a_org;
}

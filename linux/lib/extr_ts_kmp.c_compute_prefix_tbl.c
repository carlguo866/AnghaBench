
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 int TS_IGNORECASE ;
 scalar_t__ const toupper (scalar_t__ const) ;

__attribute__((used)) static inline void compute_prefix_tbl(const u8 *pattern, unsigned int len,
          unsigned int *prefix_tbl, int flags)
{
 unsigned int k, q;
 const u8 icase = flags & TS_IGNORECASE;

 for (k = 0, q = 1; q < len; q++) {
  while (k > 0 && (icase ? toupper(pattern[k]) : pattern[k])
      != (icase ? toupper(pattern[q]) : pattern[q]))
   k = prefix_tbl[k-1];
  if ((icase ? toupper(pattern[k]) : pattern[k])
      == (icase ? toupper(pattern[q]) : pattern[q]))
   k++;
  prefix_tbl[q] = k;
 }
}

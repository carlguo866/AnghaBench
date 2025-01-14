
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const** agl_dup_names ;
 int* agl_dup_offsets ;
 char const** empty_dup_list ;
 int nelem (int*) ;

const char **
fz_duplicate_glyph_names_from_unicode(int ucs)
{
 int l = 0;
 int r = nelem(agl_dup_offsets) / 2 - 1;
 while (l <= r)
 {
  int m = (l + r) >> 1;
  if (ucs < agl_dup_offsets[m << 1])
   r = m - 1;
  else if (ucs > agl_dup_offsets[m << 1])
   l = m + 1;
  else
   return agl_dup_names + agl_dup_offsets[(m << 1) + 1];
 }
 return empty_dup_list;
}

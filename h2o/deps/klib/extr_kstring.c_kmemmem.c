
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ubyte_t ;


 int free (int*) ;
 int* ksBM_prep (size_t const*,int) ;

void *kmemmem(const void *_str, int n, const void *_pat, int m, int **_prep)
{
 int i, j, *prep = 0, *bmGs, *bmBc;
 const ubyte_t *str, *pat;
 str = (const ubyte_t*)_str; pat = (const ubyte_t*)_pat;
 prep = (_prep == 0 || *_prep == 0)? ksBM_prep(pat, m) : *_prep;
 if (_prep && *_prep == 0) *_prep = prep;
 bmGs = prep; bmBc = prep + m;
 j = 0;
 while (j <= n - m) {
  for (i = m - 1; i >= 0 && pat[i] == str[i+j]; --i);
  if (i >= 0) {
   int max = bmBc[str[i+j]] - m + 1 + i;
   if (max < bmGs[i]) max = bmGs[i];
   j += max;
  } else return (void*)(str + j);
 }
 if (_prep == 0) free(prep);
 return 0;
}

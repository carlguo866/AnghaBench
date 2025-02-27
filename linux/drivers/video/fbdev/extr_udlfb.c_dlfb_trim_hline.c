
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static int dlfb_trim_hline(const u8 *bback, const u8 **bfront, int *width_bytes)
{
 int j, k;
 const unsigned long *back = (const unsigned long *) bback;
 const unsigned long *front = (const unsigned long *) *bfront;
 const int width = *width_bytes / sizeof(unsigned long);
 int identical = width;
 int start = width;
 int end = width;

 for (j = 0; j < width; j++) {
  if (back[j] != front[j]) {
   start = j;
   break;
  }
 }

 for (k = width - 1; k > j; k--) {
  if (back[k] != front[k]) {
   end = k+1;
   break;
  }
 }

 identical = start + (width - end);
 *bfront = (u8 *) &front[start];
 *width_bytes = (end - start) * sizeof(unsigned long);

 return identical * sizeof(unsigned long);
}

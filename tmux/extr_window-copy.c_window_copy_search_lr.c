
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct grid {scalar_t__ sx; } ;


 int window_copy_search_compare (struct grid*,scalar_t__,scalar_t__,struct grid*,scalar_t__,int) ;

__attribute__((used)) static int
window_copy_search_lr(struct grid *gd,
    struct grid *sgd, u_int *ppx, u_int py, u_int first, u_int last, int cis)
{
 u_int ax, bx, px;
 int matched;

 for (ax = first; ax < last; ax++) {
  if (ax + sgd->sx > gd->sx)
   break;
  for (bx = 0; bx < sgd->sx; bx++) {
   px = ax + bx;
   matched = window_copy_search_compare(gd, px, py, sgd,
       bx, cis);
   if (!matched)
    break;
  }
  if (bx == sgd->sx) {
   *ppx = ax;
   return (1);
  }
 }
 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32_t ;


 scalar_t__ _adds (scalar_t__,scalar_t__) ;
 scalar_t__ _max (scalar_t__,scalar_t__) ;
 scalar_t__ _subs (scalar_t__,scalar_t__) ;
 int vcos_assert (int) ;

void khrn_clip_range2(
   int32_t *min_ax0_io, int32_t *min_bx0_io, int32_t *l0_io,
   int32_t min_ax1, int32_t al1,
   int32_t min_bx1, int32_t bl1)
{
   int32_t min_ax0;
   int32_t min_bx0;
   int32_t l0;
   int32_t max_ax0;
   int32_t max_bx0;
   int32_t max_ax1;
   int32_t max_bx1;

   vcos_assert((*l0_io >= 0) && (al1 >= 0) && (bl1 >= 0));

   min_ax0 = *min_ax0_io;
   min_bx0 = *min_bx0_io;
   l0 = *l0_io;

   l0 = _adds(_max(min_ax0, min_bx0), l0) - _max(min_ax0, min_bx0);
   max_ax0 = min_ax0 + l0;
   max_bx0 = min_bx0 + l0;
   max_ax1 = min_ax1 + al1;
   max_bx1 = min_bx1 + bl1;






   if (min_ax0 < min_ax1) {
      min_bx0 = _adds(min_bx0, _subs(min_ax1, min_ax0));
      min_ax0 = min_ax1;
   }
   if (max_ax0 > max_ax1) {
      max_bx0 = _subs(max_bx0, _subs(max_ax0, max_ax1));
      max_ax0 = max_ax1;
   }

   if (min_bx0 < min_bx1) {
      min_ax0 = _adds(min_ax0, _subs(min_bx1, min_bx0));
      min_bx0 = min_bx1;
   }
   if (max_bx0 > max_bx1) {
      max_ax0 = _subs(max_ax0, _subs(max_bx0, max_bx1));
      max_bx0 = max_bx1;
   }

   l0 = _max(_subs(max_ax0, min_ax0), 0);
   vcos_assert(l0 == _max(_subs(max_bx0, min_bx0), 0));

   *min_ax0_io = (l0 == 0) ? min_ax1 : min_ax0;
   *min_bx0_io = (l0 == 0) ? min_bx1 : min_bx0;
   *l0_io = l0;
}

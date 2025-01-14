
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_bitmap_diff_iter {int curnode; unsigned long* orig_bm; unsigned long* cur_bm; unsigned long* diff_bm; } ;


 int BITS_TO_LONGS (int ) ;
 int O2NM_MAX_NODES ;

__attribute__((used)) static void dlm_bitmap_diff_iter_init(struct dlm_bitmap_diff_iter *iter,
          unsigned long *orig_bm,
          unsigned long *cur_bm)
{
 unsigned long p1, p2;
 int i;

 iter->curnode = -1;
 iter->orig_bm = orig_bm;
 iter->cur_bm = cur_bm;

 for (i = 0; i < BITS_TO_LONGS(O2NM_MAX_NODES); i++) {
         p1 = *(iter->orig_bm + i);
         p2 = *(iter->cur_bm + i);
  iter->diff_bm[i] = (p1 & ~p2) | (p2 & ~p1);
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_start {scalar_t__ schema_id; int split_mod; int split_min; int split_max; int extra_bytes; int* str; } ;


 scalar_t__ TEXT_SCHEMA_V1 ;
 int assert (int) ;
 unsigned short extra_mask ;
 int split_max ;
 int split_min ;
 int split_mod ;

__attribute__((used)) static int text_le_start (struct lev_start *E) {
  assert (E->schema_id == TEXT_SCHEMA_V1);
  if (split_mod) {
    assert (E->split_mod >= split_mod && !(E->split_mod % split_mod) && split_min == E->split_min % split_mod && E->split_max == E->split_min + 1);
  }
  split_min = E->split_min;
  split_max = E->split_max;
  split_mod = E->split_mod;
  assert (split_mod > 0 && split_min >= 0 && split_min + 1 == split_max && split_max <= split_mod);

  extra_mask = 0;
  if (E->extra_bytes >= 3 && E->str[0] == 1) {
    extra_mask = *(unsigned short *) (E->str + 1);
  }

  return 0;
}

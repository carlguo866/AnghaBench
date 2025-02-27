
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_item {long long item_id; int extra; } ;


 int FLAG_DELETED ;
 struct index_item* IndexItems ;
 int idx_items ;

__attribute__((used)) static struct index_item *get_idx_item (long long item_id) {
  int a = -1, b = idx_items, c;
  while (b - a > 1) {
    c = ((a + b) >> 1);
    if (IndexItems[c].item_id <= item_id) { a = c; } else { b = c; }
  }
  if (a >= 0 && IndexItems[a].item_id == item_id && !(IndexItems[a].extra & FLAG_DELETED)) {
    return IndexItems + a;
  } else {
    return 0;
  }
}

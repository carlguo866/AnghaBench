
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int item_t ;


 int FLAG_REVERSE_SEARCH ;
 int Q_order ;
 int ** R ;
 int* RV ;
 int R_cnt ;

__attribute__((used)) static void heap_sort_res (void) {
  int i, j, k, r;
  item_t *t;
  for (k = R_cnt - 1; k > 0; k--) {
    t = R[k+1];
    r = RV[k+1];
    R[k+1] = R[1];
    RV[k+1] = RV[1];
    i = 1;
    while (1) {
      j = 2*i;
      if (j > k) { break; }
      if (j < k) {
        if (RV[j+1] > RV[j]) { j++; }
      }
      if (r >= RV[j]) { break; }
      R[i] = R[j];
      RV[i] = RV[j];
      i = j;
    }
    R[i] = t;
    RV[i] = r;
  }

  if (Q_order & FLAG_REVERSE_SEARCH) {
    for (i = 0; i < R_cnt; i++) {
      R[i] = R[i+1];
      RV[i] = -(RV[i+1] + 1);
    }
  } else {
    for (i = 0; i < R_cnt; i++) {
      R[i] = R[i+1];
      RV[i] = RV[i+1];
    }
  }
}

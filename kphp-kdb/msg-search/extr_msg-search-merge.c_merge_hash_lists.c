
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int order; int message_id; int hash; } ;
typedef TYPE_2__ pair_t ;
typedef int hash_t ;
struct TYPE_8__ {int order; int message_id; int hash; } ;
struct TYPE_6__ {int message_id; } ;


 int* CurL ;
 int* D ;
 int Dc ;
 int Dc0 ;
 int MAX_DATA ;
 size_t MAX_PAIRS ;
 TYPE_5__* Q ;
 size_t Qc ;
 int assert (int) ;
 int prune_list (int*,int*,int,int) ;

__attribute__((used)) static void merge_hash_lists (pair_t *old_list, pair_t *start, int cnt) {
  int pos_thr = 0x7fffffff, neg_thr = -0x7fffffff, i;
  hash_t h;

  if (cnt) {
    h = start->hash;
  } else if (old_list) {
    h = old_list->hash;
  } else {
    return;
  }

  Dc0 = Dc;
  assert (Dc + cnt <= MAX_DATA);

  for (i = 0; i < cnt; i++) {
    int msg_id = (start++)->message_id;
    if (msg_id > 0) { pos_thr = msg_id; } else { neg_thr = msg_id; }
    D[Dc++] = msg_id;
  }

  if (old_list && old_list->order) {
    int cnt = old_list->order;
    int *ptr = (cnt == 1 ? &old_list->message_id : CurL + old_list->message_id);
    assert ((unsigned) cnt < MAX_DATA && Dc + cnt <= MAX_DATA);
    prune_list (ptr, ptr+cnt, pos_thr, neg_thr);
  }

  if (Dc > Dc0) {
    assert (Qc < MAX_PAIRS);
    Q[Qc].hash = h;
    Q[Qc].order = Dc - Dc0;
    if (Dc - Dc0 > 1) {
      Q[Qc++].message_id = Dc0;
    } else {
      Q[Qc++].message_id = D[Dc0];
      Dc = Dc0;
    }
  }
}

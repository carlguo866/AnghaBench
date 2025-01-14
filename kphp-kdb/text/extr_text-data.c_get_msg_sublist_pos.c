
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int listree_t ;


 scalar_t__ R_cnt ;
 int assert (int) ;
 int listree_get_pos (int *,int,int) ;
 int listree_get_size (int *) ;
 int load_user_metafile (int) ;
 int prepare_msg_sublist (int,int,int,int **,int,int) ;

int get_msg_sublist_pos (int user_id, int and_mask, int xor_mask, int local_id) {
  static listree_t *X;
  int S;
  static int rec_cnt = 0;

  R_cnt = 0;

  int res = prepare_msg_sublist (user_id, and_mask, xor_mask, &X, 1, 1);
  if (res != -4) {
    return res;
  }

  S = listree_get_size (X);
  assert (S >= 0);
  if (!S) {
    return 0;
  }

  res = listree_get_pos (X, local_id, 1);

  if (res == -2) {
    if (!load_user_metafile (user_id)) {
      return -2;
    }
    assert (++rec_cnt == 1);
    res = get_msg_sublist_pos (user_id, and_mask, xor_mask, local_id);
    --rec_cnt;
    return res;
  }

  res++;

  assert (res >= 0 && res <= S);
  return res;
}

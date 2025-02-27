
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* GT ;
 size_t Gc ;
 void** I ;
 scalar_t__ LEV_LI_SET_ENTRY ;
 int adj_rec ;
 scalar_t__ conv_uid (size_t) ;
 size_t gm_confirmed ;
 size_t gm_group_id ;
 size_t gm_user_id ;
 size_t gm_who_invited ;
 size_t list_id ;
 int log_2ints (scalar_t__,int,int) ;

void process_group_members_row (void) {
  int user_id = I[gm_user_id];
  int confirmed = I[gm_confirmed];
  int who_invited = I[gm_who_invited];
  list_id = I[gm_group_id];
  if (conv_uid (list_id) < 0 || list_id <= 0 || user_id <= 0 || confirmed <= 0 || confirmed > 2) {
    return;
  }
  if (list_id < Gc) {
    if (GT[list_id] == 3) {
      confirmed += 4;
    } else if (GT[list_id] != 2) {
      return;
    }
  }
  log_2ints (LEV_LI_SET_ENTRY + confirmed + 1, user_id, who_invited > 0 ? who_invited : 0);
  adj_rec++;
}

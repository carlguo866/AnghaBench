
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ hash_cnt; scalar_t__ list_cnt; scalar_t__ offset; scalar_t__ file_no; int user_id; } ;
typedef TYPE_1__ userlist_entry_t ;
typedef int user_header_t ;
struct TYPE_6__ {scalar_t__ hash_cnt; scalar_t__ list_cnt; int user_id; } ;


 int MAX_METAINDEX_USERS ;
 int M_cnt ;
 TYPE_1__* MetaA ;
 TYPE_1__** MetaP ;
 TYPE_2__ User ;
 int assert (int) ;
 scalar_t__ dropped_pairs ;
 scalar_t__ max_Dc ;
 int max_Dc_user ;
 scalar_t__ max_Qc ;
 int max_Qc_user ;
 int tot_Dc ;
 int tot_Qc ;
 int tot_dropped_pairs ;
 scalar_t__ wpos ;

__attribute__((used)) static void add_to_userlist (void) {
  userlist_entry_t *P = MetaA + M_cnt;
  assert (M_cnt < MAX_METAINDEX_USERS);
  if (User.hash_cnt <= 0) { return; }

  P->user_id = User.user_id;
  P->hash_cnt = User.hash_cnt;
  P->list_cnt = User.list_cnt;
  P->file_no = 0;
  P->offset = wpos + sizeof(user_header_t);
  MetaP[M_cnt++] = P;

  tot_dropped_pairs += dropped_pairs;
  dropped_pairs = 0;
  tot_Dc += User.list_cnt;
  if (User.list_cnt > max_Dc) { max_Dc = User.list_cnt; max_Dc_user = User.user_id; }
  tot_Qc += User.hash_cnt;
  if (User.hash_cnt > max_Qc) { max_Qc = User.hash_cnt; max_Qc_user = User.user_id; }

}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* left; struct TYPE_5__* right; } ;
typedef TYPE_1__ utree_t ;
struct TYPE_6__ {int user_id; int rate; } ;
typedef TYPE_2__ user_t ;


 int Q_limit ;
 int* R ;
 int R_cnt ;
 scalar_t__ user_matches (TYPE_2__*) ;

__attribute__((used)) static void perform_query_rate_right (utree_t *T) {
  if (!T) {
    return;
  }

  perform_query_rate_right (T->right);

  if (R_cnt >= Q_limit * 2) {
    return;
  }

  user_t *U = (user_t *)T;
  if (user_matches (U)) {
    R[R_cnt++] = U->user_id;
    R[R_cnt++] = U->rate >> 8;
  }

  if (R_cnt >= Q_limit * 2) {
    return;
  }

  perform_query_rate_right (T->left);
}

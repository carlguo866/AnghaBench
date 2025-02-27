
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ delayed_tree; int peer_tree; struct file_user_list_entry* dir_entry; } ;
typedef TYPE_1__ user_t ;
struct TYPE_11__ {int data; } ;
typedef TYPE_2__ tree_t ;
struct file_user_list_entry {int dummy; } ;
struct TYPE_12__ {int last_A; int N; int * A; int root; } ;
typedef TYPE_3__ listree_t ;
struct TYPE_13__ {char* data; } ;
typedef TYPE_4__ core_mf_t ;


 int NIL ;
 int assert (int) ;
 scalar_t__ conv_uid (int) ;
 int * fetch_file_peer_list (char*,int,int *) ;
 TYPE_1__* get_user (int) ;
 char* get_user_metafile (TYPE_1__*) ;
 TYPE_4__* load_user_metafile (int) ;
 struct file_user_list_entry* lookup_user_directory (int) ;
 TYPE_2__* tree_lookup (int ,int) ;

int prepare_peer_msglist (int user_id, int peer_id, listree_t *X) {
  user_t *U;
  tree_t *T;
  struct file_user_list_entry *D;
  char *metafile;



  if (conv_uid (user_id) < 0 || !peer_id) {
    return -1;
  }

  U = get_user (user_id);
  T = 0;

  if (U) {
    D = U->dir_entry;
    if (U->delayed_tree) {

      if (!load_user_metafile (user_id)) {
        return -2;
      }
    }
    T = tree_lookup (U->peer_tree, peer_id);
  } else {
    D = lookup_user_directory (user_id);
  }

  if (!T && !D) {
    return 0;
  }

  X->root = (T ? T->data : NIL);

  if (D) {
    if (!U || !get_user_metafile (U)) {
      core_mf_t *M = load_user_metafile (user_id);
      if (!M) {
        return -2;
      }
      metafile = M->data;
    } else {
      metafile = get_user_metafile (U);
    }
    X->A = fetch_file_peer_list (metafile, peer_id, &X->N);
    X->last_A = (X->N ? X->A[X->N-1] : 0);

  } else {
    X->A = 0;
    X->N = 0;
    X->last_A = 0;
  }

  assert (!U || !U->delayed_tree);
  return 1;
}

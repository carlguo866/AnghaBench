
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* history_mf; } ;
typedef TYPE_1__ user_t ;
struct TYPE_7__ {scalar_t__ len; TYPE_5__* prev; TYPE_5__* next; scalar_t__ aio; } ;
typedef TYPE_2__ core_mf_t ;
struct TYPE_8__ {struct TYPE_8__* next; struct TYPE_8__* prev; } ;


 int allocated_history_metafile_bytes ;
 int assert (TYPE_5__*) ;
 int cur_history_metafile_bytes ;
 int cur_history_metafiles ;
 int fprintf (int ,char*,long long) ;
 int free (TYPE_2__*) ;
 TYPE_1__* get_user (long long) ;
 int stderr ;
 int verbosity ;

int unload_history_metafile (long long user_id) {
  user_t *U = get_user (user_id);

  if (verbosity > 1) {
    fprintf (stderr, "unload_history_metafile(%lld)\n", user_id);
  }

  if (!U || !U->history_mf || U->history_mf->aio) {
    if (verbosity > 1) {
      fprintf (stderr, "cannot unload history metafile (%lld)\n", user_id);
    }
    return 0;
  }

  core_mf_t *M = U->history_mf;

  assert (M->next);
  M->next->prev = M->prev;
  M->prev->next = M->next;
  M->next = M->prev = 0;

  allocated_history_metafile_bytes -= M->len;
  cur_history_metafile_bytes -= M->len;
  cur_history_metafiles--;

  free (M);
  U->history_mf = 0;

  if (verbosity > 1) {
    fprintf (stderr, "unload_history_metafile(%lld) END\n", user_id);
  }

  return 1;
}

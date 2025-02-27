
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ ua_next_enc; scalar_t__ ua_prev_enc; } ;
struct TYPE_9__ {TYPE_2__* uap_next; TYPE_1__* uap_prev; int uap_name; TYPE_6__ uap_null_avl; scalar_t__ uap_debug; } ;
typedef TYPE_3__ uu_avl_pool_t ;
struct TYPE_8__ {TYPE_1__* uap_prev; } ;
struct TYPE_7__ {TYPE_2__* uap_next; } ;


 scalar_t__ UU_PTR_ENCODE (TYPE_6__*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int uu_apool_list_lock ;
 int uu_free (TYPE_3__*) ;
 int uu_panic (char*,int,int ,void*) ;

void
uu_avl_pool_destroy(uu_avl_pool_t *pp)
{
 if (pp->uap_debug) {
  if (pp->uap_null_avl.ua_next_enc !=
      UU_PTR_ENCODE(&pp->uap_null_avl) ||
      pp->uap_null_avl.ua_prev_enc !=
      UU_PTR_ENCODE(&pp->uap_null_avl)) {
   uu_panic("uu_avl_pool_destroy: Pool \"%.*s\" (%p) has "
       "outstanding avls, or is corrupt.\n",
       (int)sizeof (pp->uap_name), pp->uap_name,
       (void *)pp);
  }
 }
 (void) pthread_mutex_lock(&uu_apool_list_lock);
 pp->uap_next->uap_prev = pp->uap_prev;
 pp->uap_prev->uap_next = pp->uap_next;
 (void) pthread_mutex_unlock(&uu_apool_list_lock);
 pp->uap_prev = ((void*)0);
 pp->uap_next = ((void*)0);
 uu_free(pp);
}

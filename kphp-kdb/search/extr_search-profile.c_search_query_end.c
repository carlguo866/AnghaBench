
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_6__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ cpu_time; int res; scalar_t__ expiration_time; } ;
typedef TYPE_1__ search_query_heap_en_t ;
struct TYPE_8__ {scalar_t__ cpu_time; } ;


 scalar_t__ SEARCH_QUERY_EXPIRATION_TIME ;
 scalar_t__ SEARCH_QUERY_HEAP_SIZE ;
 TYPE_6__* SQH ;
 scalar_t__ SQH_SIZE ;
 scalar_t__ get_rusage_time () ;
 scalar_t__ now ;
 int search_query_heap_insert (TYPE_1__*) ;

void search_query_end (search_query_heap_en_t *E, int res, void *arg, void (*copy) (search_query_heap_en_t *, void *)) {
  E->cpu_time += get_rusage_time ();
  if (SQH_SIZE < SEARCH_QUERY_HEAP_SIZE || SQH[1].cpu_time < E->cpu_time) {
    copy (E, arg);
    E->res = res;
    E->expiration_time = now + SEARCH_QUERY_EXPIRATION_TIME;
    search_query_heap_insert (E);
  }
}

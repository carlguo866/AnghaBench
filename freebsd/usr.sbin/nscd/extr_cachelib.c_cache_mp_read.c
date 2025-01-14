
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct cache_mp_read_session_ {TYPE_1__* current_item; } ;
struct TYPE_3__ {size_t value_size; int value; } ;


 TYPE_1__* TAILQ_NEXT (TYPE_1__*,int ) ;
 int TRACE_IN (int (*) (struct cache_mp_read_session_*,char*,size_t*)) ;
 int TRACE_OUT (int (*) (struct cache_mp_read_session_*,char*,size_t*)) ;
 int assert (int ) ;
 int entries ;
 int memcpy (char*,int ,size_t) ;

int
cache_mp_read(struct cache_mp_read_session_ *rs, char *data, size_t *data_size)
{

 TRACE_IN(cache_mp_read);
 assert(rs != ((void*)0));

 if (rs->current_item == ((void*)0)) {
  TRACE_OUT(cache_mp_read);
  return (-1);
 }

 if (rs->current_item->value_size > *data_size) {
  *data_size = rs->current_item->value_size;
  if (data == ((void*)0)) {
   TRACE_OUT(cache_mp_read);
   return (0);
  }

  TRACE_OUT(cache_mp_read);
  return (-2);
 }

 *data_size = rs->current_item->value_size;
 memcpy(data, rs->current_item->value, rs->current_item->value_size);
 rs->current_item = TAILQ_NEXT(rs->current_item, entries);

 TRACE_OUT(cache_mp_read);
 return (0);
}

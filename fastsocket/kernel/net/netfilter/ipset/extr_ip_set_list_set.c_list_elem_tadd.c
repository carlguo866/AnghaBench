
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct set_telem {scalar_t__ id; scalar_t__ timeout; } ;
struct list_set {scalar_t__ size; } ;
typedef unsigned long ip_set_id_t ;


 scalar_t__ IPSET_INVALID_ID ;
 struct set_telem* list_set_telem (struct list_set*,scalar_t__) ;
 int swap (scalar_t__,unsigned long) ;

__attribute__((used)) static void
list_elem_tadd(struct list_set *map, u32 i, ip_set_id_t id,
        unsigned long timeout)
{
 struct set_telem *e;

 for (; i < map->size; i++) {
  e = list_set_telem(map, i);
  swap(e->id, id);
  swap(e->timeout, timeout);
  if (e->id == IPSET_INVALID_ID)
   break;
 }
}

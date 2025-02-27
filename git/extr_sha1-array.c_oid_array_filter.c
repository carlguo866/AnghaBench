
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oid_array {unsigned int nr; struct object_id* oid; } ;
struct object_id {int dummy; } ;
typedef scalar_t__ (* for_each_oid_fn ) (struct object_id*,void*) ;


 int oidcpy (struct object_id*,struct object_id*) ;

void oid_array_filter(struct oid_array *array,
        for_each_oid_fn want,
        void *cb_data)
{
 unsigned nr = array->nr, src, dst;
 struct object_id *oids = array->oid;

 for (src = dst = 0; src < nr; src++) {
  if (want(&oids[src], cb_data)) {
   if (src != dst)
    oidcpy(&oids[dst], &oids[src]);
   dst++;
  }
 }
 array->nr = dst;
}

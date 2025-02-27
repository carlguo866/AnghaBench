
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oidset {int dummy; } ;
struct object {int oid; } ;


 int oidset_insert (struct oidset*,int *) ;
 int oidset_remove (struct oidset*,int *) ;

__attribute__((used)) static int filter_trees_update_omits(
 struct object *obj,
 struct oidset *omits,
 int include_it)
{
 if (!omits)
  return 0;

 if (include_it)
  return oidset_remove(omits, &obj->oid);
 else
  return oidset_insert(omits, &obj->oid);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct btf_type {int dummy; } ;
struct btf {size_t nr_types; struct btf_type const** types; } ;



const struct btf_type *btf_type_by_id(const struct btf *btf, u32 type_id)
{
 if (type_id > btf->nr_types)
  return ((void*)0);

 return btf->types[type_id];
}

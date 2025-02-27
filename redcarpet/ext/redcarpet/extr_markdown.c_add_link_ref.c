
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct link_ref {size_t id; struct link_ref* next; } ;


 size_t REF_TABLE_SIZE ;
 struct link_ref* calloc (int,int) ;
 size_t hash_link_ref (int const*,size_t) ;

__attribute__((used)) static struct link_ref *
add_link_ref(
 struct link_ref **references,
 const uint8_t *name, size_t name_size)
{
 struct link_ref *ref = calloc(1, sizeof(struct link_ref));

 if (!ref)
  return ((void*)0);

 ref->id = hash_link_ref(name, name_size);
 ref->next = references[ref->id % REF_TABLE_SIZE];

 references[ref->id % REF_TABLE_SIZE] = ref;
 return ref;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_entry {int type_; scalar_t__ type_valid; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;


 int OBJ_BAD ;

__attribute__((used)) static inline enum object_type oe_type(const struct object_entry *e)
{
 return e->type_valid ? e->type_ : OBJ_BAD;
}

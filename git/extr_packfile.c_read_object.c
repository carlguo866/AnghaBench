
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct object_info {int* typep; unsigned long* sizep; void** contentp; } ;
struct object_id {int dummy; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;


 struct object_info OBJECT_INFO_INIT ;
 scalar_t__ oid_object_info_extended (struct repository*,struct object_id const*,struct object_info*,int ) ;

__attribute__((used)) static void *read_object(struct repository *r,
    const struct object_id *oid,
    enum object_type *type,
    unsigned long *size)
{
 struct object_info oi = OBJECT_INFO_INIT;
 void *content;
 oi.typep = type;
 oi.sizep = size;
 oi.contentp = &content;

 if (oid_object_info_extended(r, oid, &oi, 0) < 0)
  return ((void*)0);
 return content;
}

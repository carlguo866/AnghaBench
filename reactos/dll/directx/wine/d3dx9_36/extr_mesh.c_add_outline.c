
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct outline_array {scalar_t__ count; struct outline* items; } ;
struct outline {int dummy; } ;
struct dynamic_array {int dummy; } ;


 int ZeroMemory (struct outline*,int) ;
 int reserve (struct dynamic_array*,scalar_t__,int) ;

__attribute__((used)) static struct outline *add_outline(struct outline_array *array)
{
    struct outline *item;

    if (!reserve((struct dynamic_array *)array, array->count + 1, sizeof(array->items[0])))
        return ((void*)0);

    item = &array->items[array->count++];
    ZeroMemory(item, sizeof(*item));
    return item;
}

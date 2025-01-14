
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ALLOC_ALWAYS_SUCCEED ;
 scalar_t__ allocation_count ;
 void* malloc (size_t) ;

__attribute__((used)) static void *duff_allocator(size_t size)
{
    if (allocation_count == 0)
        return ((void*)0);
    if (allocation_count != ALLOC_ALWAYS_SUCCEED)
        allocation_count--;
    return malloc(size);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int atomic64_t ;


 int atomic64_add_return (int ,int *) ;

u64 atomic64_sub_return(u64 delta, atomic64_t *ptr)
{
 return atomic64_add_return(-delta, ptr);
}

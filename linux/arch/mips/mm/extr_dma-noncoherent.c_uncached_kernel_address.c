
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ UNCAC_BASE ;
 scalar_t__ __pa (void*) ;

void *uncached_kernel_address(void *addr)
{
 return (void *)(__pa(addr) + UNCAC_BASE);
}

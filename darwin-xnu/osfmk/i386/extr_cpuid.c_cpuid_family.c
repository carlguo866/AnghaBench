
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int cpuid_family; } ;


 TYPE_1__* cpuid_info () ;

unsigned int
cpuid_family(void)
{
 return cpuid_info()->cpuid_family;
}

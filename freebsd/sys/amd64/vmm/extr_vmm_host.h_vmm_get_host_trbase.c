
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 scalar_t__ PCPU_GET (int ) ;
 int tssp ;

__attribute__((used)) static __inline uint64_t
vmm_get_host_trbase(void)
{

 return ((uint64_t)PCPU_GET(tssp));
}

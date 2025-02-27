
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* clusters; } ;
struct TYPE_5__ {TYPE_1__* cpus; } ;
struct TYPE_4__ {int cpu; } ;


 int CPU_GOING_DOWN ;
 TYPE_3__ mcpm_sync ;
 int sync_cache_w (int *) ;

__attribute__((used)) static void __mcpm_cpu_going_down(unsigned int cpu, unsigned int cluster)
{
 mcpm_sync.clusters[cluster].cpus[cpu].cpu = CPU_GOING_DOWN;
 sync_cache_w(&mcpm_sync.clusters[cluster].cpus[cpu].cpu);
}

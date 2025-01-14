
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_env {TYPE_1__* cpu; } ;
struct perf_cpu_map {int dummy; } ;
struct TYPE_2__ {int socket_id; int die_id; int core_id; } ;


 scalar_t__ WARN_ONCE (int,char*) ;
 int perf_env__get_cpu (struct perf_env*,struct perf_cpu_map*,int) ;

__attribute__((used)) static int perf_env__get_core(struct perf_cpu_map *map, int idx, void *data)
{
 struct perf_env *env = data;
 int core = -1, cpu = perf_env__get_cpu(env, map, idx);

 if (cpu != -1) {







  if (WARN_ONCE(env->cpu[cpu].socket_id >> 8, "The socket id number is too big.\n"))
   return -1;

  if (WARN_ONCE(env->cpu[cpu].die_id >> 8, "The die id number is too big.\n"))
   return -1;

  if (WARN_ONCE(env->cpu[cpu].core_id >> 16, "The core id number is too big.\n"))
   return -1;

  core = (env->cpu[cpu].socket_id << 24) |
         (env->cpu[cpu].die_id << 16) |
         (env->cpu[cpu].core_id & 0xffff);
 }

 return core;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_env {TYPE_1__* cpu; } ;
struct perf_cpu_map {int dummy; } ;
struct TYPE_2__ {int socket_id; } ;


 int perf_env__get_cpu (struct perf_env*,struct perf_cpu_map*,int) ;

__attribute__((used)) static int perf_env__get_socket(struct perf_cpu_map *map, int idx, void *data)
{
 struct perf_env *env = data;
 int cpu = perf_env__get_cpu(env, map, idx);

 return cpu == -1 ? -1 : env->cpu[cpu].socket_id;
}

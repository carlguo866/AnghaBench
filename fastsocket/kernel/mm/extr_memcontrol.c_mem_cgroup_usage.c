
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mem_cgroup {int memsw; int res; } ;


 int MEM_CGROUP_STAT_CACHE ;
 int MEM_CGROUP_STAT_RSS ;
 int MEM_CGROUP_STAT_SWAPOUT ;
 int PAGE_SHIFT ;
 int RES_USAGE ;
 int mem_cgroup_get_recursive_idx_stat (struct mem_cgroup*,int ) ;
 int mem_cgroup_is_root (struct mem_cgroup*) ;
 int res_counter_read_u64 (int *,int ) ;

__attribute__((used)) static inline u64 mem_cgroup_usage(struct mem_cgroup *mem, bool swap)
{
 u64 val;

 if (!mem_cgroup_is_root(mem)) {
  if (!swap)
   return res_counter_read_u64(&mem->res, RES_USAGE);
  else
   return res_counter_read_u64(&mem->memsw, RES_USAGE);
 }

 val = mem_cgroup_get_recursive_idx_stat(mem, MEM_CGROUP_STAT_CACHE);
 val += mem_cgroup_get_recursive_idx_stat(mem, MEM_CGROUP_STAT_RSS);

 if (swap)
  val += mem_cgroup_get_recursive_idx_stat(mem,
    MEM_CGROUP_STAT_SWAPOUT);

 return val << PAGE_SHIFT;
}

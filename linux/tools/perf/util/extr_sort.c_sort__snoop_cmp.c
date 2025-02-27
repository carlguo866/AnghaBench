
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union perf_mem_data_src {void* mem_snoop; } ;
struct hist_entry {TYPE_1__* mem_info; } ;
typedef int int64_t ;
struct TYPE_2__ {union perf_mem_data_src data_src; } ;


 void* PERF_MEM_SNOOP_NA ;

__attribute__((used)) static int64_t
sort__snoop_cmp(struct hist_entry *left, struct hist_entry *right)
{
 union perf_mem_data_src data_src_l;
 union perf_mem_data_src data_src_r;

 if (left->mem_info)
  data_src_l = left->mem_info->data_src;
 else
  data_src_l.mem_snoop = PERF_MEM_SNOOP_NA;

 if (right->mem_info)
  data_src_r = right->mem_info->data_src;
 else
  data_src_r.mem_snoop = PERF_MEM_SNOOP_NA;

 return (int64_t)(data_src_r.mem_snoop - data_src_l.mem_snoop);
}

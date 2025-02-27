
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct smu_table_context {scalar_t__ table_count; struct smu_table* tables; } ;
struct smu_table {scalar_t__ size; int cpu_addr; int mc_address; int bo; } ;
struct smu_context {struct smu_table_context smu_table; } ;


 int amdgpu_bo_free_kernel (int *,int *,int *) ;

__attribute__((used)) static int smu_fini_fb_allocations(struct smu_context *smu)
{
 struct smu_table_context *smu_table = &smu->smu_table;
 struct smu_table *tables = smu_table->tables;
 uint32_t table_count = smu_table->table_count;
 uint32_t i = 0;

 if (table_count == 0 || tables == ((void*)0))
  return 0;

 for (i = 0 ; i < table_count; i++) {
  if (tables[i].size == 0)
   continue;
  amdgpu_bo_free_kernel(&tables[i].bo,
          &tables[i].mc_address,
          &tables[i].cpu_addr);
 }

 return 0;
}

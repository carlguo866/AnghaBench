
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sg_table {int nents; int sgl; } ;
struct agp_memory {scalar_t__ page_count; int type; int is_flushed; int pages; int num_sg; int sg_list; } ;
typedef scalar_t__ off_t ;
struct TYPE_4__ {int clear_fake_agp; int stolen_size; int gtt_mappable_entries; scalar_t__ gtt_total_entries; scalar_t__ needs_dmar; TYPE_1__* driver; } ;
struct TYPE_3__ {int (* check_flags ) (int) ;} ;


 int AGP_DCACHE_MEMORY ;
 int EINVAL ;
 int INTEL_GTT_GEN ;
 int PAGE_SIZE ;
 int global_cache_flush () ;
 int i810_insert_dcache_entries (struct agp_memory*,scalar_t__,int) ;
 int intel_gtt_clear_range (int,int) ;
 int intel_gtt_insert_pages (scalar_t__,scalar_t__,int ,int) ;
 int intel_gtt_insert_sg_entries (struct sg_table*,scalar_t__,int) ;
 int intel_gtt_map_memory (int ,scalar_t__,struct sg_table*) ;
 TYPE_2__ intel_private ;
 int stub1 (int) ;

__attribute__((used)) static int intel_fake_agp_insert_entries(struct agp_memory *mem,
      off_t pg_start, int type)
{
 int ret = -EINVAL;

 if (intel_private.clear_fake_agp) {
  int start = intel_private.stolen_size / PAGE_SIZE;
  int end = intel_private.gtt_mappable_entries;
  intel_gtt_clear_range(start, end - start);
  intel_private.clear_fake_agp = 0;
 }

 if (INTEL_GTT_GEN == 1 && type == AGP_DCACHE_MEMORY)
  return i810_insert_dcache_entries(mem, pg_start, type);

 if (mem->page_count == 0)
  goto out;

 if (pg_start + mem->page_count > intel_private.gtt_total_entries)
  goto out_err;

 if (type != mem->type)
  goto out_err;

 if (!intel_private.driver->check_flags(type))
  goto out_err;

 if (!mem->is_flushed)
  global_cache_flush();

 if (intel_private.needs_dmar) {
  struct sg_table st;

  ret = intel_gtt_map_memory(mem->pages, mem->page_count, &st);
  if (ret != 0)
   return ret;

  intel_gtt_insert_sg_entries(&st, pg_start, type);
  mem->sg_list = st.sgl;
  mem->num_sg = st.nents;
 } else
  intel_gtt_insert_pages(pg_start, mem->page_count, mem->pages,
           type);

out:
 ret = 0;
out_err:
 mem->is_flushed = 1;
 return ret;
}

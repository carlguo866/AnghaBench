
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttm_tt {int * pages; } ;
struct ttm_operation_ctx {int interruptible; int no_wait_gpu; } ;
struct ttm_mem_reg {int placement; } ;
struct ttm_buffer_object {struct ttm_tt* ttm; struct ttm_mem_reg mem; } ;
struct ttm_bo_kmap_obj {int virtual; int bo_kmap_type; int page; } ;
typedef int pgprot_t ;


 int BUG_ON (int) ;
 int ENOMEM ;
 int PAGE_KERNEL ;
 int TTM_PL_FLAG_CACHED ;
 int kmap (int ) ;
 int ttm_bo_map_kmap ;
 int ttm_bo_map_vmap ;
 int ttm_io_prot (int,int ) ;
 int ttm_tt_populate (struct ttm_tt*,struct ttm_operation_ctx*) ;
 int vmap (int *,unsigned long,int ,int ) ;

__attribute__((used)) static int ttm_bo_kmap_ttm(struct ttm_buffer_object *bo,
      unsigned long start_page,
      unsigned long num_pages,
      struct ttm_bo_kmap_obj *map)
{
 struct ttm_mem_reg *mem = &bo->mem;
 struct ttm_operation_ctx ctx = {
  .interruptible = 0,
  .no_wait_gpu = 0
 };
 struct ttm_tt *ttm = bo->ttm;
 pgprot_t prot;
 int ret;

 BUG_ON(!ttm);

 ret = ttm_tt_populate(ttm, &ctx);
 if (ret)
  return ret;

 if (num_pages == 1 && (mem->placement & TTM_PL_FLAG_CACHED)) {





  map->bo_kmap_type = ttm_bo_map_kmap;
  map->page = ttm->pages[start_page];
  map->virtual = kmap(map->page);
 } else {




  prot = ttm_io_prot(mem->placement, PAGE_KERNEL);
  map->bo_kmap_type = ttm_bo_map_vmap;
  map->virtual = vmap(ttm->pages + start_page, num_pages,
        0, prot);
 }
 return (!map->virtual) ? -ENOMEM : 0;
}

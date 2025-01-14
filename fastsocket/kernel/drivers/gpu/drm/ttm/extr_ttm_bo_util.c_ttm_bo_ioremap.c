
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {scalar_t__ offset; scalar_t__ base; scalar_t__ addr; } ;
struct ttm_mem_reg {int placement; TYPE_1__ bus; } ;
struct ttm_buffer_object {struct ttm_mem_reg mem; } ;
struct ttm_bo_kmap_obj {void* virtual; int bo_kmap_type; } ;


 int ENOMEM ;
 int TTM_PL_FLAG_WC ;
 void* ioremap_nocache (scalar_t__,unsigned long) ;
 void* ioremap_wc (scalar_t__,unsigned long) ;
 int ttm_bo_map_iomap ;
 int ttm_bo_map_premapped ;

__attribute__((used)) static int ttm_bo_ioremap(struct ttm_buffer_object *bo,
     unsigned long offset,
     unsigned long size,
     struct ttm_bo_kmap_obj *map)
{
 struct ttm_mem_reg *mem = &bo->mem;

 if (bo->mem.bus.addr) {
  map->bo_kmap_type = ttm_bo_map_premapped;
  map->virtual = (void *)(((u8 *)bo->mem.bus.addr) + offset);
 } else {
  map->bo_kmap_type = ttm_bo_map_iomap;
  if (mem->placement & TTM_PL_FLAG_WC)
   map->virtual = ioremap_wc(bo->mem.bus.base + bo->mem.bus.offset + offset,
        size);
  else
   map->virtual = ioremap_nocache(bo->mem.bus.base + bo->mem.bus.offset + offset,
             size);
 }
 return (!map->virtual) ? -ENOMEM : 0;
}

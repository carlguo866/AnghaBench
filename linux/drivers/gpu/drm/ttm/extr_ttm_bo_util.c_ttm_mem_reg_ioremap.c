
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ttm_mem_type_manager {int dummy; } ;
struct TYPE_2__ {int size; scalar_t__ offset; scalar_t__ base; void* addr; int is_iomem; } ;
struct ttm_mem_reg {size_t mem_type; int placement; TYPE_1__ bus; } ;
struct ttm_bo_device {struct ttm_mem_type_manager* man; } ;


 int ENOMEM ;
 int TTM_PL_FLAG_WC ;
 void* ioremap_nocache (scalar_t__,int ) ;
 void* ioremap_wc (scalar_t__,int ) ;
 int ttm_mem_io_free (struct ttm_bo_device*,struct ttm_mem_reg*) ;
 int ttm_mem_io_lock (struct ttm_mem_type_manager*,int) ;
 int ttm_mem_io_reserve (struct ttm_bo_device*,struct ttm_mem_reg*) ;
 int ttm_mem_io_unlock (struct ttm_mem_type_manager*) ;

__attribute__((used)) static int ttm_mem_reg_ioremap(struct ttm_bo_device *bdev, struct ttm_mem_reg *mem,
   void **virtual)
{
 struct ttm_mem_type_manager *man = &bdev->man[mem->mem_type];
 int ret;
 void *addr;

 *virtual = ((void*)0);
 (void) ttm_mem_io_lock(man, 0);
 ret = ttm_mem_io_reserve(bdev, mem);
 ttm_mem_io_unlock(man);
 if (ret || !mem->bus.is_iomem)
  return ret;

 if (mem->bus.addr) {
  addr = mem->bus.addr;
 } else {
  if (mem->placement & TTM_PL_FLAG_WC)
   addr = ioremap_wc(mem->bus.base + mem->bus.offset, mem->bus.size);
  else
   addr = ioremap_nocache(mem->bus.base + mem->bus.offset, mem->bus.size);
  if (!addr) {
   (void) ttm_mem_io_lock(man, 0);
   ttm_mem_io_free(bdev, mem);
   ttm_mem_io_unlock(man);
   return -ENOMEM;
  }
 }
 *virtual = addr;
 return 0;
}

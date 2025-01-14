
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ttm_placement {scalar_t__ num_busy_placement; scalar_t__ num_placement; } ;
struct ttm_operation_ctx {int dummy; } ;
struct TYPE_6__ {int io_reserved_vm; scalar_t__ io_reserved_count; } ;
struct ttm_mem_reg {TYPE_3__ bus; int * mm_node; } ;
struct TYPE_4__ {int resv; } ;
struct ttm_buffer_object {int evicted; struct ttm_mem_reg mem; TYPE_1__ base; struct ttm_bo_device* bdev; } ;
struct ttm_bo_device {TYPE_2__* driver; } ;
struct TYPE_5__ {int (* evict_flags ) (struct ttm_buffer_object*,struct ttm_placement*) ;} ;


 int ERESTARTSYS ;
 int dma_resv_assert_held (int ) ;
 int pr_err (char*,...) ;
 int stub1 (struct ttm_buffer_object*,struct ttm_placement*) ;
 int ttm_bo_handle_move_mem (struct ttm_buffer_object*,struct ttm_mem_reg*,int,struct ttm_operation_ctx*) ;
 int ttm_bo_mem_put (struct ttm_buffer_object*,struct ttm_mem_reg*) ;
 int ttm_bo_mem_space (struct ttm_buffer_object*,struct ttm_placement*,struct ttm_mem_reg*,struct ttm_operation_ctx*) ;
 int ttm_bo_mem_space_debug (struct ttm_buffer_object*,struct ttm_placement*) ;
 int ttm_bo_pipeline_gutting (struct ttm_buffer_object*) ;
 int ttm_tt_create (struct ttm_buffer_object*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ttm_bo_evict(struct ttm_buffer_object *bo,
   struct ttm_operation_ctx *ctx)
{
 struct ttm_bo_device *bdev = bo->bdev;
 struct ttm_mem_reg evict_mem;
 struct ttm_placement placement;
 int ret = 0;

 dma_resv_assert_held(bo->base.resv);

 placement.num_placement = 0;
 placement.num_busy_placement = 0;
 bdev->driver->evict_flags(bo, &placement);

 if (!placement.num_placement && !placement.num_busy_placement) {
  ret = ttm_bo_pipeline_gutting(bo);
  if (ret)
   return ret;

  return ttm_tt_create(bo, 0);
 }

 evict_mem = bo->mem;
 evict_mem.mm_node = ((void*)0);
 evict_mem.bus.io_reserved_vm = 0;
 evict_mem.bus.io_reserved_count = 0;

 ret = ttm_bo_mem_space(bo, &placement, &evict_mem, ctx);
 if (ret) {
  if (ret != -ERESTARTSYS) {
   pr_err("Failed to find memory space for buffer 0x%p eviction\n",
          bo);
   ttm_bo_mem_space_debug(bo, &placement);
  }
  goto out;
 }

 ret = ttm_bo_handle_move_mem(bo, &evict_mem, 1, ctx);
 if (unlikely(ret)) {
  if (ret != -ERESTARTSYS)
   pr_err("Buffer eviction failed\n");
  ttm_bo_mem_put(bo, &evict_mem);
  goto out;
 }
 bo->evicted = 1;
out:
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ttm_placement {scalar_t__ num_busy_placement; scalar_t__ num_placement; scalar_t__ lpfn; scalar_t__ fpfn; } ;
struct TYPE_3__ {int io_reserved_vm; scalar_t__ io_reserved_count; } ;
struct ttm_mem_reg {TYPE_1__ bus; int * mm_node; } ;
struct ttm_buffer_object {int evicted; struct ttm_mem_reg mem; struct ttm_bo_device* bdev; } ;
struct ttm_bo_device {TYPE_2__* driver; int fence_lock; } ;
struct TYPE_4__ {int (* evict_flags ) (struct ttm_buffer_object*,struct ttm_placement*) ;} ;


 int ERESTARTSYS ;
 int MPASS (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int printf (char*,...) ;
 int stub1 (struct ttm_buffer_object*,struct ttm_placement*) ;
 int ttm_bo_handle_move_mem (struct ttm_buffer_object*,struct ttm_mem_reg*,int,int,int) ;
 int ttm_bo_is_reserved (struct ttm_buffer_object*) ;
 int ttm_bo_mem_put (struct ttm_buffer_object*,struct ttm_mem_reg*) ;
 int ttm_bo_mem_space (struct ttm_buffer_object*,struct ttm_placement*,struct ttm_mem_reg*,int,int) ;
 int ttm_bo_mem_space_debug (struct ttm_buffer_object*,struct ttm_placement*) ;
 int ttm_bo_wait (struct ttm_buffer_object*,int,int,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int ttm_bo_evict(struct ttm_buffer_object *bo, bool interruptible,
   bool no_wait_gpu)
{
 struct ttm_bo_device *bdev = bo->bdev;
 struct ttm_mem_reg evict_mem;
 struct ttm_placement placement;
 int ret = 0;

 mtx_lock(&bdev->fence_lock);
 ret = ttm_bo_wait(bo, 0, interruptible, no_wait_gpu);
 mtx_unlock(&bdev->fence_lock);

 if (unlikely(ret != 0)) {
  if (ret != -ERESTARTSYS) {
   printf("[TTM] Failed to expire sync object before buffer eviction\n");
  }
  goto out;
 }

 MPASS(ttm_bo_is_reserved(bo));

 evict_mem = bo->mem;
 evict_mem.mm_node = ((void*)0);
 evict_mem.bus.io_reserved_vm = 0;
 evict_mem.bus.io_reserved_count = 0;

 placement.fpfn = 0;
 placement.lpfn = 0;
 placement.num_placement = 0;
 placement.num_busy_placement = 0;
 bdev->driver->evict_flags(bo, &placement);
 ret = ttm_bo_mem_space(bo, &placement, &evict_mem, interruptible,
    no_wait_gpu);
 if (ret) {
  if (ret != -ERESTARTSYS) {
   printf("[TTM] Failed to find memory space for buffer 0x%p eviction\n",
          bo);
   ttm_bo_mem_space_debug(bo, &placement);
  }
  goto out;
 }

 ret = ttm_bo_handle_move_mem(bo, &evict_mem, 1, interruptible,
         no_wait_gpu);
 if (ret) {
  if (ret != -ERESTARTSYS)
   printf("[TTM] Buffer eviction failed\n");
  ttm_bo_mem_put(bo, &evict_mem);
  goto out;
 }
 bo->evicted = 1;
out:
 return ret;
}

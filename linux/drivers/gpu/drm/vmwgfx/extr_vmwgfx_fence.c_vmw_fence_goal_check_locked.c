
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {scalar_t__ seqno; } ;
struct vmw_fence_obj {TYPE_2__ base; } ;
struct vmw_fence_manager {int seqno_valid; TYPE_1__* dev_priv; } ;
struct TYPE_3__ {scalar_t__* mmio_virt; } ;


 int SVGA_FIFO_FENCE_GOAL ;
 scalar_t__ VMW_FENCE_WRAP ;
 scalar_t__ dma_fence_is_signaled_locked (TYPE_2__*) ;
 struct vmw_fence_manager* fman_from_fence (struct vmw_fence_obj*) ;
 scalar_t__ likely (int) ;
 scalar_t__ vmw_mmio_read (scalar_t__*) ;
 int vmw_mmio_write (scalar_t__,scalar_t__*) ;

__attribute__((used)) static bool vmw_fence_goal_check_locked(struct vmw_fence_obj *fence)
{
 struct vmw_fence_manager *fman = fman_from_fence(fence);
 u32 goal_seqno;
 u32 *fifo_mem;

 if (dma_fence_is_signaled_locked(&fence->base))
  return 0;

 fifo_mem = fman->dev_priv->mmio_virt;
 goal_seqno = vmw_mmio_read(fifo_mem + SVGA_FIFO_FENCE_GOAL);
 if (likely(fman->seqno_valid &&
     goal_seqno - fence->base.seqno < VMW_FENCE_WRAP))
  return 0;

 vmw_mmio_write(fence->base.seqno, fifo_mem + SVGA_FIFO_FENCE_GOAL);
 fman->seqno_valid = 1;

 return 1;
}

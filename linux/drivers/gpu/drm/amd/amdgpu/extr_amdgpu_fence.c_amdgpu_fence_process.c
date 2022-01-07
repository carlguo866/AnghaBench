
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct dma_fence {int dummy; } ;
struct amdgpu_fence_driver {scalar_t__ sync_seq; scalar_t__ num_fences_mask; struct dma_fence** fences; int fallback_timer; int last_seq; } ;
struct amdgpu_ring {struct amdgpu_fence_driver fence_drv; } ;


 int BUG () ;
 int DMA_FENCE_TRACE (struct dma_fence*,char*) ;
 int RCU_INIT_POINTER (struct dma_fence*,int *) ;
 scalar_t__ amdgpu_fence_read (struct amdgpu_ring*) ;
 int amdgpu_fence_schedule_fallback (struct amdgpu_ring*) ;
 scalar_t__ atomic_cmpxchg (int *,scalar_t__,scalar_t__) ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ del_timer (int *) ;
 int dma_fence_put (struct dma_fence*) ;
 int dma_fence_signal (struct dma_fence*) ;
 struct dma_fence* rcu_dereference_protected (struct dma_fence*,int) ;
 scalar_t__ unlikely (int) ;

bool amdgpu_fence_process(struct amdgpu_ring *ring)
{
 struct amdgpu_fence_driver *drv = &ring->fence_drv;
 uint32_t seq, last_seq;
 int r;

 do {
  last_seq = atomic_read(&ring->fence_drv.last_seq);
  seq = amdgpu_fence_read(ring);

 } while (atomic_cmpxchg(&drv->last_seq, last_seq, seq) != last_seq);

 if (del_timer(&ring->fence_drv.fallback_timer) &&
     seq != ring->fence_drv.sync_seq)
  amdgpu_fence_schedule_fallback(ring);

 if (unlikely(seq == last_seq))
  return 0;

 last_seq &= drv->num_fences_mask;
 seq &= drv->num_fences_mask;

 do {
  struct dma_fence *fence, **ptr;

  ++last_seq;
  last_seq &= drv->num_fences_mask;
  ptr = &drv->fences[last_seq];


  fence = rcu_dereference_protected(*ptr, 1);
  RCU_INIT_POINTER(*ptr, ((void*)0));

  if (!fence)
   continue;

  r = dma_fence_signal(fence);
  if (!r)
   DMA_FENCE_TRACE(fence, "signaled from irq context\n");
  else
   BUG();

  dma_fence_put(fence);
 } while (last_seq != seq);

 return 1;
}

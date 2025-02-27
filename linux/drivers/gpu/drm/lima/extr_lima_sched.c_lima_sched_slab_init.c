
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lima_fence {int dummy; } ;


 int ENOMEM ;
 int SLAB_HWCACHE_ALIGN ;
 scalar_t__ kmem_cache_create (char*,int,int ,int ,int *) ;
 scalar_t__ lima_fence_slab ;
 int lima_fence_slab_refcnt ;

int lima_sched_slab_init(void)
{
 if (!lima_fence_slab) {
  lima_fence_slab = kmem_cache_create(
   "lima_fence", sizeof(struct lima_fence), 0,
   SLAB_HWCACHE_ALIGN, ((void*)0));
  if (!lima_fence_slab)
   return -ENOMEM;
 }

 lima_fence_slab_refcnt++;
 return 0;
}

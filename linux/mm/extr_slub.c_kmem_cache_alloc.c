
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int size; int object_size; } ;
typedef int gfp_t ;


 int _RET_IP_ ;
 void* slab_alloc (struct kmem_cache*,int ,int ) ;
 int trace_kmem_cache_alloc (int ,void*,int ,int ,int ) ;

void *kmem_cache_alloc(struct kmem_cache *s, gfp_t gfpflags)
{
 void *ret = slab_alloc(s, gfpflags, _RET_IP_);

 trace_kmem_cache_alloc(_RET_IP_, ret, s->object_size,
    s->size, gfpflags);

 return ret;
}

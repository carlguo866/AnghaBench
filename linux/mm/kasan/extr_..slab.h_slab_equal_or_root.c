
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache {int dummy; } ;



__attribute__((used)) static inline bool slab_equal_or_root(struct kmem_cache *s,
          struct kmem_cache *p)
{
 return s == p;
}

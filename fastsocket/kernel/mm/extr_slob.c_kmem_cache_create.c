
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slob_rcu {int dummy; } ;
struct kmem_cache {char const* name; size_t size; unsigned long flags; void (* ctor ) (void*) ;size_t align; } ;


 int ARCH_KMALLOC_MINALIGN ;
 size_t ARCH_SLAB_MINALIGN ;
 int GFP_KERNEL ;
 unsigned long SLAB_DESTROY_BY_RCU ;
 unsigned long SLAB_HWCACHE_ALIGN ;
 unsigned long SLAB_PANIC ;
 size_t SLOB_ALIGN ;
 int kmemleak_alloc (struct kmem_cache*,int,int,int ) ;
 int panic (char*,char const*) ;
 struct kmem_cache* slob_alloc (int,int ,int ,int) ;

struct kmem_cache *kmem_cache_create(const char *name, size_t size,
 size_t align, unsigned long flags, void (*ctor)(void *))
{
 struct kmem_cache *c;

 c = slob_alloc(sizeof(struct kmem_cache),
  GFP_KERNEL, ARCH_KMALLOC_MINALIGN, -1);

 if (c) {
  c->name = name;
  c->size = size;
  if (flags & SLAB_DESTROY_BY_RCU) {

   c->size += sizeof(struct slob_rcu);
  }
  c->flags = flags;
  c->ctor = ctor;

  c->align = (flags & SLAB_HWCACHE_ALIGN) ? SLOB_ALIGN : 0;
  if (c->align < ARCH_SLAB_MINALIGN)
   c->align = ARCH_SLAB_MINALIGN;
  if (c->align < align)
   c->align = align;
 } else if (flags & SLAB_PANIC)
  panic("Cannot create slab cache %s\n", name);

 kmemleak_alloc(c, sizeof(struct kmem_cache), 1, GFP_KERNEL);
 return c;
}

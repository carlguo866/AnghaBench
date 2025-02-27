
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef TYPE_1__* uma_zone_t ;
typedef TYPE_2__* uma_slab_t ;
typedef TYPE_3__* uma_keg_t ;
struct TYPE_13__ {scalar_t__ uk_free; scalar_t__ uk_reserve; } ;
struct TYPE_12__ {scalar_t__ us_freecount; TYPE_3__* us_keg; } ;
struct TYPE_11__ {int uz_flags; } ;


 int KEG_UNLOCK (TYPE_3__*) ;
 int M_NOWAIT ;
 int M_WAITOK ;
 int UMA_ZONE_NUMA ;
 int howmany (int,int) ;
 void* slab_alloc_item (TYPE_3__*,TYPE_2__*) ;
 int vm_ndomains ;
 TYPE_2__* zone_fetch_slab (TYPE_1__*,TYPE_3__*,int,int) ;

__attribute__((used)) static int
zone_import(uma_zone_t zone, void **bucket, int max, int domain, int flags)
{
 uma_slab_t slab;
 uma_keg_t keg;



 int i;

 slab = ((void*)0);
 keg = ((void*)0);

 for (i = 0; i < max; ) {
  if ((slab = zone_fetch_slab(zone, keg, domain, flags)) == ((void*)0))
   break;
  keg = slab->us_keg;



  while (slab->us_freecount && i < max) {
   bucket[i++] = slab_alloc_item(keg, slab);
   if (keg->uk_free <= keg->uk_reserve)
    break;
  }

  flags &= ~M_WAITOK;
  flags |= M_NOWAIT;
 }
 if (slab != ((void*)0))
  KEG_UNLOCK(keg);

 return i;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uint16 ;
typedef void* dsa_pointer ;
struct TYPE_6__ {void* nextspan; size_t npages; size_t size_class; int ninitialized; size_t nallocatable; size_t nmax; int fclass; int firstfree; void* start; void* prevspan; int pool; } ;
typedef TYPE_1__ dsa_area_span ;
struct TYPE_7__ {void** spans; } ;
typedef TYPE_2__ dsa_area_pool ;
typedef int dsa_area ;


 int Assert (int ) ;
 size_t DSA_SCLASS_BLOCK_OF_SPANS ;
 int DSA_SCLASS_LOCK (int *,size_t) ;
 size_t DSA_SCLASS_SPAN_LARGE ;
 int DSA_SPAN_NOTHING_FREE ;
 size_t DSA_SUPERBLOCK_SIZE ;
 int DsaAreaPoolToDsaPointer (int *,TYPE_2__*) ;
 scalar_t__ DsaPointerIsValid (void*) ;
 size_t FPM_PAGE_SIZE ;
 void* InvalidDsaPointer ;
 int LWLockHeldByMe (int ) ;
 TYPE_1__* dsa_get_address (int *,void*) ;
 size_t* dsa_size_classes ;

__attribute__((used)) static void
init_span(dsa_area *area,
    dsa_pointer span_pointer,
    dsa_area_pool *pool, dsa_pointer start, size_t npages,
    uint16 size_class)
{
 dsa_area_span *span = dsa_get_address(area, span_pointer);
 size_t obsize = dsa_size_classes[size_class];





 Assert(LWLockHeldByMe(DSA_SCLASS_LOCK(area, size_class)));


 if (DsaPointerIsValid(pool->spans[1]))
 {
  dsa_area_span *head = (dsa_area_span *)
  dsa_get_address(area, pool->spans[1]);

  head->prevspan = span_pointer;
 }
 span->pool = DsaAreaPoolToDsaPointer(area, pool);
 span->nextspan = pool->spans[1];
 span->prevspan = InvalidDsaPointer;
 pool->spans[1] = span_pointer;

 span->start = start;
 span->npages = npages;
 span->size_class = size_class;
 span->ninitialized = 0;
 if (size_class == DSA_SCLASS_BLOCK_OF_SPANS)
 {







  span->ninitialized = 1;
  span->nallocatable = FPM_PAGE_SIZE / obsize - 1;
 }
 else if (size_class != DSA_SCLASS_SPAN_LARGE)
  span->nallocatable = DSA_SUPERBLOCK_SIZE / obsize;
 span->firstfree = DSA_SPAN_NOTHING_FREE;
 span->nmax = span->nallocatable;
 span->fclass = 1;
}

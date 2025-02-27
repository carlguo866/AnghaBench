
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int TypeCacheEntry ;
struct TYPE_11__ {void* spl_rdatum; void* spl_ldatum; scalar_t__ spl_nright; scalar_t__ spl_nleft; } ;
struct TYPE_10__ {int n; TYPE_1__* vector; } ;
struct TYPE_9__ {int index; int bound; } ;
struct TYPE_8__ {int key; } ;
typedef TYPE_2__ SingleBoundSortItem ;
typedef int RangeType ;
typedef int RangeBound ;
typedef int OffsetNumber ;
typedef TYPE_3__ GistEntryVector ;
typedef TYPE_4__ GIST_SPLITVEC ;


 int Assert (int) ;
 int * DatumGetRangeTypeP (int ) ;
 int FirstOffsetNumber ;
 int OffsetNumberNext (int) ;
 int PLACE_LEFT (int *,int) ;
 int PLACE_RIGHT (int *,int) ;
 void* RangeTypePGetDatum (int *) ;
 scalar_t__ palloc (int) ;
 int qsort_arg (TYPE_2__*,int,int,int ,int *) ;
 int range_deserialize (int *,int *,int *,int *,int*) ;
 int single_bound_cmp ;

__attribute__((used)) static void
range_gist_single_sorting_split(TypeCacheEntry *typcache,
        GistEntryVector *entryvec,
        GIST_SPLITVEC *v,
        bool use_upper_bound)
{
 SingleBoundSortItem *sortItems;
 RangeType *left_range = ((void*)0);
 RangeType *right_range = ((void*)0);
 OffsetNumber i,
    maxoff,
    split_idx;

 maxoff = entryvec->n - 1;

 sortItems = (SingleBoundSortItem *)
  palloc(maxoff * sizeof(SingleBoundSortItem));




 for (i = FirstOffsetNumber; i <= maxoff; i = OffsetNumberNext(i))
 {
  RangeType *range = DatumGetRangeTypeP(entryvec->vector[i].key);
  RangeBound bound2;
  bool empty;

  sortItems[i - 1].index = i;

  if (use_upper_bound)
   range_deserialize(typcache, range, &bound2,
         &sortItems[i - 1].bound, &empty);
  else
   range_deserialize(typcache, range, &sortItems[i - 1].bound,
         &bound2, &empty);
  Assert(!empty);
 }

 qsort_arg(sortItems, maxoff, sizeof(SingleBoundSortItem),
     single_bound_cmp, typcache);

 split_idx = maxoff / 2;

 v->spl_nleft = 0;
 v->spl_nright = 0;

 for (i = 0; i < maxoff; i++)
 {
  int idx = sortItems[i].index;
  RangeType *range = DatumGetRangeTypeP(entryvec->vector[idx].key);

  if (i < split_idx)
   PLACE_LEFT(range, idx);
  else
   PLACE_RIGHT(range, idx);
 }

 v->spl_ldatum = RangeTypePGetDatum(left_range);
 v->spl_rdatum = RangeTypePGetDatum(right_range);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int extent_t ;


 int arena_get_from_extent (int *) ;
 int large_dalloc_finish_impl (int *,int ,int *) ;

void
large_dalloc_finish(tsdn_t *tsdn, extent_t *extent) {
 large_dalloc_finish_impl(tsdn, arena_get_from_extent(extent), extent);
}

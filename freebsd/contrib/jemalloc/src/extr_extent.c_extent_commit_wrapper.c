
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int extent_t ;
typedef int extent_hooks_t ;
typedef int arena_t ;


 int extent_commit_impl (int *,int *,int **,int *,size_t,size_t,int) ;

bool
extent_commit_wrapper(tsdn_t *tsdn, arena_t *arena,
    extent_hooks_t **r_extent_hooks, extent_t *extent, size_t offset,
    size_t length) {
 return extent_commit_impl(tsdn, arena, r_extent_hooks, extent, offset,
     length, 0);
}

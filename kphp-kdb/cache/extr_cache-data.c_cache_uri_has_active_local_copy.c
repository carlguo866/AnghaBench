
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union cache_packed_local_copy_location {int dummy; } cache_packed_local_copy_location ;
struct cache_uri {int dummy; } ;


 int CACHE_MAX_LOCAL_COPIES ;
 scalar_t__ LC ;
 int cache_local_copy_get_flags (scalar_t__,union cache_packed_local_copy_location*) ;
 int cache_local_copy_unpack (struct cache_uri*,scalar_t__,int ,int ,int *) ;

int cache_uri_has_active_local_copy (struct cache_uri *U) {
  int i, n = cache_local_copy_unpack (U, LC, CACHE_MAX_LOCAL_COPIES, 0, ((void*)0));
  if (n < 0) {
    return -1;
  }
  for (i = 0; i < n; i++) {
    union cache_packed_local_copy_location u;
    if (cache_local_copy_get_flags (LC + i, &u) == 1) {
      return 1;
    }
  }
  return 0;
}

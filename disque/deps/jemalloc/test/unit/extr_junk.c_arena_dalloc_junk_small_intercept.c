
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t reg_size; } ;
typedef TYPE_1__ arena_bin_info_t ;


 int arena_dalloc_junk_small_orig (void*,TYPE_1__*) ;
 int assert_c_eq (char,int,char*,size_t,size_t) ;
 int saw_junking ;
 void* watch_for_junking ;

__attribute__((used)) static void
arena_dalloc_junk_small_intercept(void *ptr, arena_bin_info_t *bin_info)
{
 size_t i;

 arena_dalloc_junk_small_orig(ptr, bin_info);
 for (i = 0; i < bin_info->reg_size; i++) {
  assert_c_eq(((char *)ptr)[i], 0x5a,
      "Missing junk fill for byte %zu/%zu of deallocated region",
      i, bin_info->reg_size);
 }
 if (ptr == watch_for_junking)
  saw_junking = 1;
}

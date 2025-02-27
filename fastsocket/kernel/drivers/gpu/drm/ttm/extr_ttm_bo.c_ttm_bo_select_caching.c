
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ttm_mem_type_manager {int default_caching; } ;


 int TTM_PL_FLAG_CACHED ;
 int TTM_PL_FLAG_UNCACHED ;
 int TTM_PL_FLAG_WC ;
 int TTM_PL_MASK_CACHING ;

__attribute__((used)) static uint32_t ttm_bo_select_caching(struct ttm_mem_type_manager *man,
          uint32_t cur_placement,
          uint32_t proposed_placement)
{
 uint32_t caching = proposed_placement & TTM_PL_MASK_CACHING;
 uint32_t result = proposed_placement & ~TTM_PL_MASK_CACHING;





 if ((cur_placement & caching) != 0)
  result |= (cur_placement & caching);
 else if ((man->default_caching & caching) != 0)
  result |= man->default_caching;
 else if ((TTM_PL_FLAG_CACHED & caching) != 0)
  result |= TTM_PL_FLAG_CACHED;
 else if ((TTM_PL_FLAG_WC & caching) != 0)
  result |= TTM_PL_FLAG_WC;
 else if ((TTM_PL_FLAG_UNCACHED & caching) != 0)
  result |= TTM_PL_FLAG_UNCACHED;

 return result;
}

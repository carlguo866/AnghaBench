
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ttm_mem_type_manager {int available_caching; } ;


 int TTM_PL_MASK_MEM ;
 int ttm_bo_type_flags (int) ;

__attribute__((used)) static bool ttm_bo_mt_compatible(struct ttm_mem_type_manager *man,
     uint32_t mem_type,
     uint32_t proposed_placement,
     uint32_t *masked_placement)
{
 uint32_t cur_flags = ttm_bo_type_flags(mem_type);

 if ((cur_flags & proposed_placement & TTM_PL_MASK_MEM) == 0)
  return 0;

 if ((proposed_placement & man->available_caching) == 0)
  return 0;

 cur_flags |= (proposed_placement & man->available_caching);

 *masked_placement = cur_flags;
 return 1;
}

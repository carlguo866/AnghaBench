
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ttm_tt {int dummy; } ;
typedef enum ttm_caching_state { ____Placeholder_ttm_caching_state } ttm_caching_state ;


 int TTM_PL_FLAG_UNCACHED ;
 int TTM_PL_FLAG_WC ;
 int tt_cached ;
 int tt_uncached ;
 int tt_wc ;
 int ttm_tt_set_caching (struct ttm_tt*,int) ;

int ttm_tt_set_placement_caching(struct ttm_tt *ttm, uint32_t placement)
{
 enum ttm_caching_state state;

 if (placement & TTM_PL_FLAG_WC)
  state = tt_wc;
 else if (placement & TTM_PL_FLAG_UNCACHED)
  state = tt_uncached;
 else
  state = tt_cached;

 return ttm_tt_set_caching(ttm, state);
}

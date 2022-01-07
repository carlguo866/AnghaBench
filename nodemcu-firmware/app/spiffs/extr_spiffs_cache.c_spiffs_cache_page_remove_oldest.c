
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8_t ;
typedef scalar_t__ u32_t ;
struct TYPE_6__ {scalar_t__ last_access; int flags; } ;
typedef TYPE_1__ spiffs_cache_page ;
struct TYPE_7__ {int cpage_use_map; int cpage_use_mask; int cpage_count; scalar_t__ last_access; } ;
typedef TYPE_2__ spiffs_cache ;
typedef int spiffs ;
typedef int s32_t ;


 int SPIFFS_OK ;
 int spiffs_cache_page_free (int *,int,int) ;
 TYPE_2__* spiffs_get_cache (int *) ;
 TYPE_1__* spiffs_get_cache_page_hdr (int *,TYPE_2__*,int) ;

__attribute__((used)) static s32_t spiffs_cache_page_remove_oldest(spiffs *fs, u8_t flag_mask, u8_t flags) {
  s32_t res = SPIFFS_OK;
  spiffs_cache *cache = spiffs_get_cache(fs);

  if ((cache->cpage_use_map & cache->cpage_use_mask) != cache->cpage_use_mask) {

    return SPIFFS_OK;
  }


  int i;
  int cand_ix = -1;
  u32_t oldest_val = 0;
  for (i = 0; i < cache->cpage_count; i++) {
    spiffs_cache_page *cp = spiffs_get_cache_page_hdr(fs, cache, i);
    if ((cache->last_access - cp->last_access) > oldest_val &&
        (cp->flags & flag_mask) == flags) {
      oldest_val = cache->last_access - cp->last_access;
      cand_ix = i;
    }
  }

  if (cand_ix >= 0) {
    res = spiffs_cache_page_free(fs, cand_ix, 1);
  }

  return res;
}

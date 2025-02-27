
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* lru_prev; struct TYPE_5__* lru_next; } ;
typedef TYPE_1__ fz_glyph_cache_entry ;
struct TYPE_6__ {TYPE_1__* lru_head; TYPE_1__* lru_tail; } ;
typedef TYPE_2__ fz_glyph_cache ;



__attribute__((used)) static inline void
move_to_front(fz_glyph_cache *cache, fz_glyph_cache_entry *entry)
{
 if (entry->lru_prev == ((void*)0))
  return;


 entry->lru_prev->lru_next = entry->lru_next;
 if (entry->lru_next)
  entry->lru_next->lru_prev = entry->lru_prev;
 else
  cache->lru_tail = entry->lru_prev;

 entry->lru_next = cache->lru_head;
 if (entry->lru_next)
  entry->lru_next->lru_prev = entry;
 cache->lru_head = entry;
 entry->lru_prev = ((void*)0);
}

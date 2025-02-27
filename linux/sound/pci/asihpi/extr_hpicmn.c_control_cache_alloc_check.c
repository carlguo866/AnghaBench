
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct hpi_control_cache_info {size_t control_index; int size_in32bit_words; scalar_t__ control_type; } ;
struct hpi_control_cache {unsigned int init; unsigned int control_count; unsigned int cache_size_in_bytes; int adap_idx; struct hpi_control_cache_info** p_info; scalar_t__ p_cache; } ;


 int DEBUG ;
 int ERROR ;
 int HPI_DEBUG_LOG (int ,char*,unsigned int,...) ;
 int INFO ;
 int VERBOSE ;
 int WARNING ;

__attribute__((used)) static unsigned int control_cache_alloc_check(struct hpi_control_cache *pC)
{
 unsigned int i;
 int cached = 0;
 if (!pC)
  return 0;

 if (pC->init)
  return pC->init;

 if (!pC->p_cache)
  return 0;

 if (pC->control_count && pC->cache_size_in_bytes) {
  char *p_master_cache;
  unsigned int byte_count = 0;

  p_master_cache = (char *)pC->p_cache;
  HPI_DEBUG_LOG(DEBUG, "check %d controls\n",
   pC->control_count);
  for (i = 0; i < pC->control_count; i++) {
   struct hpi_control_cache_info *info =
    (struct hpi_control_cache_info *)
    &p_master_cache[byte_count];
   u16 control_index = info->control_index;

   if (control_index >= pC->control_count) {
    HPI_DEBUG_LOG(INFO,
     "adap %d control index %d out of range, cache not ready?\n",
     pC->adap_idx, control_index);
    return 0;
   }

   if (!info->size_in32bit_words) {
    if (!i) {
     HPI_DEBUG_LOG(INFO,
      "adap %d cache not ready?\n",
      pC->adap_idx);
     return 0;
    }




    HPI_DEBUG_LOG(ERROR,
     "adap %d zero size cache entry %d\n",
     pC->adap_idx, i);
    break;
   }

   if (info->control_type) {
    pC->p_info[control_index] = info;
    cached++;
   } else {
    pC->p_info[control_index] = ((void*)0);
   }

   byte_count += info->size_in32bit_words * 4;

   HPI_DEBUG_LOG(VERBOSE,
    "cached %d, pinfo %p index %d type %d size %d\n",
    cached, pC->p_info[info->control_index],
    info->control_index, info->control_type,
    info->size_in32bit_words);





   if (byte_count >= pC->cache_size_in_bytes)
    break;

   if (info->control_index == pC->control_count - 1)
    break;
  }

  if (byte_count != pC->cache_size_in_bytes)
   HPI_DEBUG_LOG(WARNING,
    "adap %d bytecount %d != cache size %d\n",
    pC->adap_idx, byte_count,
    pC->cache_size_in_bytes);
  else
   HPI_DEBUG_LOG(DEBUG,
    "adap %d cache good, bytecount == cache size = %d\n",
    pC->adap_idx, byte_count);

  pC->init = (u16)cached;
 }
 return pC->init;
}

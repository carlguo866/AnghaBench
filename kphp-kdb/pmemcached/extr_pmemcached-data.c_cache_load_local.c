
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct index_entry {int dummy; } ;
struct hash_entry {int dummy; } ;
struct TYPE_10__ {long long accum_value; int data_len; } ;
struct TYPE_8__ {int data_len; } ;
struct TYPE_9__ {TYPE_1__ data; scalar_t__ index_entry; TYPE_4__* hash_entry; } ;


 int assert (int) ;
 int cache_assign_index_entry_local (TYPE_2__*,struct index_entry*) ;
 int cache_ok ;
 int cache_reload_local (TYPE_2__*,struct hash_entry*,struct index_entry*) ;
 TYPE_2__* current_cache ;
 int del_entry (TYPE_4__*) ;
 scalar_t__ disable_cache ;
 TYPE_2__* get_cache_item (char const*,int) ;
 TYPE_2__* get_cache_item_simple (char const*,int) ;
 int pmemcached_incr_current (long long) ;

int cache_load_local (const char *key, int key_len, struct hash_entry *hash_entry, struct index_entry *index_entry) {
  current_cache = disable_cache ? get_cache_item_simple (key, key_len) : get_cache_item (key, key_len);
  cache_reload_local (current_cache, hash_entry, index_entry);
  if (current_cache->data.data_len == -2) {
    cache_assign_index_entry_local (current_cache, index_entry);
    if (current_cache->hash_entry && current_cache->hash_entry->accum_value) {
      assert (current_cache->hash_entry->data_len == -2);
      long long arg = current_cache->hash_entry->accum_value;
      del_entry (current_cache->hash_entry);
      current_cache->hash_entry = 0;
      if (current_cache->index_entry) {
        pmemcached_incr_current (arg);
      }
    }
  }
  cache_ok++;
  return current_cache->data.data_len == -1 ? 0 : 1;
}

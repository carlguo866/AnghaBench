
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int data_len; char* data; char* key; int key_len; int flags; int exp_time; int timestamp; } ;
typedef TYPE_2__ hash_entry_t ;
struct TYPE_9__ {int data_len; } ;
struct TYPE_11__ {char const* key; int key_len; TYPE_2__* hash_entry; TYPE_1__ data; } ;


 int add_entry (TYPE_2__*) ;
 int add_entry_time (TYPE_2__*) ;
 int assert (char*) ;
 int cache_reload (TYPE_5__*) ;
 TYPE_5__* current_cache ;
 int del_entry_time (TYPE_2__*) ;
 int entry_memory ;
 int fprintf (int ,char*,int) ;
 TYPE_2__* get_new_entry () ;
 int local_clock () ;
 int memcpy (char*,char const*,int) ;
 int on_value_change (char const*,int) ;
 int pmct_add ;
 int pmct_replace ;
 int stderr ;
 int verbosity ;
 int zzfree (char*,int) ;
 char* zzmalloc (int) ;

int pmemcached_store_current (int op_type, const char *data, int data_len, int flags, int delay) {
  if (verbosity >= 4) {
    fprintf (stderr, "data_len=%d\n", current_cache->data.data_len);
  }
  if (op_type == pmct_add && current_cache->data.data_len != -1) {
    return 0;
  }
  if (op_type == pmct_replace && current_cache->data.data_len == -1) {
    return 0;
  }

  on_value_change (current_cache->key, current_cache->key_len);

  hash_entry_t *entry = current_cache->hash_entry;

  if (entry) {
    if (entry->data_len >= 0) {
      zzfree (entry->data, entry->data_len + 1);
      entry_memory -= entry->data_len + 1;
      del_entry_time(entry);
    }
  } else {

    entry = get_new_entry ();

    char *k;
    k = zzmalloc (current_cache->key_len + 1);
    memcpy (k, current_cache->key, current_cache->key_len);
    k[current_cache->key_len] = 0;
    entry_memory += current_cache->key_len + 1;

    entry->key = k;
    entry->key_len = current_cache->key_len;

    add_entry (entry);
  }

  char *buf = 0;
  if (data_len >= 0) {
    assert (buf = zzmalloc (data_len + 1));
    memcpy(buf, data, data_len);
    buf[data_len] = 0;
    entry_memory += data_len + 1;
  }

  entry->data = buf;
  entry->data_len = data_len;
  entry->flags = flags;
  entry->exp_time = delay;
  entry->timestamp = local_clock();

  add_entry_time (entry);
  cache_reload (current_cache);

  return 1;
}

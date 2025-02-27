
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_ht_item_data_ {size_t key_size; scalar_t__* key; } ;
typedef int hashtable_index_t ;


 int assert (int ) ;

__attribute__((used)) static hashtable_index_t
ht_item_hash_func(const void *p, size_t cache_entries_size)
{
     struct cache_ht_item_data_ *hp;
 size_t i;

 hashtable_index_t retval;

 hp = (struct cache_ht_item_data_ *)p;
 assert(hp->key != ((void*)0));

 retval = 0;
 for (i = 0; i < hp->key_size; ++i)
     retval = (127 * retval + (unsigned char)hp->key[i]) %
  cache_entries_size;

 return retval;
}

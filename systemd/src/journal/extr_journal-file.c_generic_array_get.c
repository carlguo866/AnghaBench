
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_16__ {scalar_t__ total; scalar_t__ array; } ;
struct TYPE_15__ {int chain_cache; } ;
struct TYPE_13__ {int * items; int next_entry_array_offset; } ;
struct TYPE_14__ {TYPE_1__ entry_array; } ;
typedef TYPE_2__ Object ;
typedef TYPE_3__ JournalFile ;
typedef TYPE_4__ ChainCacheItem ;


 int OBJECT_ENTRY ;
 int OBJECT_ENTRY_ARRAY ;
 int assert (TYPE_3__*) ;
 int chain_cache_put (int ,TYPE_4__*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ journal_file_entry_array_n_items (TYPE_2__*) ;
 int journal_file_move_to_object (TYPE_3__*,int ,scalar_t__,TYPE_2__**) ;
 scalar_t__ le64toh (int ) ;
 TYPE_4__* ordered_hashmap_get (int ,scalar_t__*) ;

__attribute__((used)) static int generic_array_get(
                JournalFile *f,
                uint64_t first,
                uint64_t i,
                Object **ret, uint64_t *offset) {

        Object *o;
        uint64_t p = 0, a, t = 0;
        int r;
        ChainCacheItem *ci;

        assert(f);

        a = first;


        ci = ordered_hashmap_get(f->chain_cache, &first);
        if (ci && i > ci->total) {
                a = ci->array;
                i -= ci->total;
                t = ci->total;
        }

        while (a > 0) {
                uint64_t k;

                r = journal_file_move_to_object(f, OBJECT_ENTRY_ARRAY, a, &o);
                if (r < 0)
                        return r;

                k = journal_file_entry_array_n_items(o);
                if (i < k) {
                        p = le64toh(o->entry_array.items[i]);
                        goto found;
                }

                i -= k;
                t += k;
                a = le64toh(o->entry_array.next_entry_array_offset);
        }

        return 0;

found:

        chain_cache_put(f->chain_cache, ci, first, a, le64toh(o->entry_array.items[0]), t, i);

        r = journal_file_move_to_object(f, OBJECT_ENTRY, p, &o);
        if (r < 0)
                return r;

        if (ret)
                *ret = o;

        if (offset)
                *offset = p;

        return 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_elts; } ;
struct sparse_array {TYPE_1__ elements; TYPE_1__ key2index; } ;
struct pool {int dummy; } ;
struct key2index {unsigned long key; int index; } ;


 int FIXME (char*) ;
 int assert (int) ;
 struct key2index* sparse_array_lookup (struct sparse_array*,unsigned long,unsigned int*) ;
 void* vector_add (TYPE_1__*,struct pool*) ;
 struct key2index* vector_at (TYPE_1__*,unsigned int) ;

void* sparse_array_add(struct sparse_array* sa, unsigned long key,
                         struct pool* pool)
{
    unsigned idx, i;
    struct key2index* pk2i;
    struct key2index* to;

    pk2i = sparse_array_lookup(sa, key, &idx);
    if (pk2i && pk2i->key == key)
    {
        FIXME("re-adding an existing key\n");
        return ((void*)0);
    }
    to = vector_add(&sa->key2index, pool);
    if (pk2i)
    {


        assert(sa->key2index.num_elts >= 2);
        for (i = sa->key2index.num_elts - 1; i > idx; i--)
        {
            pk2i = vector_at(&sa->key2index, i - 1);
            *to = *pk2i;
            to = pk2i;
        }
    }

    to->key = key;
    to->index = sa->elements.num_elts;

    return vector_add(&sa->elements, pool);
}

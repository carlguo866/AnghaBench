
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct prioq_item {unsigned int* idx; void* data; } ;
struct TYPE_5__ {unsigned int n_items; unsigned int n_allocated; struct prioq_item* items; } ;
typedef TYPE_1__ Prioq ;


 int ENOMEM ;
 unsigned int MAX (int,unsigned int) ;
 int assert (TYPE_1__*) ;
 struct prioq_item* reallocarray (struct prioq_item*,unsigned int,int) ;
 int shuffle_up (TYPE_1__*,unsigned int) ;

int prioq_put(Prioq *q, void *data, unsigned *idx) {
        struct prioq_item *i;
        unsigned k;

        assert(q);

        if (q->n_items >= q->n_allocated) {
                unsigned n;
                struct prioq_item *j;

                n = MAX((q->n_items+1) * 2, 16u);
                j = reallocarray(q->items, n, sizeof(struct prioq_item));
                if (!j)
                        return -ENOMEM;

                q->items = j;
                q->n_allocated = n;
        }

        k = q->n_items++;
        i = q->items + k;
        i->data = data;
        i->idx = idx;

        if (idx)
                *idx = k;

        shuffle_up(q, k);

        return 0;
}

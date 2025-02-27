
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int avl ;
struct TYPE_6__ {char const* id; int hash; } ;
struct TYPE_5__ {int dimensions_index; } ;
typedef TYPE_1__ RRDSET ;
typedef TYPE_2__ RRDDIM ;


 scalar_t__ avl_search_lock (int *,int *) ;
 int simple_hash (char const*) ;

__attribute__((used)) static inline RRDDIM *rrddim_index_find(RRDSET *st, const char *id, uint32_t hash) {
    RRDDIM tmp = {
            .id = id,
            .hash = (hash)?hash:simple_hash(id)
    };
    return (RRDDIM *)avl_search_lock(&(st->dimensions_index), (avl *) &tmp);
}

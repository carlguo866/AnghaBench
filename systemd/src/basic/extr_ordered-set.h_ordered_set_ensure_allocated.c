
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_ops {int dummy; } ;
typedef int OrderedSet ;


 int ENOMEM ;
 int * ordered_set_new (struct hash_ops const*) ;

__attribute__((used)) static inline int ordered_set_ensure_allocated(OrderedSet **s, const struct hash_ops *ops) {
        if (*s)
                return 0;

        *s = ordered_set_new(ops);
        if (!*s)
                return -ENOMEM;

        return 0;
}

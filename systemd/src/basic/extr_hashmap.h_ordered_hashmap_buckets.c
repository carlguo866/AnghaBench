
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OrderedHashmap ;


 int HASHMAP_BASE (int *) ;
 int internal_hashmap_buckets (int ) ;

__attribute__((used)) static inline unsigned ordered_hashmap_buckets(OrderedHashmap *h) {
        return internal_hashmap_buckets(HASHMAP_BASE(h));
}

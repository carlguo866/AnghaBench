
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Hashmap ;


 int HASHMAP_BASE (int *) ;
 int free ;
 int internal_hashmap_clear (int ,int ,int ) ;

__attribute__((used)) static inline void hashmap_clear_free_free(Hashmap *h) {
        internal_hashmap_clear(HASHMAP_BASE(h), free, free);
}

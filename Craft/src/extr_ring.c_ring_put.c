
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int end; int capacity; int * data; } ;
typedef int RingEntry ;
typedef TYPE_1__ Ring ;


 int memcpy (int *,int *,int) ;
 scalar_t__ ring_full (TYPE_1__*) ;
 int ring_grow (TYPE_1__*) ;

void ring_put(Ring *ring, RingEntry *entry) {
    if (ring_full(ring)) {
        ring_grow(ring);
    }
    RingEntry *e = ring->data + ring->end;
    memcpy(e, entry, sizeof(RingEntry));
    ring->end = (ring->end + 1) % ring->capacity;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_ring_container {int count; struct ixgbe_ring* ring; } ;
struct ixgbe_ring {struct ixgbe_ring* next; } ;



__attribute__((used)) static void ixgbe_add_ring(struct ixgbe_ring *ring,
      struct ixgbe_ring_container *head)
{
 ring->next = head->ring;
 head->ring = ring;
 head->count++;
}
